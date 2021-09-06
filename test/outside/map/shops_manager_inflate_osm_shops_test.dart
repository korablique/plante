import 'package:mockito/mockito.dart';
import 'package:plante/model/shop.dart';
import 'package:plante/outside/map/osm_interactions_queue.dart';
import 'package:plante/outside/map/osm_shop.dart';
import 'package:plante/outside/map/shops_manager.dart';
import 'package:test/test.dart';

import '../../common_mocks.mocks.dart';
import '../../z_fakes/fake_analytics.dart';
import '../../z_fakes/fake_osm_cacher.dart';
import 'shops_manager_test_commons.dart';

void main() {
  late ShopsManagerTestCommons commons;
  late MockOpenStreetMap osm;
  late MockBackend backend;
  late MockProductsObtainer productsObtainer;
  late FakeAnalytics analytics;
  late FakeOsmCacher osmCacher;
  late ShopsManager shopsManager;

  setUp(() async {
    commons = ShopsManagerTestCommons();

    osm = commons.osm;
    backend = commons.backend;
    productsObtainer = commons.productsObtainer;
    analytics = commons.analytics;
    osmCacher = commons.osmCacher;
    shopsManager = ShopsManager(osm, backend, productsObtainer, analytics,
        osmCacher, OsmInteractionsQueue());
  });

  test('inflateOsmShops when no shops in cache', () async {
    verifyZeroInteractions(backend);
    final inflateRes = await shopsManager.inflateOsmShops(commons.osmShops);
    final inflatedShops = inflateRes.unwrap();
    expect(inflatedShops, equals(commons.fullShops));
    verify(backend.requestShops(any));
  });

  test('inflateOsmShops: second call does not touch backend because is cached', () async {
    // First inflate
    var inflateRes = await shopsManager.inflateOsmShops(commons.osmShops);
    var inflatedShops = inflateRes.unwrap();
    expect(inflatedShops, equals(commons.fullShops));
    verify(backend.requestShops(any));

    // Second inflate
    clearInteractions(backend);
    inflateRes = await shopsManager.inflateOsmShops(commons.osmShops);
    inflatedShops = inflateRes.unwrap();
    expect(inflatedShops, equals(commons.fullShops));
    verifyZeroInteractions(backend);
  });

  test('inflateOsmShops when all of shops are in cache', () async {
    // Force caching
    await shopsManager.fetchShops(commons.bounds);
    clearInteractions(backend);

    final inflateRes = await shopsManager.inflateOsmShops(commons.osmShops);
    final inflatedShops = inflateRes.unwrap();

    expect(inflatedShops, equals(commons.fullShops));

    // Backend is NOT expected to be requested since
    // all of the requested shops should be in cache by now
    verifyNever(backend.requestShops(any));
  });

  test('inflateOsmShops when part of shops are in cache', () async {
    // Force caching
    await shopsManager.fetchShops(commons.bounds);
    clearInteractions(backend);

    final requestedShops = commons.osmShops.toList();
    requestedShops.add(OsmShop((e) => e
      ..osmId = '123321'
      ..name = 'new cool shop'
      ..type = 'supermarket'
      ..longitude = 15
      ..latitude = 15));

    final inflateRes = await shopsManager.inflateOsmShops(requestedShops);
    final inflatedShops = inflateRes.unwrap();

    final expectedShops = <String, Shop>{};
    expectedShops.addAll(commons.fullShops);
    expectedShops[requestedShops.last.osmId] =
        Shop((e) => e..osmShop.replace(requestedShops.last));
    expect(inflatedShops, equals(expectedShops));

    // Backend is expected to be requested since
    // not all of the shops are in cache
    verify(backend.requestShops(any));
  });
}

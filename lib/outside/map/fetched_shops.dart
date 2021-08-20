import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:plante/model/coords_bounds.dart';
import 'package:plante/model/shop.dart';
import 'package:plante/outside/map/osm_shop.dart';

@immutable
class FetchedShops {
  final Map<String, Shop> shops;
  final CoordsBounds shopsBounds;
  final Map<String, OsmShop> osmShops;
  final CoordsBounds osmShopsBounds;
  const FetchedShops(
      this.shops, this.shopsBounds, this.osmShops, this.osmShopsBounds);

  @override
  bool operator ==(Object other) {
    if (other is! FetchedShops) {
      return false;
    }
    return mapEquals(shops, other.shops) &&
        shopsBounds == other.shopsBounds &&
        mapEquals(osmShops, other.osmShops) &&
        osmShopsBounds == other.osmShopsBounds;
  }

  @override
  int get hashCode => hashValues(shopsBounds, osmShopsBounds);
}

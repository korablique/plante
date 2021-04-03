import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/annotations.dart';
import 'package:untitled_vegan_app/model/product.dart';
import 'package:untitled_vegan_app/model/veg_status.dart';
import 'package:untitled_vegan_app/model/veg_status_source.dart';
import 'package:untitled_vegan_app/outside/products_manager.dart';
import 'package:untitled_vegan_app/ui/product/init_product_page.dart';
import 'package:untitled_vegan_app/ui/product/product_page_wrapper.dart';

import '../../widget_tester_extension.dart';
import 'product_page_wrapper_test.mocks.dart';

@GenerateMocks([ProductsManager])
void main() {
  setUp(() {
    GetIt.I.reset();
  });

  testWidgets("init page is shown when product is not filled", (WidgetTester tester) async {
    GetIt.I.registerSingleton<ProductsManager>(MockProductsManager());
    final initialProduct = Product((v) => v.barcode = "123");
    await tester.superPump(ProductPageWrapper(initialProduct));
    expect(find.byType(InitProductPage), findsOneWidget);
  });

  testWidgets("init page is not shown when product is filled", (WidgetTester tester) async {
    GetIt.I.registerSingleton<ProductsManager>(MockProductsManager());
    final initialProduct = Product((v) => v
      ..barcode = "123"
      ..name = "name"
      ..vegetarianStatus = VegStatus.positive
      ..vegetarianStatusSource = VegStatusSource.community
      ..veganStatus = VegStatus.negative
      ..veganStatusSource = VegStatusSource.community
      ..ingredients = "1, 2, 3"
      ..imageIngredients = Uri.parse("https://ya.ru/1.jpg")
      ..imageFront = Uri.parse("https://ya.ru/2.jpg"));
    await tester.superPump(ProductPageWrapper(initialProduct));
    expect(find.byType(InitProductPage), findsNothing);
  });
}

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:plante/model/product.dart';
import 'package:plante/ui/base/components/fab_plante.dart';
import 'package:plante/ui/base/components/header_plante.dart';
import 'package:plante/ui/base/components/headline_bordered_plante.dart';
import 'package:plante/ui/product/_product_images_helper.dart';

class ProductPhotoPage extends StatelessWidget {
  final Product product;
  final ProductImageType imageType;
  const ProductPhotoPage(
      {Key? key, required this.product, required this.imageType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img =
        ProductImagesHelper.productImageWidget(product, imageType)?.image;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(children: [
          if (img != null) PhotoView(imageProvider: img),
          Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: SizedBox(
                          height: HeaderPlante.DEFAULT_HEIGHT,
                          child: Center(child: FabPlante.backBtnPopOnClick()),
                        )),
                    const SizedBox(width: 16),
                    HeadlineBorderedPlante(product.name ?? '???'),
                  ],
                )
              ],
              border: TableBorder.all(color: Colors.transparent),
              columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: IntrinsicColumnWidth(),
                2: IntrinsicColumnWidth(),
              }),
        ])));
  }
}
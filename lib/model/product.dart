import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:plante/base/build_value_helper.dart';
import 'package:plante/model/ingredient.dart';
import 'package:plante/model/veg_status.dart';
import 'package:plante/model/veg_status_source.dart';

part 'product.g.dart';

abstract class Product implements Built<Product, ProductBuilder> {
  String get barcode;
  VegStatus? get vegetarianStatus;
  VegStatusSource? get vegetarianStatusSource;
  VegStatus? get veganStatus;
  VegStatusSource? get veganStatusSource;

  String? get name;
  BuiltList<String>? get brands;
  BuiltList<String>? get categories;
  String? get ingredientsText;
  /// NOTE: the field is NOT send to any backend, only obtained from them.
  BuiltList<Ingredient>? get ingredientsAnalyzed;

  Uri? get imageFront;
  Uri? get imageIngredients;

  VegStatus? get vegetarianStatusAnalysis {
    final ingredientsAnalyzed = this.ingredientsAnalyzed;
    if (ingredientsAnalyzed == null || ingredientsAnalyzed.isEmpty) {
      return null;
    }
    if (ingredientsAnalyzed.where((v) => v.vegetarianStatus == VegStatus.negative).isNotEmpty) {
      return VegStatus.negative;
    }
    if (ingredientsAnalyzed.where((v) => v.vegetarianStatus == VegStatus.unknown).isNotEmpty) {
      return VegStatus.unknown;
    }
    if (ingredientsAnalyzed.where((v) => v.vegetarianStatus == VegStatus.possible).isNotEmpty) {
      return VegStatus.possible;
    }
    // NOTE: a veg status of an ingredient can also be null, that means that
    // the status of the ingredient shoud be ignored
    return VegStatus.positive;
  }

  VegStatus? get veganStatusAnalysis {
    final ingredientsAnalyzed = this.ingredientsAnalyzed;
    if (ingredientsAnalyzed == null || ingredientsAnalyzed.isEmpty) {
      return null;
    }
    if (ingredientsAnalyzed.where((v) => v.veganStatus == VegStatus.negative).isNotEmpty) {
      return VegStatus.negative;
    }
    if (ingredientsAnalyzed.where((v) => v.veganStatus == VegStatus.unknown).isNotEmpty) {
      return VegStatus.unknown;
    }
    if (ingredientsAnalyzed.where((v) => v.veganStatus == VegStatus.possible).isNotEmpty) {
      return VegStatus.possible;
    }
    // NOTE: a veg status of an ingredient can also be null, that means that
    // the status of the ingredient shoud be ignored
    return VegStatus.positive;
  }

  bool isFrontImageFile() => isImageFile(ProductImageType.FRONT);
  bool isFrontImageRemote() => isImageRemote(ProductImageType.FRONT);
  bool isIngredientsImageFile() => isImageFile(ProductImageType.INGREDIENTS);
  bool isIngredientsImageRemote() => isImageRemote(ProductImageType.INGREDIENTS);

  bool isImageFile(ProductImageType imageType) => _isImageFile(imageUri(imageType));
  bool isImageRemote(ProductImageType imageType) => _isImageRemote(imageUri(imageType));

  Uri? imageUri(ProductImageType imageType) {
    switch (imageType) {
      case ProductImageType.FRONT:
        return imageFront;
      case ProductImageType.INGREDIENTS:
        return imageIngredients;
      default:
        throw Exception("Unhandled item: $imageType");
    }
  }

  bool _isImageFile(Uri? uri) {
    if (uri == null) {
      return false;
    }
    return uri.isScheme("FILE");
  }

  bool _isImageRemote(Uri? uri) {
    if (uri == null) {
      return false;
    }
    return !_isImageFile(uri);
  }

  Product rebuildWithImage(ProductImageType imageType, Uri? uri) {
    switch (imageType) {
      case ProductImageType.FRONT:
        return rebuild((v) => v.imageFront = uri);
      case ProductImageType.INGREDIENTS:
        return rebuild((v) => v.imageIngredients = uri);
      default:
        throw Exception("Unhandled item: $imageType");
    }
  }

  static Product? fromJson(Map<String, dynamic> json) {
    return BuildValueHelper.jsonSerializers.deserializeWith(serializer, json);
  }

  Map<String, dynamic> toJson() {
    return BuildValueHelper.jsonSerializers.serializeWith(
        serializer, this) as Map<String, dynamic>;
  }

  factory Product([void Function(ProductBuilder) updates]) = _$Product;
  Product._();
  static Serializer<Product> get serializer => _$productSerializer;
}

enum ProductImageType {
  FRONT,
  INGREDIENTS,
}

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'veg_status_source.g.dart';

class VegStatusSource extends EnumClass {
  // !!! WARNING !!!
  static const VegStatusSource open_food_facts = _$open_food_facts; // DO
  static const VegStatusSource community = _$community; // NOT
  static const VegStatusSource moderator = _$moderator; // RENAME
  static const VegStatusSource unknown = _$unknown; // FIELDS
  // !!! THEY ARE USED FOR SERVER RESPONSES (DE)SERIALIZATION !!!

  const VegStatusSource._(String name) : super(name);

  static BuiltSet<VegStatusSource> get values => _$values;
  static VegStatusSource valueOf(String name) => _$valueOf(name);
  static Serializer<VegStatusSource> get serializer => _$vegStatusSourceSerializer;

  static VegStatusSource? safeValueOf(String name) {
    try {
      return valueOf(name);
    } catch (ArgumentError) {
      // TODO(https://trello.com/c/XWAE5UVB/): log warning
      return null;
    }
  }
}

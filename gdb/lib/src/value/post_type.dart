import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
part 'post_type.g.dart';

class PostTypeEnum extends EnumClass {
  static const PostTypeEnum Cpp = _$cpp;
  static const PostTypeEnum Dart = _$dart;
  static const PostTypeEnum Flutter = _$flutter;
  static const PostTypeEnum Database = _$database;
  static const PostTypeEnum ProblemSolbing = _$problemSolving;

  const PostTypeEnum._(String name) : super(name);

  static BuiltSet<PostTypeEnum> get values => _$postTypeValues;
  static PostTypeEnum valueOf(String name) => _$postTypeValueOf(name);
}

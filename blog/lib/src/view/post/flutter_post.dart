import 'package:blog/src/model/post_model.dart';
import 'package:blog/src/value/post_type.dart';

/// TODO: Generate post using build_runner and source_gen generator
class FlutterPost extends BlogPost {
  FlutterPost({
    List<String> tags,
  }) : super(type: PostTypeEnum.Flutter, tags: tags);
}

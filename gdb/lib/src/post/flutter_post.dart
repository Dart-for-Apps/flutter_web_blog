import 'package:web_flutter/src/model/post_model.dart';
import 'package:web_flutter/src/value/post_type.dart';

/// TODO: Generate post using build_runner and source_gen generator
class FlutterPost extends BlogPost {
  FlutterPost({
    List<String> tags,
  }) : super(type: PostTypeEnum.Flutter, tags: tags);
}

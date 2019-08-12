import 'package:web_flutter/src/value/post_type.dart';

class BlogPost {
  BlogPost({
    this.type,
    this.tags,
  });
  final PostTypeEnum type;
  List<String> tags;
}

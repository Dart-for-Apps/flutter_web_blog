import 'dart:convert';
import 'package:meta/meta.dart';

import 'package:admin_server/model/blog_option.dart';
import 'package:aqueduct/aqueduct.dart';
import 'package:admin_server/admin_server.dart';
import 'package:http/http.dart' as http;

class BlogController extends ResourceController {
  BlogController({
    @required this.blogOption,
  });

  final BlogOption blogOption;

  @Operation.get()
  Future<Response> getBlog() async {
    return Response.ok('Welcome to GDB');
  }

  @Operation.get('type')
  Future<Response> getMeta(@Bind.path('type') String type) async {
    final response = await http.get('http://localhost:8888/files/$type.json');
    return Response.ok(await jsonDecode(response.body));
  }
}

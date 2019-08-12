import 'dart:convert';

import 'package:admin_server/controller/blog_controller.dart';
import 'package:admin_server/controller/heroes_controller.dart';
import 'package:admin_server/model/blog_option.dart';

import 'admin_server.dart';

/// This type initializes an application.
///
/// Override methods in this class to set up routes and initialize services like
/// database connections. See http://aqueduct.io/docs/http/channel/.
class AdminServerChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being accessed.
  @override
  Future prepare() async {
    await loadBlogOptions();
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  BlogOption blogOption;
  FutureOr<Null> loadBlogOptions() async {
    final File optionFile = File('lib/resource/blog_conf.json');
    final Map _blogOptions =
        jsonDecode(await optionFile.readAsString()) as Map ?? {};
    _blogOptions['baseDir'] ??= '../gdb/web/assets/data';
    _blogOptions['tagFile'] ??= 'tag.json';
    _blogOptions['postFile'] ??= 'post.json';
    _blogOptions['categoryFile'] ??= 'category.json';

    blogOption = BlogOption.fromMap(_blogOptions);
  }

  /// Construct the request channel.
  ///
  /// Return an instance of some [Controller] that will be the initial receiver
  /// of all [Request]s.
  ///
  /// This method is invoked after [prepare].
  @override
  Controller get entryPoint {
    final router = Router();

    // Prefer to use `link` instead of `linkFunction`.
    // See: https://aqueduct.io/docs/http/request_controller/
    router.route("/example").linkFunction((request) async {
      return Response.ok({"key": "value"});
    });

    router.route('/heroes/[:id]').link(() => HeroesController());

    router.route('/blog/[:type]').link(() => BlogController(
          blogOption: blogOption,
        ));

    router.route('/files/*').link(() => FileController(blogOption.baseDir));

    return router;
  }
}

import 'package:aqueduct/aqueduct.dart';
import 'package:admin_server/admin_server.dart';

class HeroesController extends ResourceController {
  final _heroes = [
    {'id': 11, 'name': 'Mr. Nice'},
    {'id': 12, 'name': 'Narco'},
    {'id': 13, 'name': 'Bombasto'},
    {'id': 14, 'name': 'Celeritas'},
    {'id': 15, 'name': 'Magneta'},
  ];

  @Operation.get()
  Future<Response> getAllHeroes() async {
    return Response.ok(_heroes);
  }

  @Operation.get('id')
  Future<Response> getHeroById(@Bind.path('id') int heroId) async {
    final hero =
        _heroes.firstWhere((hero) => hero['id'] == heroId, orElse: () => null);
    if (hero == null) {
      return Response.notFound();
    }
    return Response.ok(hero);
  }
}

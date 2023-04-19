import '../model/character.dart';
import '../web_server/characters_web_services.dart';

class CharactersRepository {
  //object from web server
  final CharactersWebServices charactersWebServices;
//constracter
  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => Character.fromJson(character))
        .toList();
  }
}

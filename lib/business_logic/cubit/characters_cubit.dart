import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Data/model/character.dart';
import '../../Data/repositry/characters_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  List<Character> characters = [];

  CharactersCubit(this.charactersRepository) : super(CharactersInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then((characters) {
      //send to UI
      emit(CharactersLoaded(characters));
      this.characters = characters;
    });
    return characters;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/presentation/secreen/character_detailes.dart';
import 'package:flutter_breaking/presentation/secreen/character_secreen.dart';

import 'Data/repositry/characters_repository.dart';
import 'Data/web_server/characters_web_services.dart';
import 'business_logic/cubit/characters_cubit.dart';
import 'constans/straing.dart';

class Approute {
  //tow object
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  //constracter
  Approute() {
    // create new object from WebServices = > CharactersWebServices()
    charactersRepository = CharactersRepository(CharactersWebServices());
    //  pass charactersRepository bec the cubit need Repository to get the data
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? genarateroute(RouteSettings settings) {
    switch (settings.name) {
      case charactersecreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext contxt) => charactersCubit,
            child: Charactersecreen(),
          ),
        );

      case characterDetailes:
        return MaterialPageRoute(builder: (_) => CharactrDetailesSecreen());
    }
  }
}

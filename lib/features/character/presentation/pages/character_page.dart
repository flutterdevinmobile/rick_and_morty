import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/character_bloc.dart';
import '../bloc/character_event.dart';
import '../bloc/character_state.dart';
import '../widgets/build_list.dart';
import '../widgets/build_loading.dart';

class CharacterPage extends StatefulWidget {
  const CharacterPage({super.key});

  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterBloc>().add(const CharacterEvent.fetchCharacters());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rick and Morty Characters')),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => buildLoading(),
              loaded: (characters) {
                print('Characters loaded: ${characters.length}');
                return buildList(characters);
              }       ,
              error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }



}

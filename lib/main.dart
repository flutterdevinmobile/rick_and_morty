import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'core/network/dio_client.dart';
import 'features/character/data/datasources/character_local_datasource.dart';
import 'features/character/data/datasources/character_remote_data_source.dart';
import 'features/character/data/models/character_model.dart';
import 'features/character/data/repositories/character_repository_impl.dart';
import 'features/character/domain/usecases/get_characters.dart';
import 'features/character/presentation/bloc/character_bloc.dart';
import 'features/character/presentation/pages/character_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(CharacterModelAdapter());

  final box = await Hive.openBox<CharacterModel>('rick_and_morty_box');

  final connectivity = Connectivity();
  final dio = Dio();
  final dioClient = DioClient(dio);

  final remoteDataSource = CharacterRemoteDataSourceImpl(dioClient: dioClient);
  final localDataSource = CharacterLocalDataSourceImpl(box: box);

  final repository = CharacterRepositoryImpl(
    remoteDataSource: remoteDataSource,
    localDataSource: localDataSource,
    connectivity: connectivity,
  );

  final getCharacters = GetCharacters(repository);

  runApp(MyApp(getCharacters: getCharacters));
}


class MyApp extends StatelessWidget {
  final GetCharacters getCharacters;

  const MyApp({super.key, required this.getCharacters});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BlocProvider(
        create: (_) => CharacterBloc(getCharacters: getCharacters),
        child: const CharacterPage(),
      ),
    );
  }
}

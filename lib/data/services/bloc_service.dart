import 'package:hive/hive.dart';

import 'package:rev/domain/models/bloc.dart';

class BlocService {
  static const collectionName = "bloc";

  Future<dynamic> getBlocs() async {
    // Create a box collection
    final collection = await BoxCollection.open(
      'ressources',
      {'bloc'},
      path: './',
    );
    // final blocBox = collection.openBox<Map>('bloc');
  }

  Future<dynamic> create(Bloc bloc) async {
    final collection = await BoxCollection.open(
      'ressources',
      {'bloc'},
      path: './',
    );
    final blocBox = await collection.openBox<Map>('bloc');

    await blocBox.put(bloc.IdBloc.toString(), bloc.toJson());
  }
}

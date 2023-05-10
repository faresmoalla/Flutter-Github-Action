import 'package:rev/domain/models/bloc.dart';

abstract class IBlocRepository {
  Future<Bloc> getBlocs();
}

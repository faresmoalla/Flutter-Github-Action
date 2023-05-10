import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'bloc.freezed.dart';
part 'bloc.g.dart';

@freezed
@HiveType(typeId: 0, adapterName: "BlocModelAdapter")
class Bloc with _$Bloc {
  const factory Bloc({
   @HiveField(0) int? IdBloc,
    @HiveField(1 ) required String NomBloc,
  }) = _Bloc;

  factory Bloc.fromJson(Map<String, dynamic> json) => _$BlocFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bloc.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BlocModelAdapter extends TypeAdapter<Bloc> {
  @override
  final int typeId = 0;

  @override
  Bloc read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Bloc(
      IdBloc: fields[0] as int?,
      NomBloc: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Bloc obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.IdBloc)
      ..writeByte(1)
      ..write(obj.NomBloc);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BlocModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Bloc _$$_BlocFromJson(Map<String, dynamic> json) => _$_Bloc(
      IdBloc: json['IdBloc'] as int?,
      NomBloc: json['NomBloc'] as String,
    );

Map<String, dynamic> _$$_BlocToJson(_$_Bloc instance) => <String, dynamic>{
      'IdBloc': instance.IdBloc,
      'NomBloc': instance.NomBloc,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bloc _$BlocFromJson(Map<String, dynamic> json) {
  return _Bloc.fromJson(json);
}

/// @nodoc
mixin _$Bloc {
  @HiveField(0)
  int? get IdBloc => throw _privateConstructorUsedError;
  @HiveField(1)
  String get NomBloc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlocCopyWith<Bloc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocCopyWith<$Res> {
  factory $BlocCopyWith(Bloc value, $Res Function(Bloc) then) =
      _$BlocCopyWithImpl<$Res, Bloc>;
  @useResult
  $Res call({@HiveField(0) int? IdBloc, @HiveField(1) String NomBloc});
}

/// @nodoc
class _$BlocCopyWithImpl<$Res, $Val extends Bloc>
    implements $BlocCopyWith<$Res> {
  _$BlocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? IdBloc = freezed,
    Object? NomBloc = null,
  }) {
    return _then(_value.copyWith(
      IdBloc: freezed == IdBloc
          ? _value.IdBloc
          : IdBloc // ignore: cast_nullable_to_non_nullable
              as int?,
      NomBloc: null == NomBloc
          ? _value.NomBloc
          : NomBloc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlocCopyWith<$Res> implements $BlocCopyWith<$Res> {
  factory _$$_BlocCopyWith(_$_Bloc value, $Res Function(_$_Bloc) then) =
      __$$_BlocCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) int? IdBloc, @HiveField(1) String NomBloc});
}

/// @nodoc
class __$$_BlocCopyWithImpl<$Res> extends _$BlocCopyWithImpl<$Res, _$_Bloc>
    implements _$$_BlocCopyWith<$Res> {
  __$$_BlocCopyWithImpl(_$_Bloc _value, $Res Function(_$_Bloc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? IdBloc = freezed,
    Object? NomBloc = null,
  }) {
    return _then(_$_Bloc(
      IdBloc: freezed == IdBloc
          ? _value.IdBloc
          : IdBloc // ignore: cast_nullable_to_non_nullable
              as int?,
      NomBloc: null == NomBloc
          ? _value.NomBloc
          : NomBloc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bloc implements _Bloc {
  const _$_Bloc(
      {@HiveField(0) this.IdBloc, @HiveField(1) required this.NomBloc});

  factory _$_Bloc.fromJson(Map<String, dynamic> json) => _$$_BlocFromJson(json);

  @override
  @HiveField(0)
  final int? IdBloc;
  @override
  @HiveField(1)
  final String NomBloc;

  @override
  String toString() {
    return 'Bloc(IdBloc: $IdBloc, NomBloc: $NomBloc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bloc &&
            (identical(other.IdBloc, IdBloc) || other.IdBloc == IdBloc) &&
            (identical(other.NomBloc, NomBloc) || other.NomBloc == NomBloc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, IdBloc, NomBloc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocCopyWith<_$_Bloc> get copyWith =>
      __$$_BlocCopyWithImpl<_$_Bloc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlocToJson(
      this,
    );
  }
}

abstract class _Bloc implements Bloc {
  const factory _Bloc(
      {@HiveField(0) final int? IdBloc,
      @HiveField(1) required final String NomBloc}) = _$_Bloc;

  factory _Bloc.fromJson(Map<String, dynamic> json) = _$_Bloc.fromJson;

  @override
  @HiveField(0)
  int? get IdBloc;
  @override
  @HiveField(1)
  String get NomBloc;
  @override
  @JsonKey(ignore: true)
  _$$_BlocCopyWith<_$_Bloc> get copyWith => throw _privateConstructorUsedError;
}

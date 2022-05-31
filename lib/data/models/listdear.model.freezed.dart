// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'listdear.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dear _$DearFromJson(Map<String, dynamic> json) {
  return _Dear.fromJson(json);
}

/// @nodoc
mixin _$Dear {
  String get relationship => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DearCopyWith<Dear> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DearCopyWith<$Res> {
  factory $DearCopyWith(Dear value, $Res Function(Dear) then) =
      _$DearCopyWithImpl<$Res>;
  $Res call({String relationship, String name, String image});
}

/// @nodoc
class _$DearCopyWithImpl<$Res> implements $DearCopyWith<$Res> {
  _$DearCopyWithImpl(this._value, this._then);

  final Dear _value;
  // ignore: unused_field
  final $Res Function(Dear) _then;

  @override
  $Res call({
    Object? relationship = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      relationship: relationship == freezed
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DearCopyWith<$Res> implements $DearCopyWith<$Res> {
  factory _$$_DearCopyWith(_$_Dear value, $Res Function(_$_Dear) then) =
      __$$_DearCopyWithImpl<$Res>;
  @override
  $Res call({String relationship, String name, String image});
}

/// @nodoc
class __$$_DearCopyWithImpl<$Res> extends _$DearCopyWithImpl<$Res>
    implements _$$_DearCopyWith<$Res> {
  __$$_DearCopyWithImpl(_$_Dear _value, $Res Function(_$_Dear) _then)
      : super(_value, (v) => _then(v as _$_Dear));

  @override
  _$_Dear get _value => super._value as _$_Dear;

  @override
  $Res call({
    Object? relationship = freezed,
    Object? name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Dear(
      relationship: relationship == freezed
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dear implements _Dear {
  const _$_Dear(
      {required this.relationship, required this.name, required this.image});

  factory _$_Dear.fromJson(Map<String, dynamic> json) => _$$_DearFromJson(json);

  @override
  final String relationship;
  @override
  final String name;
  @override
  final String image;

  @override
  String toString() {
    return 'Dear(relationship: $relationship, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dear &&
            const DeepCollectionEquality()
                .equals(other.relationship, relationship) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(relationship),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_DearCopyWith<_$_Dear> get copyWith =>
      __$$_DearCopyWithImpl<_$_Dear>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DearToJson(this);
  }
}

abstract class _Dear implements Dear {
  const factory _Dear(
      {required final String relationship,
      required final String name,
      required final String image}) = _$_Dear;

  factory _Dear.fromJson(Map<String, dynamic> json) = _$_Dear.fromJson;

  @override
  String get relationship => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DearCopyWith<_$_Dear> get copyWith => throw _privateConstructorUsedError;
}

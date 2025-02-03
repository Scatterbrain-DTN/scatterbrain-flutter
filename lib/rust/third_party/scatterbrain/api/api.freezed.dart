// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PairStatus {
  RustOpaqueInterface get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SbSession field0) paired,
    required TResult Function(PairingSession field0) notPaired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SbSession field0)? paired,
    TResult? Function(PairingSession field0)? notPaired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SbSession field0)? paired,
    TResult Function(PairingSession field0)? notPaired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairStatus_Paired value) paired,
    required TResult Function(PairStatus_NotPaired value) notPaired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairStatus_Paired value)? paired,
    TResult? Function(PairStatus_NotPaired value)? notPaired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairStatus_Paired value)? paired,
    TResult Function(PairStatus_NotPaired value)? notPaired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PairStatusCopyWith<$Res> {
  factory $PairStatusCopyWith(
          PairStatus value, $Res Function(PairStatus) then) =
      _$PairStatusCopyWithImpl<$Res, PairStatus>;
}

/// @nodoc
class _$PairStatusCopyWithImpl<$Res, $Val extends PairStatus>
    implements $PairStatusCopyWith<$Res> {
  _$PairStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PairStatus_PairedImplCopyWith<$Res> {
  factory _$$PairStatus_PairedImplCopyWith(_$PairStatus_PairedImpl value,
          $Res Function(_$PairStatus_PairedImpl) then) =
      __$$PairStatus_PairedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SbSession field0});
}

/// @nodoc
class __$$PairStatus_PairedImplCopyWithImpl<$Res>
    extends _$PairStatusCopyWithImpl<$Res, _$PairStatus_PairedImpl>
    implements _$$PairStatus_PairedImplCopyWith<$Res> {
  __$$PairStatus_PairedImplCopyWithImpl(_$PairStatus_PairedImpl _value,
      $Res Function(_$PairStatus_PairedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$PairStatus_PairedImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SbSession,
    ));
  }
}

/// @nodoc

class _$PairStatus_PairedImpl extends PairStatus_Paired {
  const _$PairStatus_PairedImpl(this.field0) : super._();

  @override
  final SbSession field0;

  @override
  String toString() {
    return 'PairStatus.paired(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PairStatus_PairedImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PairStatus_PairedImplCopyWith<_$PairStatus_PairedImpl> get copyWith =>
      __$$PairStatus_PairedImplCopyWithImpl<_$PairStatus_PairedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SbSession field0) paired,
    required TResult Function(PairingSession field0) notPaired,
  }) {
    return paired(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SbSession field0)? paired,
    TResult? Function(PairingSession field0)? notPaired,
  }) {
    return paired?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SbSession field0)? paired,
    TResult Function(PairingSession field0)? notPaired,
    required TResult orElse(),
  }) {
    if (paired != null) {
      return paired(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairStatus_Paired value) paired,
    required TResult Function(PairStatus_NotPaired value) notPaired,
  }) {
    return paired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairStatus_Paired value)? paired,
    TResult? Function(PairStatus_NotPaired value)? notPaired,
  }) {
    return paired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairStatus_Paired value)? paired,
    TResult Function(PairStatus_NotPaired value)? notPaired,
    required TResult orElse(),
  }) {
    if (paired != null) {
      return paired(this);
    }
    return orElse();
  }
}

abstract class PairStatus_Paired extends PairStatus {
  const factory PairStatus_Paired(final SbSession field0) =
      _$PairStatus_PairedImpl;
  const PairStatus_Paired._() : super._();

  @override
  SbSession get field0;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PairStatus_PairedImplCopyWith<_$PairStatus_PairedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PairStatus_NotPairedImplCopyWith<$Res> {
  factory _$$PairStatus_NotPairedImplCopyWith(_$PairStatus_NotPairedImpl value,
          $Res Function(_$PairStatus_NotPairedImpl) then) =
      __$$PairStatus_NotPairedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PairingSession field0});
}

/// @nodoc
class __$$PairStatus_NotPairedImplCopyWithImpl<$Res>
    extends _$PairStatusCopyWithImpl<$Res, _$PairStatus_NotPairedImpl>
    implements _$$PairStatus_NotPairedImplCopyWith<$Res> {
  __$$PairStatus_NotPairedImplCopyWithImpl(_$PairStatus_NotPairedImpl _value,
      $Res Function(_$PairStatus_NotPairedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$PairStatus_NotPairedImpl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as PairingSession,
    ));
  }
}

/// @nodoc

class _$PairStatus_NotPairedImpl extends PairStatus_NotPaired {
  const _$PairStatus_NotPairedImpl(this.field0) : super._();

  @override
  final PairingSession field0;

  @override
  String toString() {
    return 'PairStatus.notPaired(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PairStatus_NotPairedImpl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PairStatus_NotPairedImplCopyWith<_$PairStatus_NotPairedImpl>
      get copyWith =>
          __$$PairStatus_NotPairedImplCopyWithImpl<_$PairStatus_NotPairedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SbSession field0) paired,
    required TResult Function(PairingSession field0) notPaired,
  }) {
    return notPaired(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SbSession field0)? paired,
    TResult? Function(PairingSession field0)? notPaired,
  }) {
    return notPaired?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SbSession field0)? paired,
    TResult Function(PairingSession field0)? notPaired,
    required TResult orElse(),
  }) {
    if (notPaired != null) {
      return notPaired(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PairStatus_Paired value) paired,
    required TResult Function(PairStatus_NotPaired value) notPaired,
  }) {
    return notPaired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PairStatus_Paired value)? paired,
    TResult? Function(PairStatus_NotPaired value)? notPaired,
  }) {
    return notPaired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PairStatus_Paired value)? paired,
    TResult Function(PairStatus_NotPaired value)? notPaired,
    required TResult orElse(),
  }) {
    if (notPaired != null) {
      return notPaired(this);
    }
    return orElse();
  }
}

abstract class PairStatus_NotPaired extends PairStatus {
  const factory PairStatus_NotPaired(final PairingSession field0) =
      _$PairStatus_NotPairedImpl;
  const PairStatus_NotPaired._() : super._();

  @override
  PairingSession get field0;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PairStatus_NotPairedImplCopyWith<_$PairStatus_NotPairedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirror.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IpAddr {
  RustOpaqueInterface get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ipv4Addr field0) v4,
    required TResult Function(Ipv6Addr field0) v6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ipv4Addr field0)? v4,
    TResult? Function(Ipv6Addr field0)? v6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ipv4Addr field0)? v4,
    TResult Function(Ipv6Addr field0)? v6,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddr_V4 value) v4,
    required TResult Function(IpAddr_V6 value) v6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddr_V4 value)? v4,
    TResult? Function(IpAddr_V6 value)? v6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddr_V4 value)? v4,
    TResult Function(IpAddr_V6 value)? v6,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpAddrCopyWith<$Res> {
  factory $IpAddrCopyWith(IpAddr value, $Res Function(IpAddr) then) =
      _$IpAddrCopyWithImpl<$Res, IpAddr>;
}

/// @nodoc
class _$IpAddrCopyWithImpl<$Res, $Val extends IpAddr>
    implements $IpAddrCopyWith<$Res> {
  _$IpAddrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IpAddr_V4ImplCopyWith<$Res> {
  factory _$$IpAddr_V4ImplCopyWith(
          _$IpAddr_V4Impl value, $Res Function(_$IpAddr_V4Impl) then) =
      __$$IpAddr_V4ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ipv4Addr field0});
}

/// @nodoc
class __$$IpAddr_V4ImplCopyWithImpl<$Res>
    extends _$IpAddrCopyWithImpl<$Res, _$IpAddr_V4Impl>
    implements _$$IpAddr_V4ImplCopyWith<$Res> {
  __$$IpAddr_V4ImplCopyWithImpl(
      _$IpAddr_V4Impl _value, $Res Function(_$IpAddr_V4Impl) _then)
      : super(_value, _then);

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$IpAddr_V4Impl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Ipv4Addr,
    ));
  }
}

/// @nodoc

class _$IpAddr_V4Impl extends IpAddr_V4 {
  const _$IpAddr_V4Impl(this.field0) : super._();

  @override
  final Ipv4Addr field0;

  @override
  String toString() {
    return 'IpAddr.v4(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpAddr_V4Impl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IpAddr_V4ImplCopyWith<_$IpAddr_V4Impl> get copyWith =>
      __$$IpAddr_V4ImplCopyWithImpl<_$IpAddr_V4Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ipv4Addr field0) v4,
    required TResult Function(Ipv6Addr field0) v6,
  }) {
    return v4(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ipv4Addr field0)? v4,
    TResult? Function(Ipv6Addr field0)? v6,
  }) {
    return v4?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ipv4Addr field0)? v4,
    TResult Function(Ipv6Addr field0)? v6,
    required TResult orElse(),
  }) {
    if (v4 != null) {
      return v4(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddr_V4 value) v4,
    required TResult Function(IpAddr_V6 value) v6,
  }) {
    return v4(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddr_V4 value)? v4,
    TResult? Function(IpAddr_V6 value)? v6,
  }) {
    return v4?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddr_V4 value)? v4,
    TResult Function(IpAddr_V6 value)? v6,
    required TResult orElse(),
  }) {
    if (v4 != null) {
      return v4(this);
    }
    return orElse();
  }
}

abstract class IpAddr_V4 extends IpAddr {
  const factory IpAddr_V4(final Ipv4Addr field0) = _$IpAddr_V4Impl;
  const IpAddr_V4._() : super._();

  @override
  Ipv4Addr get field0;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IpAddr_V4ImplCopyWith<_$IpAddr_V4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IpAddr_V6ImplCopyWith<$Res> {
  factory _$$IpAddr_V6ImplCopyWith(
          _$IpAddr_V6Impl value, $Res Function(_$IpAddr_V6Impl) then) =
      __$$IpAddr_V6ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Ipv6Addr field0});
}

/// @nodoc
class __$$IpAddr_V6ImplCopyWithImpl<$Res>
    extends _$IpAddrCopyWithImpl<$Res, _$IpAddr_V6Impl>
    implements _$$IpAddr_V6ImplCopyWith<$Res> {
  __$$IpAddr_V6ImplCopyWithImpl(
      _$IpAddr_V6Impl _value, $Res Function(_$IpAddr_V6Impl) _then)
      : super(_value, _then);

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$IpAddr_V6Impl(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Ipv6Addr,
    ));
  }
}

/// @nodoc

class _$IpAddr_V6Impl extends IpAddr_V6 {
  const _$IpAddr_V6Impl(this.field0) : super._();

  @override
  final Ipv6Addr field0;

  @override
  String toString() {
    return 'IpAddr.v6(field0: $field0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpAddr_V6Impl &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IpAddr_V6ImplCopyWith<_$IpAddr_V6Impl> get copyWith =>
      __$$IpAddr_V6ImplCopyWithImpl<_$IpAddr_V6Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ipv4Addr field0) v4,
    required TResult Function(Ipv6Addr field0) v6,
  }) {
    return v6(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ipv4Addr field0)? v4,
    TResult? Function(Ipv6Addr field0)? v6,
  }) {
    return v6?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ipv4Addr field0)? v4,
    TResult Function(Ipv6Addr field0)? v6,
    required TResult orElse(),
  }) {
    if (v6 != null) {
      return v6(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddr_V4 value) v4,
    required TResult Function(IpAddr_V6 value) v6,
  }) {
    return v6(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddr_V4 value)? v4,
    TResult? Function(IpAddr_V6 value)? v6,
  }) {
    return v6?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddr_V4 value)? v4,
    TResult Function(IpAddr_V6 value)? v6,
    required TResult orElse(),
  }) {
    if (v6 != null) {
      return v6(this);
    }
    return orElse();
  }
}

abstract class IpAddr_V6 extends IpAddr {
  const factory IpAddr_V6(final Ipv6Addr field0) = _$IpAddr_V6Impl;
  const IpAddr_V6._() : super._();

  @override
  Ipv6Addr get field0;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IpAddr_V6ImplCopyWith<_$IpAddr_V6Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

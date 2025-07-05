// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirror.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IpAddr {
  RustOpaqueInterface get field0;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IpAddr &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'IpAddr(field0: $field0)';
  }
}

/// @nodoc
class $IpAddrCopyWith<$Res> {
  $IpAddrCopyWith(IpAddr _, $Res Function(IpAddr) __);
}

/// Adds pattern-matching-related methods to [IpAddr].
extension IpAddrPatterns on IpAddr {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IpAddr_V4 value)? v4,
    TResult Function(IpAddr_V6 value)? v6,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4() when v4 != null:
        return v4(_that);
      case IpAddr_V6() when v6 != null:
        return v6(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IpAddr_V4 value) v4,
    required TResult Function(IpAddr_V6 value) v6,
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4():
        return v4(_that);
      case IpAddr_V6():
        return v6(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IpAddr_V4 value)? v4,
    TResult? Function(IpAddr_V6 value)? v6,
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4() when v4 != null:
        return v4(_that);
      case IpAddr_V6() when v6 != null:
        return v6(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ipv4Addr field0)? v4,
    TResult Function(Ipv6Addr field0)? v6,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4() when v4 != null:
        return v4(_that.field0);
      case IpAddr_V6() when v6 != null:
        return v6(_that.field0);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ipv4Addr field0) v4,
    required TResult Function(Ipv6Addr field0) v6,
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4():
        return v4(_that.field0);
      case IpAddr_V6():
        return v6(_that.field0);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ipv4Addr field0)? v4,
    TResult? Function(Ipv6Addr field0)? v6,
  }) {
    final _that = this;
    switch (_that) {
      case IpAddr_V4() when v4 != null:
        return v4(_that.field0);
      case IpAddr_V6() when v6 != null:
        return v6(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc

class IpAddr_V4 extends IpAddr {
  const IpAddr_V4(this.field0) : super._();

  @override
  final Ipv4Addr field0;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IpAddr_V4CopyWith<IpAddr_V4> get copyWith =>
      _$IpAddr_V4CopyWithImpl<IpAddr_V4>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IpAddr_V4 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'IpAddr.v4(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $IpAddr_V4CopyWith<$Res> implements $IpAddrCopyWith<$Res> {
  factory $IpAddr_V4CopyWith(IpAddr_V4 value, $Res Function(IpAddr_V4) _then) =
      _$IpAddr_V4CopyWithImpl;
  @useResult
  $Res call({Ipv4Addr field0});
}

/// @nodoc
class _$IpAddr_V4CopyWithImpl<$Res> implements $IpAddr_V4CopyWith<$Res> {
  _$IpAddr_V4CopyWithImpl(this._self, this._then);

  final IpAddr_V4 _self;
  final $Res Function(IpAddr_V4) _then;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(IpAddr_V4(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Ipv4Addr,
    ));
  }
}

/// @nodoc

class IpAddr_V6 extends IpAddr {
  const IpAddr_V6(this.field0) : super._();

  @override
  final Ipv6Addr field0;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IpAddr_V6CopyWith<IpAddr_V6> get copyWith =>
      _$IpAddr_V6CopyWithImpl<IpAddr_V6>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IpAddr_V6 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'IpAddr.v6(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $IpAddr_V6CopyWith<$Res> implements $IpAddrCopyWith<$Res> {
  factory $IpAddr_V6CopyWith(IpAddr_V6 value, $Res Function(IpAddr_V6) _then) =
      _$IpAddr_V6CopyWithImpl;
  @useResult
  $Res call({Ipv6Addr field0});
}

/// @nodoc
class _$IpAddr_V6CopyWithImpl<$Res> implements $IpAddr_V6CopyWith<$Res> {
  _$IpAddr_V6CopyWithImpl(this._self, this._then);

  final IpAddr_V6 _self;
  final $Res Function(IpAddr_V6) _then;

  /// Create a copy of IpAddr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(IpAddr_V6(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Ipv6Addr,
    ));
  }
}

// dart format on

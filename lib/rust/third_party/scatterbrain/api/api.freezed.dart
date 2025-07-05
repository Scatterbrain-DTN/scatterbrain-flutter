// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PairStatus {
  RustOpaqueInterface get field0;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PairStatus &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'PairStatus(field0: $field0)';
  }
}

/// @nodoc
class $PairStatusCopyWith<$Res> {
  $PairStatusCopyWith(PairStatus _, $Res Function(PairStatus) __);
}

/// Adds pattern-matching-related methods to [PairStatus].
extension PairStatusPatterns on PairStatus {
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
    TResult Function(PairStatus_Paired value)? paired,
    TResult Function(PairStatus_NotPaired value)? notPaired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired() when paired != null:
        return paired(_that);
      case PairStatus_NotPaired() when notPaired != null:
        return notPaired(_that);
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
    required TResult Function(PairStatus_Paired value) paired,
    required TResult Function(PairStatus_NotPaired value) notPaired,
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired():
        return paired(_that);
      case PairStatus_NotPaired():
        return notPaired(_that);
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
    TResult? Function(PairStatus_Paired value)? paired,
    TResult? Function(PairStatus_NotPaired value)? notPaired,
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired() when paired != null:
        return paired(_that);
      case PairStatus_NotPaired() when notPaired != null:
        return notPaired(_that);
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
    TResult Function(SbSession field0)? paired,
    TResult Function(PairingSession field0)? notPaired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired() when paired != null:
        return paired(_that.field0);
      case PairStatus_NotPaired() when notPaired != null:
        return notPaired(_that.field0);
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
    required TResult Function(SbSession field0) paired,
    required TResult Function(PairingSession field0) notPaired,
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired():
        return paired(_that.field0);
      case PairStatus_NotPaired():
        return notPaired(_that.field0);
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
    TResult? Function(SbSession field0)? paired,
    TResult? Function(PairingSession field0)? notPaired,
  }) {
    final _that = this;
    switch (_that) {
      case PairStatus_Paired() when paired != null:
        return paired(_that.field0);
      case PairStatus_NotPaired() when notPaired != null:
        return notPaired(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc

class PairStatus_Paired extends PairStatus {
  const PairStatus_Paired(this.field0) : super._();

  @override
  final SbSession field0;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PairStatus_PairedCopyWith<PairStatus_Paired> get copyWith =>
      _$PairStatus_PairedCopyWithImpl<PairStatus_Paired>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PairStatus_Paired &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'PairStatus.paired(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $PairStatus_PairedCopyWith<$Res>
    implements $PairStatusCopyWith<$Res> {
  factory $PairStatus_PairedCopyWith(
          PairStatus_Paired value, $Res Function(PairStatus_Paired) _then) =
      _$PairStatus_PairedCopyWithImpl;
  @useResult
  $Res call({SbSession field0});
}

/// @nodoc
class _$PairStatus_PairedCopyWithImpl<$Res>
    implements $PairStatus_PairedCopyWith<$Res> {
  _$PairStatus_PairedCopyWithImpl(this._self, this._then);

  final PairStatus_Paired _self;
  final $Res Function(PairStatus_Paired) _then;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(PairStatus_Paired(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SbSession,
    ));
  }
}

/// @nodoc

class PairStatus_NotPaired extends PairStatus {
  const PairStatus_NotPaired(this.field0) : super._();

  @override
  final PairingSession field0;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PairStatus_NotPairedCopyWith<PairStatus_NotPaired> get copyWith =>
      _$PairStatus_NotPairedCopyWithImpl<PairStatus_NotPaired>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PairStatus_NotPaired &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'PairStatus.notPaired(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $PairStatus_NotPairedCopyWith<$Res>
    implements $PairStatusCopyWith<$Res> {
  factory $PairStatus_NotPairedCopyWith(PairStatus_NotPaired value,
          $Res Function(PairStatus_NotPaired) _then) =
      _$PairStatus_NotPairedCopyWithImpl;
  @useResult
  $Res call({PairingSession field0});
}

/// @nodoc
class _$PairStatus_NotPairedCopyWithImpl<$Res>
    implements $PairStatus_NotPairedCopyWith<$Res> {
  _$PairStatus_NotPairedCopyWithImpl(this._self, this._then);

  final PairStatus_NotPaired _self;
  final $Res Function(PairStatus_NotPaired) _then;

  /// Create a copy of PairStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(PairStatus_NotPaired(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as PairingSession,
    ));
  }
}

// dart format on

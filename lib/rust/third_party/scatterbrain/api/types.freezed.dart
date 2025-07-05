// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ImportIdentityState {
  UuidValue get field0;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImportIdentityStateCopyWith<ImportIdentityState> get copyWith =>
      _$ImportIdentityStateCopyWithImpl<ImportIdentityState>(
          this as ImportIdentityState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportIdentityState &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'ImportIdentityState(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $ImportIdentityStateCopyWith<$Res> {
  factory $ImportIdentityStateCopyWith(
          ImportIdentityState value, $Res Function(ImportIdentityState) _then) =
      _$ImportIdentityStateCopyWithImpl;
  @useResult
  $Res call({UuidValue field0});
}

/// @nodoc
class _$ImportIdentityStateCopyWithImpl<$Res>
    implements $ImportIdentityStateCopyWith<$Res> {
  _$ImportIdentityStateCopyWithImpl(this._self, this._then);

  final ImportIdentityState _self;
  final $Res Function(ImportIdentityState) _then;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_self.copyWith(
      field0: null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ));
  }
}

/// Adds pattern-matching-related methods to [ImportIdentityState].
extension ImportIdentityStatePatterns on ImportIdentityState {
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
    TResult Function(ImportIdentityState_Initiated value)? initiated,
    TResult Function(ImportIdentityState_Complete value)? complete,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated() when initiated != null:
        return initiated(_that);
      case ImportIdentityState_Complete() when complete != null:
        return complete(_that);
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
    required TResult Function(ImportIdentityState_Initiated value) initiated,
    required TResult Function(ImportIdentityState_Complete value) complete,
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated():
        return initiated(_that);
      case ImportIdentityState_Complete():
        return complete(_that);
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
    TResult? Function(ImportIdentityState_Initiated value)? initiated,
    TResult? Function(ImportIdentityState_Complete value)? complete,
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated() when initiated != null:
        return initiated(_that);
      case ImportIdentityState_Complete() when complete != null:
        return complete(_that);
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
    TResult Function(UuidValue field0)? initiated,
    TResult Function(UuidValue field0)? complete,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated() when initiated != null:
        return initiated(_that.field0);
      case ImportIdentityState_Complete() when complete != null:
        return complete(_that.field0);
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
    required TResult Function(UuidValue field0) initiated,
    required TResult Function(UuidValue field0) complete,
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated():
        return initiated(_that.field0);
      case ImportIdentityState_Complete():
        return complete(_that.field0);
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
    TResult? Function(UuidValue field0)? initiated,
    TResult? Function(UuidValue field0)? complete,
  }) {
    final _that = this;
    switch (_that) {
      case ImportIdentityState_Initiated() when initiated != null:
        return initiated(_that.field0);
      case ImportIdentityState_Complete() when complete != null:
        return complete(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ImportIdentityState_Initiated extends ImportIdentityState {
  const ImportIdentityState_Initiated(this.field0) : super._();

  @override
  final UuidValue field0;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImportIdentityState_InitiatedCopyWith<ImportIdentityState_Initiated>
      get copyWith => _$ImportIdentityState_InitiatedCopyWithImpl<
          ImportIdentityState_Initiated>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportIdentityState_Initiated &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'ImportIdentityState.initiated(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $ImportIdentityState_InitiatedCopyWith<$Res>
    implements $ImportIdentityStateCopyWith<$Res> {
  factory $ImportIdentityState_InitiatedCopyWith(
          ImportIdentityState_Initiated value,
          $Res Function(ImportIdentityState_Initiated) _then) =
      _$ImportIdentityState_InitiatedCopyWithImpl;
  @override
  @useResult
  $Res call({UuidValue field0});
}

/// @nodoc
class _$ImportIdentityState_InitiatedCopyWithImpl<$Res>
    implements $ImportIdentityState_InitiatedCopyWith<$Res> {
  _$ImportIdentityState_InitiatedCopyWithImpl(this._self, this._then);

  final ImportIdentityState_Initiated _self;
  final $Res Function(ImportIdentityState_Initiated) _then;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(ImportIdentityState_Initiated(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ));
  }
}

/// @nodoc

class ImportIdentityState_Complete extends ImportIdentityState {
  const ImportIdentityState_Complete(this.field0) : super._();

  @override
  final UuidValue field0;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImportIdentityState_CompleteCopyWith<ImportIdentityState_Complete>
      get copyWith => _$ImportIdentityState_CompleteCopyWithImpl<
          ImportIdentityState_Complete>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImportIdentityState_Complete &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'ImportIdentityState.complete(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $ImportIdentityState_CompleteCopyWith<$Res>
    implements $ImportIdentityStateCopyWith<$Res> {
  factory $ImportIdentityState_CompleteCopyWith(
          ImportIdentityState_Complete value,
          $Res Function(ImportIdentityState_Complete) _then) =
      _$ImportIdentityState_CompleteCopyWithImpl;
  @override
  @useResult
  $Res call({UuidValue field0});
}

/// @nodoc
class _$ImportIdentityState_CompleteCopyWithImpl<$Res>
    implements $ImportIdentityState_CompleteCopyWith<$Res> {
  _$ImportIdentityState_CompleteCopyWithImpl(this._self, this._then);

  final ImportIdentityState_Complete _self;
  final $Res Function(ImportIdentityState_Complete) _then;

  /// Create a copy of ImportIdentityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(ImportIdentityState_Complete(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ));
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeleneTheme _$SeleneThemeFromJson(Map<String, dynamic> json) {
  return _SeleneTheme.fromJson(json);
}

/// @nodoc
mixin _$SeleneTheme {
  @Index(unique: true)
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @enumerated
  ThemeCategory get category => throw _privateConstructorUsedError;
  String? get primary => throw _privateConstructorUsedError;
  String? get secondary => throw _privateConstructorUsedError;
  String? get tertiary => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get neutral => throw _privateConstructorUsedError;
  String? get neutralVariant => throw _privateConstructorUsedError;
  String? get primaryDark => throw _privateConstructorUsedError;
  String? get secondaryDark => throw _privateConstructorUsedError;
  String? get tertiaryDark => throw _privateConstructorUsedError;
  String? get errorDark => throw _privateConstructorUsedError;
  String? get neutralDark => throw _privateConstructorUsedError;
  String? get neutralVariantDark => throw _privateConstructorUsedError;
  SerializableColorScheme? get lightScheme =>
      throw _privateConstructorUsedError;
  SerializableColorScheme? get darkScheme => throw _privateConstructorUsedError;
  @enumerated
  FlexSchemeVariant get variant => throw _privateConstructorUsedError;
  bool get selectable => throw _privateConstructorUsedError;

  /// Serializes this SeleneTheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeleneTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeleneThemeCopyWith<SeleneTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeleneThemeCopyWith<$Res> {
  factory $SeleneThemeCopyWith(
          SeleneTheme value, $Res Function(SeleneTheme) then) =
      _$SeleneThemeCopyWithImpl<$Res, SeleneTheme>;
  @useResult
  $Res call(
      {@Index(unique: true) String id,
      String name,
      @enumerated ThemeCategory category,
      String? primary,
      String? secondary,
      String? tertiary,
      String? error,
      String? neutral,
      String? neutralVariant,
      String? primaryDark,
      String? secondaryDark,
      String? tertiaryDark,
      String? errorDark,
      String? neutralDark,
      String? neutralVariantDark,
      SerializableColorScheme? lightScheme,
      SerializableColorScheme? darkScheme,
      @enumerated FlexSchemeVariant variant,
      bool selectable});
}

/// @nodoc
class _$SeleneThemeCopyWithImpl<$Res, $Val extends SeleneTheme>
    implements $SeleneThemeCopyWith<$Res> {
  _$SeleneThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeleneTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? error = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
    Object? primaryDark = freezed,
    Object? secondaryDark = freezed,
    Object? tertiaryDark = freezed,
    Object? errorDark = freezed,
    Object? neutralDark = freezed,
    Object? neutralVariantDark = freezed,
    Object? lightScheme = freezed,
    Object? darkScheme = freezed,
    Object? variant = null,
    Object? selectable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String?,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralVariant: freezed == neutralVariant
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryDark: freezed == primaryDark
          ? _value.primaryDark
          : primaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryDark: freezed == secondaryDark
          ? _value.secondaryDark
          : secondaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      tertiaryDark: freezed == tertiaryDark
          ? _value.tertiaryDark
          : tertiaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDark: freezed == errorDark
          ? _value.errorDark
          : errorDark // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralDark: freezed == neutralDark
          ? _value.neutralDark
          : neutralDark // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralVariantDark: freezed == neutralVariantDark
          ? _value.neutralVariantDark
          : neutralVariantDark // ignore: cast_nullable_to_non_nullable
              as String?,
      lightScheme: freezed == lightScheme
          ? _value.lightScheme
          : lightScheme // ignore: cast_nullable_to_non_nullable
              as SerializableColorScheme?,
      darkScheme: freezed == darkScheme
          ? _value.darkScheme
          : darkScheme // ignore: cast_nullable_to_non_nullable
              as SerializableColorScheme?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
      selectable: null == selectable
          ? _value.selectable
          : selectable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeleneThemeImplCopyWith<$Res>
    implements $SeleneThemeCopyWith<$Res> {
  factory _$$SeleneThemeImplCopyWith(
          _$SeleneThemeImpl value, $Res Function(_$SeleneThemeImpl) then) =
      __$$SeleneThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Index(unique: true) String id,
      String name,
      @enumerated ThemeCategory category,
      String? primary,
      String? secondary,
      String? tertiary,
      String? error,
      String? neutral,
      String? neutralVariant,
      String? primaryDark,
      String? secondaryDark,
      String? tertiaryDark,
      String? errorDark,
      String? neutralDark,
      String? neutralVariantDark,
      SerializableColorScheme? lightScheme,
      SerializableColorScheme? darkScheme,
      @enumerated FlexSchemeVariant variant,
      bool selectable});
}

/// @nodoc
class __$$SeleneThemeImplCopyWithImpl<$Res>
    extends _$SeleneThemeCopyWithImpl<$Res, _$SeleneThemeImpl>
    implements _$$SeleneThemeImplCopyWith<$Res> {
  __$$SeleneThemeImplCopyWithImpl(
      _$SeleneThemeImpl _value, $Res Function(_$SeleneThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeleneTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
    Object? primary = freezed,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? error = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
    Object? primaryDark = freezed,
    Object? secondaryDark = freezed,
    Object? tertiaryDark = freezed,
    Object? errorDark = freezed,
    Object? neutralDark = freezed,
    Object? neutralVariantDark = freezed,
    Object? lightScheme = freezed,
    Object? darkScheme = freezed,
    Object? variant = null,
    Object? selectable = null,
  }) {
    return _then(_$SeleneThemeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as String?,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as String?,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralVariant: freezed == neutralVariant
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryDark: freezed == primaryDark
          ? _value.primaryDark
          : primaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryDark: freezed == secondaryDark
          ? _value.secondaryDark
          : secondaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      tertiaryDark: freezed == tertiaryDark
          ? _value.tertiaryDark
          : tertiaryDark // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDark: freezed == errorDark
          ? _value.errorDark
          : errorDark // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralDark: freezed == neutralDark
          ? _value.neutralDark
          : neutralDark // ignore: cast_nullable_to_non_nullable
              as String?,
      neutralVariantDark: freezed == neutralVariantDark
          ? _value.neutralVariantDark
          : neutralVariantDark // ignore: cast_nullable_to_non_nullable
              as String?,
      lightScheme: freezed == lightScheme
          ? _value.lightScheme
          : lightScheme // ignore: cast_nullable_to_non_nullable
              as SerializableColorScheme?,
      darkScheme: freezed == darkScheme
          ? _value.darkScheme
          : darkScheme // ignore: cast_nullable_to_non_nullable
              as SerializableColorScheme?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
      selectable: null == selectable
          ? _value.selectable
          : selectable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeleneThemeImpl extends _SeleneTheme {
  const _$SeleneThemeImpl(
      {@Index(unique: true) required this.id,
      required this.name,
      @enumerated this.category = ThemeCategory.custom,
      this.primary,
      this.secondary,
      this.tertiary,
      this.error,
      this.neutral,
      this.neutralVariant,
      this.primaryDark,
      this.secondaryDark,
      this.tertiaryDark,
      this.errorDark,
      this.neutralDark,
      this.neutralVariantDark,
      this.lightScheme,
      this.darkScheme,
      @enumerated this.variant = FlexSchemeVariant.tonalSpot,
      this.selectable = true})
      : super._();

  factory _$SeleneThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeleneThemeImplFromJson(json);

  @override
  @Index(unique: true)
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  @enumerated
  final ThemeCategory category;
  @override
  final String? primary;
  @override
  final String? secondary;
  @override
  final String? tertiary;
  @override
  final String? error;
  @override
  final String? neutral;
  @override
  final String? neutralVariant;
  @override
  final String? primaryDark;
  @override
  final String? secondaryDark;
  @override
  final String? tertiaryDark;
  @override
  final String? errorDark;
  @override
  final String? neutralDark;
  @override
  final String? neutralVariantDark;
  @override
  final SerializableColorScheme? lightScheme;
  @override
  final SerializableColorScheme? darkScheme;
  @override
  @JsonKey()
  @enumerated
  final FlexSchemeVariant variant;
  @override
  @JsonKey()
  final bool selectable;

  @override
  String toString() {
    return 'SeleneTheme(id: $id, name: $name, category: $category, primary: $primary, secondary: $secondary, tertiary: $tertiary, error: $error, neutral: $neutral, neutralVariant: $neutralVariant, primaryDark: $primaryDark, secondaryDark: $secondaryDark, tertiaryDark: $tertiaryDark, errorDark: $errorDark, neutralDark: $neutralDark, neutralVariantDark: $neutralVariantDark, lightScheme: $lightScheme, darkScheme: $darkScheme, variant: $variant, selectable: $selectable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeleneThemeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.tertiary, tertiary) ||
                other.tertiary == tertiary) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.neutral, neutral) || other.neutral == neutral) &&
            (identical(other.neutralVariant, neutralVariant) ||
                other.neutralVariant == neutralVariant) &&
            (identical(other.primaryDark, primaryDark) ||
                other.primaryDark == primaryDark) &&
            (identical(other.secondaryDark, secondaryDark) ||
                other.secondaryDark == secondaryDark) &&
            (identical(other.tertiaryDark, tertiaryDark) ||
                other.tertiaryDark == tertiaryDark) &&
            (identical(other.errorDark, errorDark) ||
                other.errorDark == errorDark) &&
            (identical(other.neutralDark, neutralDark) ||
                other.neutralDark == neutralDark) &&
            (identical(other.neutralVariantDark, neutralVariantDark) ||
                other.neutralVariantDark == neutralVariantDark) &&
            (identical(other.lightScheme, lightScheme) ||
                other.lightScheme == lightScheme) &&
            (identical(other.darkScheme, darkScheme) ||
                other.darkScheme == darkScheme) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.selectable, selectable) ||
                other.selectable == selectable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        category,
        primary,
        secondary,
        tertiary,
        error,
        neutral,
        neutralVariant,
        primaryDark,
        secondaryDark,
        tertiaryDark,
        errorDark,
        neutralDark,
        neutralVariantDark,
        lightScheme,
        darkScheme,
        variant,
        selectable
      ]);

  /// Create a copy of SeleneTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeleneThemeImplCopyWith<_$SeleneThemeImpl> get copyWith =>
      __$$SeleneThemeImplCopyWithImpl<_$SeleneThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeleneThemeImplToJson(
      this,
    );
  }
}

abstract class _SeleneTheme extends SeleneTheme {
  const factory _SeleneTheme(
      {@Index(unique: true) required final String id,
      required final String name,
      @enumerated final ThemeCategory category,
      final String? primary,
      final String? secondary,
      final String? tertiary,
      final String? error,
      final String? neutral,
      final String? neutralVariant,
      final String? primaryDark,
      final String? secondaryDark,
      final String? tertiaryDark,
      final String? errorDark,
      final String? neutralDark,
      final String? neutralVariantDark,
      final SerializableColorScheme? lightScheme,
      final SerializableColorScheme? darkScheme,
      @enumerated final FlexSchemeVariant variant,
      final bool selectable}) = _$SeleneThemeImpl;
  const _SeleneTheme._() : super._();

  factory _SeleneTheme.fromJson(Map<String, dynamic> json) =
      _$SeleneThemeImpl.fromJson;

  @override
  @Index(unique: true)
  String get id;
  @override
  String get name;
  @override
  @enumerated
  ThemeCategory get category;
  @override
  String? get primary;
  @override
  String? get secondary;
  @override
  String? get tertiary;
  @override
  String? get error;
  @override
  String? get neutral;
  @override
  String? get neutralVariant;
  @override
  String? get primaryDark;
  @override
  String? get secondaryDark;
  @override
  String? get tertiaryDark;
  @override
  String? get errorDark;
  @override
  String? get neutralDark;
  @override
  String? get neutralVariantDark;
  @override
  SerializableColorScheme? get lightScheme;
  @override
  SerializableColorScheme? get darkScheme;
  @override
  @enumerated
  FlexSchemeVariant get variant;
  @override
  bool get selectable;

  /// Create a copy of SeleneTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeleneThemeImplCopyWith<_$SeleneThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppTheme {
  String get name => throw _privateConstructorUsedError;
  ThemeCategory get category => throw _privateConstructorUsedError;
  Color get primary => throw _privateConstructorUsedError;
  Color? get secondary => throw _privateConstructorUsedError;
  Color? get tertiary => throw _privateConstructorUsedError;
  Color? get error => throw _privateConstructorUsedError;
  Color? get neutral => throw _privateConstructorUsedError;
  Color? get neutralVariant => throw _privateConstructorUsedError;
  FlexSchemeVariant get variant => throw _privateConstructorUsedError;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res, AppTheme>;
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      Color primary,
      Color? secondary,
      Color? tertiary,
      Color? error,
      Color? neutral,
      Color? neutralVariant,
      FlexSchemeVariant variant});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res, $Val extends AppTheme>
    implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? primary = null,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? error = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
    Object? variant = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color?,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as Color?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Color?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as Color?,
      neutralVariant: freezed == neutralVariant
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as Color?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeImplCopyWith<$Res>
    implements $AppThemeCopyWith<$Res> {
  factory _$$AppThemeImplCopyWith(
          _$AppThemeImpl value, $Res Function(_$AppThemeImpl) then) =
      __$$AppThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      ThemeCategory category,
      Color primary,
      Color? secondary,
      Color? tertiary,
      Color? error,
      Color? neutral,
      Color? neutralVariant,
      FlexSchemeVariant variant});
}

/// @nodoc
class __$$AppThemeImplCopyWithImpl<$Res>
    extends _$AppThemeCopyWithImpl<$Res, _$AppThemeImpl>
    implements _$$AppThemeImplCopyWith<$Res> {
  __$$AppThemeImplCopyWithImpl(
      _$AppThemeImpl _value, $Res Function(_$AppThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? primary = null,
    Object? secondary = freezed,
    Object? tertiary = freezed,
    Object? error = freezed,
    Object? neutral = freezed,
    Object? neutralVariant = freezed,
    Object? variant = null,
  }) {
    return _then(_$AppThemeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ThemeCategory,
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Color,
      secondary: freezed == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Color?,
      tertiary: freezed == tertiary
          ? _value.tertiary
          : tertiary // ignore: cast_nullable_to_non_nullable
              as Color?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Color?,
      neutral: freezed == neutral
          ? _value.neutral
          : neutral // ignore: cast_nullable_to_non_nullable
              as Color?,
      neutralVariant: freezed == neutralVariant
          ? _value.neutralVariant
          : neutralVariant // ignore: cast_nullable_to_non_nullable
              as Color?,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FlexSchemeVariant,
    ));
  }
}

/// @nodoc

class _$AppThemeImpl extends _AppTheme {
  const _$AppThemeImpl(
      {required this.name,
      this.category = ThemeCategory.custom,
      required this.primary,
      this.secondary,
      this.tertiary,
      this.error,
      this.neutral,
      this.neutralVariant,
      this.variant = FlexSchemeVariant.tonalSpot})
      : super._();

  @override
  final String name;
  @override
  @JsonKey()
  final ThemeCategory category;
  @override
  final Color primary;
  @override
  final Color? secondary;
  @override
  final Color? tertiary;
  @override
  final Color? error;
  @override
  final Color? neutral;
  @override
  final Color? neutralVariant;
  @override
  @JsonKey()
  final FlexSchemeVariant variant;

  @override
  String toString() {
    return 'AppTheme(name: $name, category: $category, primary: $primary, secondary: $secondary, tertiary: $tertiary, error: $error, neutral: $neutral, neutralVariant: $neutralVariant, variant: $variant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            (identical(other.tertiary, tertiary) ||
                other.tertiary == tertiary) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.neutral, neutral) || other.neutral == neutral) &&
            (identical(other.neutralVariant, neutralVariant) ||
                other.neutralVariant == neutralVariant) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, category, primary,
      secondary, tertiary, error, neutral, neutralVariant, variant);

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      __$$AppThemeImplCopyWithImpl<_$AppThemeImpl>(this, _$identity);
}

abstract class _AppTheme extends AppTheme {
  const factory _AppTheme(
      {required final String name,
      final ThemeCategory category,
      required final Color primary,
      final Color? secondary,
      final Color? tertiary,
      final Color? error,
      final Color? neutral,
      final Color? neutralVariant,
      final FlexSchemeVariant variant}) = _$AppThemeImpl;
  const _AppTheme._() : super._();

  @override
  String get name;
  @override
  ThemeCategory get category;
  @override
  Color get primary;
  @override
  Color? get secondary;
  @override
  Color? get tertiary;
  @override
  Color? get error;
  @override
  Color? get neutral;
  @override
  Color? get neutralVariant;
  @override
  FlexSchemeVariant get variant;

  /// Create a copy of AppTheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSeleneThemeCollection on Isar {
  IsarCollection<SeleneTheme> get seleneThemes => this.collection();
}

const SeleneThemeSchema = CollectionSchema(
  name: r'themes',
  id: 5413617843239542158,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.byte,
      enumMap: _SeleneThemecategoryEnumValueMap,
    ),
    r'darkScheme': PropertySchema(
      id: 1,
      name: r'darkScheme',
      type: IsarType.object,
      target: r'SerializableColorScheme',
    ),
    r'error': PropertySchema(
      id: 2,
      name: r'error',
      type: IsarType.string,
    ),
    r'errorDark': PropertySchema(
      id: 3,
      name: r'errorDark',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'lightScheme': PropertySchema(
      id: 5,
      name: r'lightScheme',
      type: IsarType.object,
      target: r'SerializableColorScheme',
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'neutral': PropertySchema(
      id: 7,
      name: r'neutral',
      type: IsarType.string,
    ),
    r'neutralDark': PropertySchema(
      id: 8,
      name: r'neutralDark',
      type: IsarType.string,
    ),
    r'neutralVariant': PropertySchema(
      id: 9,
      name: r'neutralVariant',
      type: IsarType.string,
    ),
    r'neutralVariantDark': PropertySchema(
      id: 10,
      name: r'neutralVariantDark',
      type: IsarType.string,
    ),
    r'primary': PropertySchema(
      id: 11,
      name: r'primary',
      type: IsarType.string,
    ),
    r'primaryDark': PropertySchema(
      id: 12,
      name: r'primaryDark',
      type: IsarType.string,
    ),
    r'secondary': PropertySchema(
      id: 13,
      name: r'secondary',
      type: IsarType.string,
    ),
    r'secondaryDark': PropertySchema(
      id: 14,
      name: r'secondaryDark',
      type: IsarType.string,
    ),
    r'selectable': PropertySchema(
      id: 15,
      name: r'selectable',
      type: IsarType.bool,
    ),
    r'tertiary': PropertySchema(
      id: 16,
      name: r'tertiary',
      type: IsarType.string,
    ),
    r'tertiaryDark': PropertySchema(
      id: 17,
      name: r'tertiaryDark',
      type: IsarType.string,
    ),
    r'variant': PropertySchema(
      id: 18,
      name: r'variant',
      type: IsarType.byte,
      enumMap: _SeleneThemevariantEnumValueMap,
    )
  },
  estimateSize: _seleneThemeEstimateSize,
  serialize: _seleneThemeSerialize,
  deserialize: _seleneThemeDeserialize,
  deserializeProp: _seleneThemeDeserializeProp,
  idName: r'isarID',
  indexes: {
    r'id': IndexSchema(
      id: -3268401673993471357,
      name: r'id',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'id',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'SerializableColorScheme': SerializableColorSchemeSchema},
  getId: _seleneThemeGetId,
  getLinks: _seleneThemeGetLinks,
  attach: _seleneThemeAttach,
  version: '3.1.8',
);

int _seleneThemeEstimateSize(
  SeleneTheme object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.darkScheme;
    if (value != null) {
      bytesCount += 3 +
          SerializableColorSchemeSchema.estimateSize(
              value, allOffsets[SerializableColorScheme]!, allOffsets);
    }
  }
  {
    final value = object.error;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.errorDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.id.length * 3;
  {
    final value = object.lightScheme;
    if (value != null) {
      bytesCount += 3 +
          SerializableColorSchemeSchema.estimateSize(
              value, allOffsets[SerializableColorScheme]!, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.neutral;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.neutralDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.neutralVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.neutralVariantDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiaryDark;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _seleneThemeSerialize(
  SeleneTheme object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.category.index);
  writer.writeObject<SerializableColorScheme>(
    offsets[1],
    allOffsets,
    SerializableColorSchemeSchema.serialize,
    object.darkScheme,
  );
  writer.writeString(offsets[2], object.error);
  writer.writeString(offsets[3], object.errorDark);
  writer.writeString(offsets[4], object.id);
  writer.writeObject<SerializableColorScheme>(
    offsets[5],
    allOffsets,
    SerializableColorSchemeSchema.serialize,
    object.lightScheme,
  );
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.neutral);
  writer.writeString(offsets[8], object.neutralDark);
  writer.writeString(offsets[9], object.neutralVariant);
  writer.writeString(offsets[10], object.neutralVariantDark);
  writer.writeString(offsets[11], object.primary);
  writer.writeString(offsets[12], object.primaryDark);
  writer.writeString(offsets[13], object.secondary);
  writer.writeString(offsets[14], object.secondaryDark);
  writer.writeBool(offsets[15], object.selectable);
  writer.writeString(offsets[16], object.tertiary);
  writer.writeString(offsets[17], object.tertiaryDark);
  writer.writeByte(offsets[18], object.variant.index);
}

SeleneTheme _seleneThemeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SeleneTheme(
    category:
        _SeleneThemecategoryValueEnumMap[reader.readByteOrNull(offsets[0])] ??
            ThemeCategory.system,
    darkScheme: reader.readObjectOrNull<SerializableColorScheme>(
      offsets[1],
      SerializableColorSchemeSchema.deserialize,
      allOffsets,
    ),
    error: reader.readStringOrNull(offsets[2]),
    errorDark: reader.readStringOrNull(offsets[3]),
    id: reader.readString(offsets[4]),
    lightScheme: reader.readObjectOrNull<SerializableColorScheme>(
      offsets[5],
      SerializableColorSchemeSchema.deserialize,
      allOffsets,
    ),
    name: reader.readString(offsets[6]),
    neutral: reader.readStringOrNull(offsets[7]),
    neutralDark: reader.readStringOrNull(offsets[8]),
    neutralVariant: reader.readStringOrNull(offsets[9]),
    neutralVariantDark: reader.readStringOrNull(offsets[10]),
    primary: reader.readStringOrNull(offsets[11]),
    primaryDark: reader.readStringOrNull(offsets[12]),
    secondary: reader.readStringOrNull(offsets[13]),
    secondaryDark: reader.readStringOrNull(offsets[14]),
    selectable: reader.readBool(offsets[15]),
    tertiary: reader.readStringOrNull(offsets[16]),
    tertiaryDark: reader.readStringOrNull(offsets[17]),
    variant:
        _SeleneThemevariantValueEnumMap[reader.readByteOrNull(offsets[18])] ??
            FlexSchemeVariant.tonalSpot,
  );
  return object;
}

P _seleneThemeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_SeleneThemecategoryValueEnumMap[reader.readByteOrNull(offset)] ??
          ThemeCategory.system) as P;
    case 1:
      return (reader.readObjectOrNull<SerializableColorScheme>(
        offset,
        SerializableColorSchemeSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readObjectOrNull<SerializableColorScheme>(
        offset,
        SerializableColorSchemeSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (_SeleneThemevariantValueEnumMap[reader.readByteOrNull(offset)] ??
          FlexSchemeVariant.tonalSpot) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SeleneThemecategoryEnumValueMap = {
  'system': 0,
  'custom': 1,
  'site': 2,
  'tachiyomi': 3,
  'flex': 4,
  'hsr': 5,
};
const _SeleneThemecategoryValueEnumMap = {
  0: ThemeCategory.system,
  1: ThemeCategory.custom,
  2: ThemeCategory.site,
  3: ThemeCategory.tachiyomi,
  4: ThemeCategory.flex,
  5: ThemeCategory.hsr,
};
const _SeleneThemevariantEnumValueMap = {
  'tonalSpot': 0,
  'fidelity': 1,
  'monochrome': 2,
  'neutral': 3,
  'vibrant': 4,
  'expressive': 5,
  'content': 6,
  'rainbow': 7,
  'fruitSalad': 8,
  'material': 9,
  'material3Legacy': 10,
  'soft': 11,
  'vivid': 12,
  'vividSurfaces': 13,
  'highContrast': 14,
  'ultraContrast': 15,
  'jolly': 16,
  'vividBackground': 17,
  'oneHue': 18,
  'candyPop': 19,
  'chroma': 20,
};
const _SeleneThemevariantValueEnumMap = {
  0: FlexSchemeVariant.tonalSpot,
  1: FlexSchemeVariant.fidelity,
  2: FlexSchemeVariant.monochrome,
  3: FlexSchemeVariant.neutral,
  4: FlexSchemeVariant.vibrant,
  5: FlexSchemeVariant.expressive,
  6: FlexSchemeVariant.content,
  7: FlexSchemeVariant.rainbow,
  8: FlexSchemeVariant.fruitSalad,
  9: FlexSchemeVariant.material,
  10: FlexSchemeVariant.material3Legacy,
  11: FlexSchemeVariant.soft,
  12: FlexSchemeVariant.vivid,
  13: FlexSchemeVariant.vividSurfaces,
  14: FlexSchemeVariant.highContrast,
  15: FlexSchemeVariant.ultraContrast,
  16: FlexSchemeVariant.jolly,
  17: FlexSchemeVariant.vividBackground,
  18: FlexSchemeVariant.oneHue,
  19: FlexSchemeVariant.candyPop,
  20: FlexSchemeVariant.chroma,
};

Id _seleneThemeGetId(SeleneTheme object) {
  return object.isarID;
}

List<IsarLinkBase<dynamic>> _seleneThemeGetLinks(SeleneTheme object) {
  return [];
}

void _seleneThemeAttach(
    IsarCollection<dynamic> col, Id id, SeleneTheme object) {}

extension SeleneThemeByIndex on IsarCollection<SeleneTheme> {
  Future<SeleneTheme?> getById(String id) {
    return getByIndex(r'id', [id]);
  }

  SeleneTheme? getByIdSync(String id) {
    return getByIndexSync(r'id', [id]);
  }

  Future<bool> deleteById(String id) {
    return deleteByIndex(r'id', [id]);
  }

  bool deleteByIdSync(String id) {
    return deleteByIndexSync(r'id', [id]);
  }

  Future<List<SeleneTheme?>> getAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex(r'id', values);
  }

  List<SeleneTheme?> getAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'id', values);
  }

  Future<int> deleteAllById(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'id', values);
  }

  int deleteAllByIdSync(List<String> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'id', values);
  }

  Future<Id> putById(SeleneTheme object) {
    return putByIndex(r'id', object);
  }

  Id putByIdSync(SeleneTheme object, {bool saveLinks = true}) {
    return putByIndexSync(r'id', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllById(List<SeleneTheme> objects) {
    return putAllByIndex(r'id', objects);
  }

  List<Id> putAllByIdSync(List<SeleneTheme> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'id', objects, saveLinks: saveLinks);
  }
}

extension SeleneThemeQueryWhereSort
    on QueryBuilder<SeleneTheme, SeleneTheme, QWhere> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhere> anyIsarID() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SeleneThemeQueryWhere
    on QueryBuilder<SeleneTheme, SeleneTheme, QWhereClause> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> isarIDEqualTo(
      Id isarID) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarID,
        upper: isarID,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> isarIDNotEqualTo(
      Id isarID) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarID, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarID, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarID, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarID, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> isarIDGreaterThan(
      Id isarID,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarID, includeLower: include),
      );
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> isarIDLessThan(
      Id isarID,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarID, includeUpper: include),
      );
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> isarIDBetween(
    Id lowerIsarID,
    Id upperIsarID, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarID,
        includeLower: includeLower,
        upper: upperIsarID,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> idEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'id',
        value: [id],
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterWhereClause> idNotEqualTo(
      String id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [id],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'id',
              lower: [],
              upper: [id],
              includeUpper: false,
            ));
      }
    });
  }
}

extension SeleneThemeQueryFilter
    on QueryBuilder<SeleneTheme, SeleneTheme, QFilterCondition> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> categoryEqualTo(
      ThemeCategory value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      categoryGreaterThan(
    ThemeCategory value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      categoryLessThan(
    ThemeCategory value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> categoryBetween(
    ThemeCategory lower,
    ThemeCategory upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      darkSchemeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'darkScheme',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      darkSchemeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'darkScheme',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'error',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'error',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> errorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errorDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errorDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errorDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errorDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errorDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      errorDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errorDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> isarIDEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      isarIDGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> isarIDLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarID',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> isarIDBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarID',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      lightSchemeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lightScheme',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      lightSchemeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lightScheme',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neutral',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neutral',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neutral',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'neutral',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> neutralMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'neutral',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutral',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'neutral',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neutralDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neutralDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neutralDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'neutralDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'neutralDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'neutralDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neutralVariant',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neutralVariant',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neutralVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'neutralVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'neutralVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'neutralVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neutralVariantDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neutralVariantDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neutralVariantDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'neutralVariantDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'neutralVariantDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neutralVariantDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      neutralVariantDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'neutralVariantDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> primaryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      primaryDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      secondaryDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      selectableEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectable',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiary',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> tertiaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> tertiaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> tertiaryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiaryDark',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiaryDark',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiaryDark',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiaryDark',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      tertiaryDarkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiaryDark',
        value: '',
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> variantEqualTo(
      FlexSchemeVariant value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'variant',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition>
      variantGreaterThan(
    FlexSchemeVariant value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'variant',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> variantLessThan(
    FlexSchemeVariant value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'variant',
        value: value,
      ));
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> variantBetween(
    FlexSchemeVariant lower,
    FlexSchemeVariant upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'variant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SeleneThemeQueryObject
    on QueryBuilder<SeleneTheme, SeleneTheme, QFilterCondition> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> darkScheme(
      FilterQuery<SerializableColorScheme> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'darkScheme');
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterFilterCondition> lightScheme(
      FilterQuery<SerializableColorScheme> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lightScheme');
    });
  }
}

extension SeleneThemeQueryLinks
    on QueryBuilder<SeleneTheme, SeleneTheme, QFilterCondition> {}

extension SeleneThemeQuerySortBy
    on QueryBuilder<SeleneTheme, SeleneTheme, QSortBy> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByErrorDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByErrorDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNeutral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutral', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNeutralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutral', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNeutralDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNeutralDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByNeutralVariant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariant', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      sortByNeutralVariantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariant', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      sortByNeutralVariantDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariantDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      sortByNeutralVariantDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariantDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByPrimaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByPrimaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortBySecondary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortBySecondaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortBySecondaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      sortBySecondaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortBySelectable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectable', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortBySelectableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectable', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByTertiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByTertiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByTertiaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      sortByTertiaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByVariant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variant', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> sortByVariantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variant', Sort.desc);
    });
  }
}

extension SeleneThemeQuerySortThenBy
    on QueryBuilder<SeleneTheme, SeleneTheme, QSortThenBy> {
  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByError() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByErrorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'error', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByErrorDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByErrorDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByIsarID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarID', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByIsarIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarID', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNeutral() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutral', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNeutralDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutral', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNeutralDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNeutralDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByNeutralVariant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariant', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      thenByNeutralVariantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariant', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      thenByNeutralVariantDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariantDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      thenByNeutralVariantDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neutralVariantDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByPrimary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByPrimaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByPrimaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByPrimaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenBySecondary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenBySecondaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenBySecondaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      thenBySecondaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenBySelectable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectable', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenBySelectableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'selectable', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByTertiary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiary', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByTertiaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiary', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByTertiaryDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiaryDark', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy>
      thenByTertiaryDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tertiaryDark', Sort.desc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByVariant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variant', Sort.asc);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QAfterSortBy> thenByVariantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'variant', Sort.desc);
    });
  }
}

extension SeleneThemeQueryWhereDistinct
    on QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> {
  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category');
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByError(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'error', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByErrorDark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'errorDark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByNeutral(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neutral', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByNeutralDark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neutralDark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByNeutralVariant(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neutralVariant',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct>
      distinctByNeutralVariantDark({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neutralVariantDark',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByPrimary(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByPrimaryDark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryDark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctBySecondary(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctBySecondaryDark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondaryDark',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctBySelectable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'selectable');
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByTertiary(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tertiary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByTertiaryDark(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tertiaryDark', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SeleneTheme, SeleneTheme, QDistinct> distinctByVariant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'variant');
    });
  }
}

extension SeleneThemeQueryProperty
    on QueryBuilder<SeleneTheme, SeleneTheme, QQueryProperty> {
  QueryBuilder<SeleneTheme, int, QQueryOperations> isarIDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarID');
    });
  }

  QueryBuilder<SeleneTheme, ThemeCategory, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<SeleneTheme, SerializableColorScheme?, QQueryOperations>
      darkSchemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'darkScheme');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> errorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'error');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> errorDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'errorDark');
    });
  }

  QueryBuilder<SeleneTheme, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SeleneTheme, SerializableColorScheme?, QQueryOperations>
      lightSchemeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lightScheme');
    });
  }

  QueryBuilder<SeleneTheme, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> neutralProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neutral');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> neutralDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neutralDark');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations>
      neutralVariantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neutralVariant');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations>
      neutralVariantDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neutralVariantDark');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> primaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primary');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> primaryDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryDark');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> secondaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondary');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> secondaryDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondaryDark');
    });
  }

  QueryBuilder<SeleneTheme, bool, QQueryOperations> selectableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'selectable');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> tertiaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tertiary');
    });
  }

  QueryBuilder<SeleneTheme, String?, QQueryOperations> tertiaryDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tertiaryDark');
    });
  }

  QueryBuilder<SeleneTheme, FlexSchemeVariant, QQueryOperations>
      variantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'variant');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SerializableColorSchemeSchema = Schema(
  name: r'SerializableColorScheme',
  id: 5964122872491346747,
  properties: {
    r'brightness': PropertySchema(
      id: 0,
      name: r'brightness',
      type: IsarType.byte,
      enumMap: _SerializableColorSchemebrightnessEnumValueMap,
    ),
    r'error': PropertySchema(
      id: 1,
      name: r'error',
      type: IsarType.string,
    ),
    r'errorContainer': PropertySchema(
      id: 2,
      name: r'errorContainer',
      type: IsarType.string,
    ),
    r'inversePrimary': PropertySchema(
      id: 3,
      name: r'inversePrimary',
      type: IsarType.string,
    ),
    r'inverseSurface': PropertySchema(
      id: 4,
      name: r'inverseSurface',
      type: IsarType.string,
    ),
    r'onError': PropertySchema(
      id: 5,
      name: r'onError',
      type: IsarType.string,
    ),
    r'onErrorContainer': PropertySchema(
      id: 6,
      name: r'onErrorContainer',
      type: IsarType.string,
    ),
    r'onInverseSurface': PropertySchema(
      id: 7,
      name: r'onInverseSurface',
      type: IsarType.string,
    ),
    r'onPrimary': PropertySchema(
      id: 8,
      name: r'onPrimary',
      type: IsarType.string,
    ),
    r'onPrimaryContainer': PropertySchema(
      id: 9,
      name: r'onPrimaryContainer',
      type: IsarType.string,
    ),
    r'onPrimaryFixed': PropertySchema(
      id: 10,
      name: r'onPrimaryFixed',
      type: IsarType.string,
    ),
    r'onPrimaryFixedVariant': PropertySchema(
      id: 11,
      name: r'onPrimaryFixedVariant',
      type: IsarType.string,
    ),
    r'onSecondary': PropertySchema(
      id: 12,
      name: r'onSecondary',
      type: IsarType.string,
    ),
    r'onSecondaryContainer': PropertySchema(
      id: 13,
      name: r'onSecondaryContainer',
      type: IsarType.string,
    ),
    r'onSecondaryFixed': PropertySchema(
      id: 14,
      name: r'onSecondaryFixed',
      type: IsarType.string,
    ),
    r'onSecondaryFixedVariant': PropertySchema(
      id: 15,
      name: r'onSecondaryFixedVariant',
      type: IsarType.string,
    ),
    r'onSurface': PropertySchema(
      id: 16,
      name: r'onSurface',
      type: IsarType.string,
    ),
    r'onSurfaceVariant': PropertySchema(
      id: 17,
      name: r'onSurfaceVariant',
      type: IsarType.string,
    ),
    r'onTertiary': PropertySchema(
      id: 18,
      name: r'onTertiary',
      type: IsarType.string,
    ),
    r'onTertiaryContainer': PropertySchema(
      id: 19,
      name: r'onTertiaryContainer',
      type: IsarType.string,
    ),
    r'onTertiaryFixed': PropertySchema(
      id: 20,
      name: r'onTertiaryFixed',
      type: IsarType.string,
    ),
    r'onTertiaryFixedVariant': PropertySchema(
      id: 21,
      name: r'onTertiaryFixedVariant',
      type: IsarType.string,
    ),
    r'outline': PropertySchema(
      id: 22,
      name: r'outline',
      type: IsarType.string,
    ),
    r'outlineVariant': PropertySchema(
      id: 23,
      name: r'outlineVariant',
      type: IsarType.string,
    ),
    r'primary': PropertySchema(
      id: 24,
      name: r'primary',
      type: IsarType.string,
    ),
    r'primaryContainer': PropertySchema(
      id: 25,
      name: r'primaryContainer',
      type: IsarType.string,
    ),
    r'primaryFixed': PropertySchema(
      id: 26,
      name: r'primaryFixed',
      type: IsarType.string,
    ),
    r'primaryFixedDim': PropertySchema(
      id: 27,
      name: r'primaryFixedDim',
      type: IsarType.string,
    ),
    r'scrim': PropertySchema(
      id: 28,
      name: r'scrim',
      type: IsarType.string,
    ),
    r'secondary': PropertySchema(
      id: 29,
      name: r'secondary',
      type: IsarType.string,
    ),
    r'secondaryContainer': PropertySchema(
      id: 30,
      name: r'secondaryContainer',
      type: IsarType.string,
    ),
    r'secondaryFixed': PropertySchema(
      id: 31,
      name: r'secondaryFixed',
      type: IsarType.string,
    ),
    r'secondaryFixedDim': PropertySchema(
      id: 32,
      name: r'secondaryFixedDim',
      type: IsarType.string,
    ),
    r'shadow': PropertySchema(
      id: 33,
      name: r'shadow',
      type: IsarType.string,
    ),
    r'surface': PropertySchema(
      id: 34,
      name: r'surface',
      type: IsarType.string,
    ),
    r'surfaceBright': PropertySchema(
      id: 35,
      name: r'surfaceBright',
      type: IsarType.string,
    ),
    r'surfaceContainer': PropertySchema(
      id: 36,
      name: r'surfaceContainer',
      type: IsarType.string,
    ),
    r'surfaceContainerHigh': PropertySchema(
      id: 37,
      name: r'surfaceContainerHigh',
      type: IsarType.string,
    ),
    r'surfaceContainerHighest': PropertySchema(
      id: 38,
      name: r'surfaceContainerHighest',
      type: IsarType.string,
    ),
    r'surfaceContainerLow': PropertySchema(
      id: 39,
      name: r'surfaceContainerLow',
      type: IsarType.string,
    ),
    r'surfaceContainerLowest': PropertySchema(
      id: 40,
      name: r'surfaceContainerLowest',
      type: IsarType.string,
    ),
    r'surfaceDim': PropertySchema(
      id: 41,
      name: r'surfaceDim',
      type: IsarType.string,
    ),
    r'surfaceTint': PropertySchema(
      id: 42,
      name: r'surfaceTint',
      type: IsarType.string,
    ),
    r'tertiary': PropertySchema(
      id: 43,
      name: r'tertiary',
      type: IsarType.string,
    ),
    r'tertiaryContainer': PropertySchema(
      id: 44,
      name: r'tertiaryContainer',
      type: IsarType.string,
    ),
    r'tertiaryFixed': PropertySchema(
      id: 45,
      name: r'tertiaryFixed',
      type: IsarType.string,
    ),
    r'tertiaryFixedDim': PropertySchema(
      id: 46,
      name: r'tertiaryFixedDim',
      type: IsarType.string,
    )
  },
  estimateSize: _serializableColorSchemeEstimateSize,
  serialize: _serializableColorSchemeSerialize,
  deserialize: _serializableColorSchemeDeserialize,
  deserializeProp: _serializableColorSchemeDeserializeProp,
);

int _serializableColorSchemeEstimateSize(
  SerializableColorScheme object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.error;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.errorContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.inversePrimary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.inverseSurface;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onError;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onErrorContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onInverseSurface;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onPrimary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onPrimaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onPrimaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onPrimaryFixedVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSecondary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSecondaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSecondaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSecondaryFixedVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSurface;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onSurfaceVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onTertiary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onTertiaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onTertiaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.onTertiaryFixedVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.outline;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.outlineVariant;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.primaryFixedDim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.scrim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondaryFixedDim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shadow;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surface;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceBright;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceContainerHigh;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceContainerHighest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceContainerLow;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceContainerLowest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceDim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.surfaceTint;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiaryContainer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiaryFixed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tertiaryFixedDim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _serializableColorSchemeSerialize(
  SerializableColorScheme object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.brightness.index);
  writer.writeString(offsets[1], object.error);
  writer.writeString(offsets[2], object.errorContainer);
  writer.writeString(offsets[3], object.inversePrimary);
  writer.writeString(offsets[4], object.inverseSurface);
  writer.writeString(offsets[5], object.onError);
  writer.writeString(offsets[6], object.onErrorContainer);
  writer.writeString(offsets[7], object.onInverseSurface);
  writer.writeString(offsets[8], object.onPrimary);
  writer.writeString(offsets[9], object.onPrimaryContainer);
  writer.writeString(offsets[10], object.onPrimaryFixed);
  writer.writeString(offsets[11], object.onPrimaryFixedVariant);
  writer.writeString(offsets[12], object.onSecondary);
  writer.writeString(offsets[13], object.onSecondaryContainer);
  writer.writeString(offsets[14], object.onSecondaryFixed);
  writer.writeString(offsets[15], object.onSecondaryFixedVariant);
  writer.writeString(offsets[16], object.onSurface);
  writer.writeString(offsets[17], object.onSurfaceVariant);
  writer.writeString(offsets[18], object.onTertiary);
  writer.writeString(offsets[19], object.onTertiaryContainer);
  writer.writeString(offsets[20], object.onTertiaryFixed);
  writer.writeString(offsets[21], object.onTertiaryFixedVariant);
  writer.writeString(offsets[22], object.outline);
  writer.writeString(offsets[23], object.outlineVariant);
  writer.writeString(offsets[24], object.primary);
  writer.writeString(offsets[25], object.primaryContainer);
  writer.writeString(offsets[26], object.primaryFixed);
  writer.writeString(offsets[27], object.primaryFixedDim);
  writer.writeString(offsets[28], object.scrim);
  writer.writeString(offsets[29], object.secondary);
  writer.writeString(offsets[30], object.secondaryContainer);
  writer.writeString(offsets[31], object.secondaryFixed);
  writer.writeString(offsets[32], object.secondaryFixedDim);
  writer.writeString(offsets[33], object.shadow);
  writer.writeString(offsets[34], object.surface);
  writer.writeString(offsets[35], object.surfaceBright);
  writer.writeString(offsets[36], object.surfaceContainer);
  writer.writeString(offsets[37], object.surfaceContainerHigh);
  writer.writeString(offsets[38], object.surfaceContainerHighest);
  writer.writeString(offsets[39], object.surfaceContainerLow);
  writer.writeString(offsets[40], object.surfaceContainerLowest);
  writer.writeString(offsets[41], object.surfaceDim);
  writer.writeString(offsets[42], object.surfaceTint);
  writer.writeString(offsets[43], object.tertiary);
  writer.writeString(offsets[44], object.tertiaryContainer);
  writer.writeString(offsets[45], object.tertiaryFixed);
  writer.writeString(offsets[46], object.tertiaryFixedDim);
}

SerializableColorScheme _serializableColorSchemeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SerializableColorScheme(
    brightness: _SerializableColorSchemebrightnessValueEnumMap[
            reader.readByteOrNull(offsets[0])] ??
        Brightness.light,
    error: reader.readStringOrNull(offsets[1]),
    errorContainer: reader.readStringOrNull(offsets[2]),
    inversePrimary: reader.readStringOrNull(offsets[3]),
    inverseSurface: reader.readStringOrNull(offsets[4]),
    onError: reader.readStringOrNull(offsets[5]),
    onErrorContainer: reader.readStringOrNull(offsets[6]),
    onInverseSurface: reader.readStringOrNull(offsets[7]),
    onPrimary: reader.readStringOrNull(offsets[8]),
    onPrimaryContainer: reader.readStringOrNull(offsets[9]),
    onPrimaryFixed: reader.readStringOrNull(offsets[10]),
    onPrimaryFixedVariant: reader.readStringOrNull(offsets[11]),
    onSecondary: reader.readStringOrNull(offsets[12]),
    onSecondaryContainer: reader.readStringOrNull(offsets[13]),
    onSecondaryFixed: reader.readStringOrNull(offsets[14]),
    onSecondaryFixedVariant: reader.readStringOrNull(offsets[15]),
    onSurface: reader.readStringOrNull(offsets[16]),
    onSurfaceVariant: reader.readStringOrNull(offsets[17]),
    onTertiary: reader.readStringOrNull(offsets[18]),
    onTertiaryContainer: reader.readStringOrNull(offsets[19]),
    onTertiaryFixed: reader.readStringOrNull(offsets[20]),
    onTertiaryFixedVariant: reader.readStringOrNull(offsets[21]),
    outline: reader.readStringOrNull(offsets[22]),
    outlineVariant: reader.readStringOrNull(offsets[23]),
    primary: reader.readStringOrNull(offsets[24]),
    primaryContainer: reader.readStringOrNull(offsets[25]),
    primaryFixed: reader.readStringOrNull(offsets[26]),
    primaryFixedDim: reader.readStringOrNull(offsets[27]),
    scrim: reader.readStringOrNull(offsets[28]),
    secondary: reader.readStringOrNull(offsets[29]),
    secondaryContainer: reader.readStringOrNull(offsets[30]),
    secondaryFixed: reader.readStringOrNull(offsets[31]),
    secondaryFixedDim: reader.readStringOrNull(offsets[32]),
    shadow: reader.readStringOrNull(offsets[33]),
    surface: reader.readStringOrNull(offsets[34]),
    surfaceBright: reader.readStringOrNull(offsets[35]),
    surfaceContainer: reader.readStringOrNull(offsets[36]),
    surfaceContainerHigh: reader.readStringOrNull(offsets[37]),
    surfaceContainerHighest: reader.readStringOrNull(offsets[38]),
    surfaceContainerLow: reader.readStringOrNull(offsets[39]),
    surfaceContainerLowest: reader.readStringOrNull(offsets[40]),
    surfaceDim: reader.readStringOrNull(offsets[41]),
    surfaceTint: reader.readStringOrNull(offsets[42]),
    tertiary: reader.readStringOrNull(offsets[43]),
    tertiaryContainer: reader.readStringOrNull(offsets[44]),
    tertiaryFixed: reader.readStringOrNull(offsets[45]),
    tertiaryFixedDim: reader.readStringOrNull(offsets[46]),
  );
  return object;
}

P _serializableColorSchemeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_SerializableColorSchemebrightnessValueEnumMap[
              reader.readByteOrNull(offset)] ??
          Brightness.light) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readStringOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    case 46:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SerializableColorSchemebrightnessEnumValueMap = {
  'dark': 0,
  'light': 1,
};
const _SerializableColorSchemebrightnessValueEnumMap = {
  0: Brightness.dark,
  1: Brightness.light,
};

extension SerializableColorSchemeQueryFilter on QueryBuilder<
    SerializableColorScheme, SerializableColorScheme, QFilterCondition> {
  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> brightnessEqualTo(Brightness value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brightness',
        value: value,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> brightnessGreaterThan(
    Brightness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brightness',
        value: value,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> brightnessLessThan(
    Brightness value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brightness',
        value: value,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> brightnessBetween(
    Brightness lower,
    Brightness upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brightness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'error',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'error',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      errorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'error',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      errorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'error',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'error',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errorContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errorContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errorContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      errorContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      errorContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errorContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> errorContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errorContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'inversePrimary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'inversePrimary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inversePrimary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      inversePrimaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inversePrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      inversePrimaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inversePrimary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inversePrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inversePrimaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inversePrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'inverseSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'inverseSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inverseSurface',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      inverseSurfaceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      inverseSurfaceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inverseSurface',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inverseSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> inverseSurfaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inverseSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onError',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onError',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onError',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onErrorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onError',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onErrorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onError',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onError',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onError',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onErrorContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onErrorContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onErrorContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onErrorContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onErrorContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onErrorContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onErrorContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onErrorContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onErrorContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onErrorContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onInverseSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onInverseSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onInverseSurface',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onInverseSurfaceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onInverseSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onInverseSurfaceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onInverseSurface',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onInverseSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onInverseSurfaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onInverseSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onPrimary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onPrimary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onPrimary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onPrimary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onPrimary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onPrimary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onPrimaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onPrimaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onPrimaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onPrimaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onPrimaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onPrimaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onPrimaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onPrimaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onPrimaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onPrimaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onPrimaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onPrimaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onPrimaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onPrimaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onPrimaryFixedVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryFixedVariantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onPrimaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onPrimaryFixedVariantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onPrimaryFixedVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onPrimaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onPrimaryFixedVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onPrimaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSecondary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSecondary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSecondary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSecondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSecondary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSecondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSecondaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSecondaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSecondaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSecondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSecondaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSecondaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSecondaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSecondaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSecondaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSecondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSecondaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSecondaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSecondaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSecondaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSecondaryFixedVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryFixedVariantContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSecondaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSecondaryFixedVariantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSecondaryFixedVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSecondaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSecondaryFixedVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSecondaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSurface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSurface',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSurfaceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSurface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSurfaceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSurface',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSurface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onSurfaceVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onSurfaceVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onSurfaceVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSurfaceVariantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onSurfaceVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onSurfaceVariantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onSurfaceVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onSurfaceVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onSurfaceVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onSurfaceVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onTertiary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onTertiary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onTertiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onTertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onTertiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onTertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onTertiaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onTertiaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onTertiaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onTertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onTertiaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onTertiaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onTertiaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onTertiaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onTertiaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onTertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onTertiaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onTertiaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onTertiaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onTertiaryFixedVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onTertiaryFixedVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryFixedVariantContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onTertiaryFixedVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      onTertiaryFixedVariantMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onTertiaryFixedVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onTertiaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> onTertiaryFixedVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onTertiaryFixedVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outline',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outline',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outline',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      outlineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outline',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      outlineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outline',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outline',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outline',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outlineVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outlineVariant',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outlineVariant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      outlineVariantContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outlineVariant',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      outlineVariantMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outlineVariant',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outlineVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> outlineVariantIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outlineVariant',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'primaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'primaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryFixedDim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryFixedDimContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      primaryFixedDimMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryFixedDim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryFixedDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> primaryFixedDimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryFixedDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'scrim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'scrim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'scrim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      scrimContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'scrim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      scrimMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'scrim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'scrim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> scrimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'scrim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryFixedDim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryFixedDimContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      secondaryFixedDimMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondaryFixedDim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryFixedDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> secondaryFixedDimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondaryFixedDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shadow',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shadow',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shadow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      shadowContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shadow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      shadowMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shadow',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shadow',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> shadowIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shadow',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surface',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surface',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surface',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surface',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surface',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceBright',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceBright',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceBright',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceBrightContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceBright',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceBrightMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceBright',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceBright',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceBrightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceBright',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceContainerHigh',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceContainerHigh',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceContainerHigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerHighContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceContainerHigh',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerHighMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceContainerHigh',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerHigh',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceContainerHigh',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceContainerHighest',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceContainerHighest',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceContainerHighest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerHighestContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceContainerHighest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerHighestMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceContainerHighest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerHighest',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerHighestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceContainerHighest',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceContainerLow',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceContainerLow',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceContainerLow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerLowContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceContainerLow',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerLowMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceContainerLow',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerLow',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceContainerLow',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceContainerLowest',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceContainerLowest',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceContainerLowest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerLowestContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceContainerLowest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceContainerLowestMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceContainerLowest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceContainerLowest',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceContainerLowestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceContainerLowest',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceDim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceDimContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceDimMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceDim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceDimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'surfaceTint',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'surfaceTint',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'surfaceTint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceTintContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'surfaceTint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      surfaceTintMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'surfaceTint',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'surfaceTint',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> surfaceTintIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'surfaceTint',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiary',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiary',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiaryContainer',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiaryContainer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryContainerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiaryContainer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryContainerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiaryContainer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryContainerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiaryContainer',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiaryFixed',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiaryFixed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryFixedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiaryFixed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryFixedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiaryFixed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiaryFixed',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tertiaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tertiaryFixedDim',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tertiaryFixedDim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryFixedDimContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tertiaryFixedDim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
          QAfterFilterCondition>
      tertiaryFixedDimMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tertiaryFixedDim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tertiaryFixedDim',
        value: '',
      ));
    });
  }

  QueryBuilder<SerializableColorScheme, SerializableColorScheme,
      QAfterFilterCondition> tertiaryFixedDimIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tertiaryFixedDim',
        value: '',
      ));
    });
  }
}

extension SerializableColorSchemeQueryObject on QueryBuilder<
    SerializableColorScheme, SerializableColorScheme, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeleneThemeImpl _$$SeleneThemeImplFromJson(Map<String, dynamic> json) =>
    _$SeleneThemeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: $enumDecodeNullable(_$ThemeCategoryEnumMap, json['category']) ??
          ThemeCategory.custom,
      primary: json['primary'] as String?,
      secondary: json['secondary'] as String?,
      tertiary: json['tertiary'] as String?,
      error: json['error'] as String?,
      neutral: json['neutral'] as String?,
      neutralVariant: json['neutralVariant'] as String?,
      primaryDark: json['primaryDark'] as String?,
      secondaryDark: json['secondaryDark'] as String?,
      tertiaryDark: json['tertiaryDark'] as String?,
      errorDark: json['errorDark'] as String?,
      neutralDark: json['neutralDark'] as String?,
      neutralVariantDark: json['neutralVariantDark'] as String?,
      lightScheme: json['lightScheme'] == null
          ? null
          : SerializableColorScheme.fromJson(
              json['lightScheme'] as Map<String, dynamic>),
      darkScheme: json['darkScheme'] == null
          ? null
          : SerializableColorScheme.fromJson(
              json['darkScheme'] as Map<String, dynamic>),
      variant:
          $enumDecodeNullable(_$FlexSchemeVariantEnumMap, json['variant']) ??
              FlexSchemeVariant.tonalSpot,
      selectable: json['selectable'] as bool? ?? true,
    );

Map<String, dynamic> _$$SeleneThemeImplToJson(_$SeleneThemeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$ThemeCategoryEnumMap[instance.category]!,
      'primary': instance.primary,
      'secondary': instance.secondary,
      'tertiary': instance.tertiary,
      'error': instance.error,
      'neutral': instance.neutral,
      'neutralVariant': instance.neutralVariant,
      'primaryDark': instance.primaryDark,
      'secondaryDark': instance.secondaryDark,
      'tertiaryDark': instance.tertiaryDark,
      'errorDark': instance.errorDark,
      'neutralDark': instance.neutralDark,
      'neutralVariantDark': instance.neutralVariantDark,
      'lightScheme': instance.lightScheme,
      'darkScheme': instance.darkScheme,
      'variant': _$FlexSchemeVariantEnumMap[instance.variant]!,
      'selectable': instance.selectable,
    };

const _$ThemeCategoryEnumMap = {
  ThemeCategory.system: 'system',
  ThemeCategory.custom: 'custom',
  ThemeCategory.site: 'site',
  ThemeCategory.tachiyomi: 'tachiyomi',
  ThemeCategory.flex: 'flex',
  ThemeCategory.hsr: 'hsr',
};

const _$FlexSchemeVariantEnumMap = {
  FlexSchemeVariant.tonalSpot: 'tonalSpot',
  FlexSchemeVariant.fidelity: 'fidelity',
  FlexSchemeVariant.monochrome: 'monochrome',
  FlexSchemeVariant.neutral: 'neutral',
  FlexSchemeVariant.vibrant: 'vibrant',
  FlexSchemeVariant.expressive: 'expressive',
  FlexSchemeVariant.content: 'content',
  FlexSchemeVariant.rainbow: 'rainbow',
  FlexSchemeVariant.fruitSalad: 'fruitSalad',
  FlexSchemeVariant.material: 'material',
  FlexSchemeVariant.material3Legacy: 'material3Legacy',
  FlexSchemeVariant.soft: 'soft',
  FlexSchemeVariant.vivid: 'vivid',
  FlexSchemeVariant.vividSurfaces: 'vividSurfaces',
  FlexSchemeVariant.highContrast: 'highContrast',
  FlexSchemeVariant.ultraContrast: 'ultraContrast',
  FlexSchemeVariant.jolly: 'jolly',
  FlexSchemeVariant.vividBackground: 'vividBackground',
  FlexSchemeVariant.oneHue: 'oneHue',
  FlexSchemeVariant.candyPop: 'candyPop',
  FlexSchemeVariant.chroma: 'chroma',
};

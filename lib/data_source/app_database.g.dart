// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class Lecturer extends Table with TableInfo<Lecturer, LecturerData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Lecturer(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _scientificRankMeta =
      const VerificationMeta('scientificRank');
  late final GeneratedColumn<String> scientificRank = GeneratedColumn<String>(
      'scientific_rank', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _majorSpecializationMeta =
      const VerificationMeta('majorSpecialization');
  late final GeneratedColumn<String> majorSpecialization =
      GeneratedColumn<String>('major_specialization', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  static const VerificationMeta _minorSpecializationMeta =
      const VerificationMeta('minorSpecialization');
  late final GeneratedColumn<String> minorSpecialization =
      GeneratedColumn<String>('minor_specialization', aliasedName, false,
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  static const VerificationMeta _workPlaceMeta =
      const VerificationMeta('workPlace');
  late final GeneratedColumn<String> workPlace = GeneratedColumn<String>(
      'work_place', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fullName,
        scientificRank,
        majorSpecialization,
        minorSpecialization,
        workPlace,
        phoneNumber,
        email
      ];
  @override
  String get aliasedName => _alias ?? 'lecturer';
  @override
  String get actualTableName => 'lecturer';
  @override
  VerificationContext validateIntegrity(Insertable<LecturerData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('scientific_rank')) {
      context.handle(
          _scientificRankMeta,
          scientificRank.isAcceptableOrUnknown(
              data['scientific_rank']!, _scientificRankMeta));
    } else if (isInserting) {
      context.missing(_scientificRankMeta);
    }
    if (data.containsKey('major_specialization')) {
      context.handle(
          _majorSpecializationMeta,
          majorSpecialization.isAcceptableOrUnknown(
              data['major_specialization']!, _majorSpecializationMeta));
    } else if (isInserting) {
      context.missing(_majorSpecializationMeta);
    }
    if (data.containsKey('minor_specialization')) {
      context.handle(
          _minorSpecializationMeta,
          minorSpecialization.isAcceptableOrUnknown(
              data['minor_specialization']!, _minorSpecializationMeta));
    } else if (isInserting) {
      context.missing(_minorSpecializationMeta);
    }
    if (data.containsKey('work_place')) {
      context.handle(_workPlaceMeta,
          workPlace.isAcceptableOrUnknown(data['work_place']!, _workPlaceMeta));
    } else if (isInserting) {
      context.missing(_workPlaceMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LecturerData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LecturerData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      scientificRank: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}scientific_rank'])!,
      majorSpecialization: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}major_specialization'])!,
      minorSpecialization: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}minor_specialization'])!,
      workPlace: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}work_place'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
    );
  }

  @override
  Lecturer createAlias(String alias) {
    return Lecturer(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class LecturerData extends DataClass implements Insertable<LecturerData> {
  final int id;
  final String fullName;
  final String scientificRank;
  final String majorSpecialization;
  final String minorSpecialization;
  final String workPlace;
  final String phoneNumber;
  final String email;
  const LecturerData(
      {required this.id,
      required this.fullName,
      required this.scientificRank,
      required this.majorSpecialization,
      required this.minorSpecialization,
      required this.workPlace,
      required this.phoneNumber,
      required this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['full_name'] = Variable<String>(fullName);
    map['scientific_rank'] = Variable<String>(scientificRank);
    map['major_specialization'] = Variable<String>(majorSpecialization);
    map['minor_specialization'] = Variable<String>(minorSpecialization);
    map['work_place'] = Variable<String>(workPlace);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['email'] = Variable<String>(email);
    return map;
  }

  LecturerCompanion toCompanion(bool nullToAbsent) {
    return LecturerCompanion(
      id: Value(id),
      fullName: Value(fullName),
      scientificRank: Value(scientificRank),
      majorSpecialization: Value(majorSpecialization),
      minorSpecialization: Value(minorSpecialization),
      workPlace: Value(workPlace),
      phoneNumber: Value(phoneNumber),
      email: Value(email),
    );
  }

  factory LecturerData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LecturerData(
      id: serializer.fromJson<int>(json['id']),
      fullName: serializer.fromJson<String>(json['full_name']),
      scientificRank: serializer.fromJson<String>(json['scientific_rank']),
      majorSpecialization:
          serializer.fromJson<String>(json['major_specialization']),
      minorSpecialization:
          serializer.fromJson<String>(json['minor_specialization']),
      workPlace: serializer.fromJson<String>(json['work_place']),
      phoneNumber: serializer.fromJson<String>(json['phone_number']),
      email: serializer.fromJson<String>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'full_name': serializer.toJson<String>(fullName),
      'scientific_rank': serializer.toJson<String>(scientificRank),
      'major_specialization': serializer.toJson<String>(majorSpecialization),
      'minor_specialization': serializer.toJson<String>(minorSpecialization),
      'work_place': serializer.toJson<String>(workPlace),
      'phone_number': serializer.toJson<String>(phoneNumber),
      'email': serializer.toJson<String>(email),
    };
  }

  LecturerData copyWith(
          {int? id,
          String? fullName,
          String? scientificRank,
          String? majorSpecialization,
          String? minorSpecialization,
          String? workPlace,
          String? phoneNumber,
          String? email}) =>
      LecturerData(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        scientificRank: scientificRank ?? this.scientificRank,
        majorSpecialization: majorSpecialization ?? this.majorSpecialization,
        minorSpecialization: minorSpecialization ?? this.minorSpecialization,
        workPlace: workPlace ?? this.workPlace,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
      );
  @override
  String toString() {
    return (StringBuffer('LecturerData(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('scientificRank: $scientificRank, ')
          ..write('majorSpecialization: $majorSpecialization, ')
          ..write('minorSpecialization: $minorSpecialization, ')
          ..write('workPlace: $workPlace, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, scientificRank,
      majorSpecialization, minorSpecialization, workPlace, phoneNumber, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LecturerData &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.scientificRank == this.scientificRank &&
          other.majorSpecialization == this.majorSpecialization &&
          other.minorSpecialization == this.minorSpecialization &&
          other.workPlace == this.workPlace &&
          other.phoneNumber == this.phoneNumber &&
          other.email == this.email);
}

class LecturerCompanion extends UpdateCompanion<LecturerData> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String> scientificRank;
  final Value<String> majorSpecialization;
  final Value<String> minorSpecialization;
  final Value<String> workPlace;
  final Value<String> phoneNumber;
  final Value<String> email;
  const LecturerCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.scientificRank = const Value.absent(),
    this.majorSpecialization = const Value.absent(),
    this.minorSpecialization = const Value.absent(),
    this.workPlace = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.email = const Value.absent(),
  });
  LecturerCompanion.insert({
    this.id = const Value.absent(),
    required String fullName,
    required String scientificRank,
    required String majorSpecialization,
    required String minorSpecialization,
    required String workPlace,
    required String phoneNumber,
    required String email,
  })  : fullName = Value(fullName),
        scientificRank = Value(scientificRank),
        majorSpecialization = Value(majorSpecialization),
        minorSpecialization = Value(minorSpecialization),
        workPlace = Value(workPlace),
        phoneNumber = Value(phoneNumber),
        email = Value(email);
  static Insertable<LecturerData> custom({
    Expression<int>? id,
    Expression<String>? fullName,
    Expression<String>? scientificRank,
    Expression<String>? majorSpecialization,
    Expression<String>? minorSpecialization,
    Expression<String>? workPlace,
    Expression<String>? phoneNumber,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (scientificRank != null) 'scientific_rank': scientificRank,
      if (majorSpecialization != null)
        'major_specialization': majorSpecialization,
      if (minorSpecialization != null)
        'minor_specialization': minorSpecialization,
      if (workPlace != null) 'work_place': workPlace,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (email != null) 'email': email,
    });
  }

  LecturerCompanion copyWith(
      {Value<int>? id,
      Value<String>? fullName,
      Value<String>? scientificRank,
      Value<String>? majorSpecialization,
      Value<String>? minorSpecialization,
      Value<String>? workPlace,
      Value<String>? phoneNumber,
      Value<String>? email}) {
    return LecturerCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      scientificRank: scientificRank ?? this.scientificRank,
      majorSpecialization: majorSpecialization ?? this.majorSpecialization,
      minorSpecialization: minorSpecialization ?? this.minorSpecialization,
      workPlace: workPlace ?? this.workPlace,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (scientificRank.present) {
      map['scientific_rank'] = Variable<String>(scientificRank.value);
    }
    if (majorSpecialization.present) {
      map['major_specialization'] = Variable<String>(majorSpecialization.value);
    }
    if (minorSpecialization.present) {
      map['minor_specialization'] = Variable<String>(minorSpecialization.value);
    }
    if (workPlace.present) {
      map['work_place'] = Variable<String>(workPlace.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LecturerCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('scientificRank: $scientificRank, ')
          ..write('majorSpecialization: $majorSpecialization, ')
          ..write('minorSpecialization: $minorSpecialization, ')
          ..write('workPlace: $workPlace, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final Lecturer lecturer = Lecturer(this);
  Selectable<LecturerData> getlecturer(int id) {
    return customSelect('SELECT * FROM lecturer WHERE lecturer.id = ?1',
        variables: [
          Variable<int>(id)
        ],
        readsFrom: {
          lecturer,
        }).asyncMap(lecturer.mapFromRow);
  }

  Selectable<LecturerData> watchlecturer(String search) {
    return customSelect(
        'SELECT * FROM lecturer WHERE lecturer.full_name LIKE ?1',
        variables: [
          Variable<String>(search)
        ],
        readsFrom: {
          lecturer,
        }).asyncMap(lecturer.mapFromRow);
  }

  Future<int> deleteLecturer(int id) {
    return customUpdate(
      'DELETE FROM lecturer WHERE lecturer.id = ?1',
      variables: [Variable<int>(id)],
      updates: {lecturer},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [lecturer];
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDatabaseProviderHash() =>
    r'277370e83c00f9c90a82c58755d266d65b097dc9';

/// See also [appDatabaseProvider].
@ProviderFor(appDatabaseProvider)
final appDatabaseProviderProvider = Provider<AppDatabase>.internal(
  appDatabaseProvider,
  name: r'appDatabaseProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appDatabaseProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppDatabaseProviderRef = ProviderRef<AppDatabase>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions

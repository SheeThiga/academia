// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _firstnameMeta =
      const VerificationMeta('firstname');
  @override
  late final GeneratedColumn<String> firstname = GeneratedColumn<String>(
      'firstname', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _othernamesMeta =
      const VerificationMeta('othernames');
  @override
  late final GeneratedColumn<String> othernames = GeneratedColumn<String>(
      'othernames', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 10, maxTextLength: 15),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
      'gender', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
      'active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("active" IN (0, 1))'),
      defaultValue: const Constant(true));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedAtMeta =
      const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<DateTime> dateOfBirth = GeneratedColumn<DateTime>(
      'date_of_birth', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _nationalIdMeta =
      const VerificationMeta('nationalId');
  @override
  late final GeneratedColumn<String> nationalId = GeneratedColumn<String>(
      'national_id', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 20),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        username,
        firstname,
        othernames,
        phone,
        email,
        gender,
        active,
        createdAt,
        modifiedAt,
        dateOfBirth,
        nationalId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('firstname')) {
      context.handle(_firstnameMeta,
          firstname.isAcceptableOrUnknown(data['firstname']!, _firstnameMeta));
    } else if (isInserting) {
      context.missing(_firstnameMeta);
    }
    if (data.containsKey('othernames')) {
      context.handle(
          _othernamesMeta,
          othernames.isAcceptableOrUnknown(
              data['othernames']!, _othernamesMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('gender')) {
      context.handle(_genderMeta,
          gender.isAcceptableOrUnknown(data['gender']!, _genderMeta));
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    } else if (isInserting) {
      context.missing(_modifiedAtMeta);
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    } else if (isInserting) {
      context.missing(_dateOfBirthMeta);
    }
    if (data.containsKey('national_id')) {
      context.handle(
          _nationalIdMeta,
          nationalId.isAcceptableOrUnknown(
              data['national_id']!, _nationalIdMeta));
    } else if (isInserting) {
      context.missing(_nationalIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      firstname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firstname'])!,
      othernames: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}othernames']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      gender: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])!,
      active: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}active'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      modifiedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at'])!,
      dateOfBirth: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}date_of_birth'])!,
      nationalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}national_id'])!,
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final String id;
  final String username;
  final String firstname;
  final String? othernames;
  final String phone;
  final String? email;
  final String gender;
  final bool active;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final DateTime dateOfBirth;
  final String nationalId;
  const UserData(
      {required this.id,
      required this.username,
      required this.firstname,
      this.othernames,
      required this.phone,
      this.email,
      required this.gender,
      required this.active,
      required this.createdAt,
      required this.modifiedAt,
      required this.dateOfBirth,
      required this.nationalId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['username'] = Variable<String>(username);
    map['firstname'] = Variable<String>(firstname);
    if (!nullToAbsent || othernames != null) {
      map['othernames'] = Variable<String>(othernames);
    }
    map['phone'] = Variable<String>(phone);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    map['gender'] = Variable<String>(gender);
    map['active'] = Variable<bool>(active);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    map['date_of_birth'] = Variable<DateTime>(dateOfBirth);
    map['national_id'] = Variable<String>(nationalId);
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      username: Value(username),
      firstname: Value(firstname),
      othernames: othernames == null && nullToAbsent
          ? const Value.absent()
          : Value(othernames),
      phone: Value(phone),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      gender: Value(gender),
      active: Value(active),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      dateOfBirth: Value(dateOfBirth),
      nationalId: Value(nationalId),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<String>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      firstname: serializer.fromJson<String>(json['firstname']),
      othernames: serializer.fromJson<String?>(json['othernames']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      gender: serializer.fromJson<String>(json['gender']),
      active: serializer.fromJson<bool>(json['active']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      modifiedAt: serializer.fromJson<DateTime>(json['modified_at']),
      dateOfBirth: serializer.fromJson<DateTime>(json['date_of_birth']),
      nationalId: serializer.fromJson<String>(json['national_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'username': serializer.toJson<String>(username),
      'firstname': serializer.toJson<String>(firstname),
      'othernames': serializer.toJson<String?>(othernames),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String?>(email),
      'gender': serializer.toJson<String>(gender),
      'active': serializer.toJson<bool>(active),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'modified_at': serializer.toJson<DateTime>(modifiedAt),
      'date_of_birth': serializer.toJson<DateTime>(dateOfBirth),
      'national_id': serializer.toJson<String>(nationalId),
    };
  }

  UserData copyWith(
          {String? id,
          String? username,
          String? firstname,
          Value<String?> othernames = const Value.absent(),
          String? phone,
          Value<String?> email = const Value.absent(),
          String? gender,
          bool? active,
          DateTime? createdAt,
          DateTime? modifiedAt,
          DateTime? dateOfBirth,
          String? nationalId}) =>
      UserData(
        id: id ?? this.id,
        username: username ?? this.username,
        firstname: firstname ?? this.firstname,
        othernames: othernames.present ? othernames.value : this.othernames,
        phone: phone ?? this.phone,
        email: email.present ? email.value : this.email,
        gender: gender ?? this.gender,
        active: active ?? this.active,
        createdAt: createdAt ?? this.createdAt,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        nationalId: nationalId ?? this.nationalId,
      );
  UserData copyWithCompanion(UserCompanion data) {
    return UserData(
      id: data.id.present ? data.id.value : this.id,
      username: data.username.present ? data.username.value : this.username,
      firstname: data.firstname.present ? data.firstname.value : this.firstname,
      othernames:
          data.othernames.present ? data.othernames.value : this.othernames,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      gender: data.gender.present ? data.gender.value : this.gender,
      active: data.active.present ? data.active.value : this.active,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      dateOfBirth:
          data.dateOfBirth.present ? data.dateOfBirth.value : this.dateOfBirth,
      nationalId:
          data.nationalId.present ? data.nationalId.value : this.nationalId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('firstname: $firstname, ')
          ..write('othernames: $othernames, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('gender: $gender, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('nationalId: $nationalId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, username, firstname, othernames, phone,
      email, gender, active, createdAt, modifiedAt, dateOfBirth, nationalId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.username == this.username &&
          other.firstname == this.firstname &&
          other.othernames == this.othernames &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.gender == this.gender &&
          other.active == this.active &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.dateOfBirth == this.dateOfBirth &&
          other.nationalId == this.nationalId);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<String> id;
  final Value<String> username;
  final Value<String> firstname;
  final Value<String?> othernames;
  final Value<String> phone;
  final Value<String?> email;
  final Value<String> gender;
  final Value<bool> active;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<DateTime> dateOfBirth;
  final Value<String> nationalId;
  final Value<int> rowid;
  const UserCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.firstname = const Value.absent(),
    this.othernames = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.gender = const Value.absent(),
    this.active = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.nationalId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCompanion.insert({
    required String id,
    required String username,
    required String firstname,
    this.othernames = const Value.absent(),
    required String phone,
    this.email = const Value.absent(),
    required String gender,
    this.active = const Value.absent(),
    required DateTime createdAt,
    required DateTime modifiedAt,
    required DateTime dateOfBirth,
    required String nationalId,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        username = Value(username),
        firstname = Value(firstname),
        phone = Value(phone),
        gender = Value(gender),
        createdAt = Value(createdAt),
        modifiedAt = Value(modifiedAt),
        dateOfBirth = Value(dateOfBirth),
        nationalId = Value(nationalId);
  static Insertable<UserData> custom({
    Expression<String>? id,
    Expression<String>? username,
    Expression<String>? firstname,
    Expression<String>? othernames,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? gender,
    Expression<bool>? active,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<DateTime>? dateOfBirth,
    Expression<String>? nationalId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (firstname != null) 'firstname': firstname,
      if (othernames != null) 'othernames': othernames,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (gender != null) 'gender': gender,
      if (active != null) 'active': active,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (nationalId != null) 'national_id': nationalId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCompanion copyWith(
      {Value<String>? id,
      Value<String>? username,
      Value<String>? firstname,
      Value<String?>? othernames,
      Value<String>? phone,
      Value<String?>? email,
      Value<String>? gender,
      Value<bool>? active,
      Value<DateTime>? createdAt,
      Value<DateTime>? modifiedAt,
      Value<DateTime>? dateOfBirth,
      Value<String>? nationalId,
      Value<int>? rowid}) {
    return UserCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      firstname: firstname ?? this.firstname,
      othernames: othernames ?? this.othernames,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      gender: gender ?? this.gender,
      active: active ?? this.active,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      nationalId: nationalId ?? this.nationalId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (firstname.present) {
      map['firstname'] = Variable<String>(firstname.value);
    }
    if (othernames.present) {
      map['othernames'] = Variable<String>(othernames.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<DateTime>(dateOfBirth.value);
    }
    if (nationalId.present) {
      map['national_id'] = Variable<String>(nationalId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('firstname: $firstname, ')
          ..write('othernames: $othernames, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('gender: $gender, ')
          ..write('active: $active, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('nationalId: $nationalId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserProfileTable extends UserProfile
    with TableInfo<$UserProfileTable, UserProfileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfileTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  static const VerificationMeta _bioMeta = const VerificationMeta('bio');
  @override
  late final GeneratedColumn<String> bio = GeneratedColumn<String>(
      'bio', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _vibePointsMeta =
      const VerificationMeta('vibePoints');
  @override
  late final GeneratedColumn<int> vibePoints = GeneratedColumn<int>(
      'vibe_points', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _profilePictureUrlMeta =
      const VerificationMeta('profilePictureUrl');
  @override
  late final GeneratedColumn<String> profilePictureUrl =
      GeneratedColumn<String>('profile_picture_url', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastSeenMeta =
      const VerificationMeta('lastSeen');
  @override
  late final GeneratedColumn<DateTime> lastSeen = GeneratedColumn<DateTime>(
      'last_seen', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _modifiedAtMeta =
      const VerificationMeta('modifiedAt');
  @override
  late final GeneratedColumn<DateTime> modifiedAt = GeneratedColumn<DateTime>(
      'modified_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _admissionNumberMeta =
      const VerificationMeta('admissionNumber');
  @override
  late final GeneratedColumn<String> admissionNumber = GeneratedColumn<String>(
      'admission_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _campusMeta = const VerificationMeta('campus');
  @override
  late final GeneratedColumn<String> campus = GeneratedColumn<String>(
      'campus', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("athi"));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        bio,
        vibePoints,
        profilePictureUrl,
        lastSeen,
        createdAt,
        modifiedAt,
        admissionNumber,
        campus
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profile';
  @override
  VerificationContext validateIntegrity(Insertable<UserProfileData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('bio')) {
      context.handle(
          _bioMeta, bio.isAcceptableOrUnknown(data['bio']!, _bioMeta));
    }
    if (data.containsKey('vibe_points')) {
      context.handle(
          _vibePointsMeta,
          vibePoints.isAcceptableOrUnknown(
              data['vibe_points']!, _vibePointsMeta));
    }
    if (data.containsKey('profile_picture_url')) {
      context.handle(
          _profilePictureUrlMeta,
          profilePictureUrl.isAcceptableOrUnknown(
              data['profile_picture_url']!, _profilePictureUrlMeta));
    }
    if (data.containsKey('last_seen')) {
      context.handle(_lastSeenMeta,
          lastSeen.isAcceptableOrUnknown(data['last_seen']!, _lastSeenMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('modified_at')) {
      context.handle(
          _modifiedAtMeta,
          modifiedAt.isAcceptableOrUnknown(
              data['modified_at']!, _modifiedAtMeta));
    }
    if (data.containsKey('admission_number')) {
      context.handle(
          _admissionNumberMeta,
          admissionNumber.isAcceptableOrUnknown(
              data['admission_number']!, _admissionNumberMeta));
    }
    if (data.containsKey('campus')) {
      context.handle(_campusMeta,
          campus.isAcceptableOrUnknown(data['campus']!, _campusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfileData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      bio: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bio']),
      vibePoints: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vibe_points'])!,
      profilePictureUrl: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}profile_picture_url']),
      lastSeen: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_seen'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      modifiedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}modified_at'])!,
      admissionNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}admission_number']),
      campus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}campus'])!,
    );
  }

  @override
  $UserProfileTable createAlias(String alias) {
    return $UserProfileTable(attachedDatabase, alias);
  }
}

class UserProfileData extends DataClass implements Insertable<UserProfileData> {
  final int id;
  final String userId;
  final String? bio;
  final int vibePoints;
  final String? profilePictureUrl;
  final DateTime lastSeen;
  final DateTime createdAt;
  final DateTime modifiedAt;
  final String? admissionNumber;
  final String campus;
  const UserProfileData(
      {required this.id,
      required this.userId,
      this.bio,
      required this.vibePoints,
      this.profilePictureUrl,
      required this.lastSeen,
      required this.createdAt,
      required this.modifiedAt,
      this.admissionNumber,
      required this.campus});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || bio != null) {
      map['bio'] = Variable<String>(bio);
    }
    map['vibe_points'] = Variable<int>(vibePoints);
    if (!nullToAbsent || profilePictureUrl != null) {
      map['profile_picture_url'] = Variable<String>(profilePictureUrl);
    }
    map['last_seen'] = Variable<DateTime>(lastSeen);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['modified_at'] = Variable<DateTime>(modifiedAt);
    if (!nullToAbsent || admissionNumber != null) {
      map['admission_number'] = Variable<String>(admissionNumber);
    }
    map['campus'] = Variable<String>(campus);
    return map;
  }

  UserProfileCompanion toCompanion(bool nullToAbsent) {
    return UserProfileCompanion(
      id: Value(id),
      userId: Value(userId),
      bio: bio == null && nullToAbsent ? const Value.absent() : Value(bio),
      vibePoints: Value(vibePoints),
      profilePictureUrl: profilePictureUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(profilePictureUrl),
      lastSeen: Value(lastSeen),
      createdAt: Value(createdAt),
      modifiedAt: Value(modifiedAt),
      admissionNumber: admissionNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(admissionNumber),
      campus: Value(campus),
    );
  }

  factory UserProfileData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfileData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['user_id']),
      bio: serializer.fromJson<String?>(json['bio']),
      vibePoints: serializer.fromJson<int>(json['vibe_points']),
      profilePictureUrl:
          serializer.fromJson<String?>(json['profile_picture_url']),
      lastSeen: serializer.fromJson<DateTime>(json['last_seen']),
      createdAt: serializer.fromJson<DateTime>(json['created_at']),
      modifiedAt: serializer.fromJson<DateTime>(json['modified_at']),
      admissionNumber: serializer.fromJson<String?>(json['admission_number']),
      campus: serializer.fromJson<String>(json['campus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'user_id': serializer.toJson<String>(userId),
      'bio': serializer.toJson<String?>(bio),
      'vibe_points': serializer.toJson<int>(vibePoints),
      'profile_picture_url': serializer.toJson<String?>(profilePictureUrl),
      'last_seen': serializer.toJson<DateTime>(lastSeen),
      'created_at': serializer.toJson<DateTime>(createdAt),
      'modified_at': serializer.toJson<DateTime>(modifiedAt),
      'admission_number': serializer.toJson<String?>(admissionNumber),
      'campus': serializer.toJson<String>(campus),
    };
  }

  UserProfileData copyWith(
          {int? id,
          String? userId,
          Value<String?> bio = const Value.absent(),
          int? vibePoints,
          Value<String?> profilePictureUrl = const Value.absent(),
          DateTime? lastSeen,
          DateTime? createdAt,
          DateTime? modifiedAt,
          Value<String?> admissionNumber = const Value.absent(),
          String? campus}) =>
      UserProfileData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        bio: bio.present ? bio.value : this.bio,
        vibePoints: vibePoints ?? this.vibePoints,
        profilePictureUrl: profilePictureUrl.present
            ? profilePictureUrl.value
            : this.profilePictureUrl,
        lastSeen: lastSeen ?? this.lastSeen,
        createdAt: createdAt ?? this.createdAt,
        modifiedAt: modifiedAt ?? this.modifiedAt,
        admissionNumber: admissionNumber.present
            ? admissionNumber.value
            : this.admissionNumber,
        campus: campus ?? this.campus,
      );
  UserProfileData copyWithCompanion(UserProfileCompanion data) {
    return UserProfileData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      bio: data.bio.present ? data.bio.value : this.bio,
      vibePoints:
          data.vibePoints.present ? data.vibePoints.value : this.vibePoints,
      profilePictureUrl: data.profilePictureUrl.present
          ? data.profilePictureUrl.value
          : this.profilePictureUrl,
      lastSeen: data.lastSeen.present ? data.lastSeen.value : this.lastSeen,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      modifiedAt:
          data.modifiedAt.present ? data.modifiedAt.value : this.modifiedAt,
      admissionNumber: data.admissionNumber.present
          ? data.admissionNumber.value
          : this.admissionNumber,
      campus: data.campus.present ? data.campus.value : this.campus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('bio: $bio, ')
          ..write('vibePoints: $vibePoints, ')
          ..write('profilePictureUrl: $profilePictureUrl, ')
          ..write('lastSeen: $lastSeen, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('admissionNumber: $admissionNumber, ')
          ..write('campus: $campus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      bio,
      vibePoints,
      profilePictureUrl,
      lastSeen,
      createdAt,
      modifiedAt,
      admissionNumber,
      campus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfileData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.bio == this.bio &&
          other.vibePoints == this.vibePoints &&
          other.profilePictureUrl == this.profilePictureUrl &&
          other.lastSeen == this.lastSeen &&
          other.createdAt == this.createdAt &&
          other.modifiedAt == this.modifiedAt &&
          other.admissionNumber == this.admissionNumber &&
          other.campus == this.campus);
}

class UserProfileCompanion extends UpdateCompanion<UserProfileData> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String?> bio;
  final Value<int> vibePoints;
  final Value<String?> profilePictureUrl;
  final Value<DateTime> lastSeen;
  final Value<DateTime> createdAt;
  final Value<DateTime> modifiedAt;
  final Value<String?> admissionNumber;
  final Value<String> campus;
  const UserProfileCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.bio = const Value.absent(),
    this.vibePoints = const Value.absent(),
    this.profilePictureUrl = const Value.absent(),
    this.lastSeen = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.admissionNumber = const Value.absent(),
    this.campus = const Value.absent(),
  });
  UserProfileCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    this.bio = const Value.absent(),
    this.vibePoints = const Value.absent(),
    this.profilePictureUrl = const Value.absent(),
    this.lastSeen = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.modifiedAt = const Value.absent(),
    this.admissionNumber = const Value.absent(),
    this.campus = const Value.absent(),
  }) : userId = Value(userId);
  static Insertable<UserProfileData> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? bio,
    Expression<int>? vibePoints,
    Expression<String>? profilePictureUrl,
    Expression<DateTime>? lastSeen,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? modifiedAt,
    Expression<String>? admissionNumber,
    Expression<String>? campus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (bio != null) 'bio': bio,
      if (vibePoints != null) 'vibe_points': vibePoints,
      if (profilePictureUrl != null) 'profile_picture_url': profilePictureUrl,
      if (lastSeen != null) 'last_seen': lastSeen,
      if (createdAt != null) 'created_at': createdAt,
      if (modifiedAt != null) 'modified_at': modifiedAt,
      if (admissionNumber != null) 'admission_number': admissionNumber,
      if (campus != null) 'campus': campus,
    });
  }

  UserProfileCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String?>? bio,
      Value<int>? vibePoints,
      Value<String?>? profilePictureUrl,
      Value<DateTime>? lastSeen,
      Value<DateTime>? createdAt,
      Value<DateTime>? modifiedAt,
      Value<String?>? admissionNumber,
      Value<String>? campus}) {
    return UserProfileCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      bio: bio ?? this.bio,
      vibePoints: vibePoints ?? this.vibePoints,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      lastSeen: lastSeen ?? this.lastSeen,
      createdAt: createdAt ?? this.createdAt,
      modifiedAt: modifiedAt ?? this.modifiedAt,
      admissionNumber: admissionNumber ?? this.admissionNumber,
      campus: campus ?? this.campus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (bio.present) {
      map['bio'] = Variable<String>(bio.value);
    }
    if (vibePoints.present) {
      map['vibe_points'] = Variable<int>(vibePoints.value);
    }
    if (profilePictureUrl.present) {
      map['profile_picture_url'] = Variable<String>(profilePictureUrl.value);
    }
    if (lastSeen.present) {
      map['last_seen'] = Variable<DateTime>(lastSeen.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (modifiedAt.present) {
      map['modified_at'] = Variable<DateTime>(modifiedAt.value);
    }
    if (admissionNumber.present) {
      map['admission_number'] = Variable<String>(admissionNumber.value);
    }
    if (campus.present) {
      map['campus'] = Variable<String>(campus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfileCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('bio: $bio, ')
          ..write('vibePoints: $vibePoints, ')
          ..write('profilePictureUrl: $profilePictureUrl, ')
          ..write('lastSeen: $lastSeen, ')
          ..write('createdAt: $createdAt, ')
          ..write('modifiedAt: $modifiedAt, ')
          ..write('admissionNumber: $admissionNumber, ')
          ..write('campus: $campus')
          ..write(')'))
        .toString();
  }
}

class $UserCredentialTable extends UserCredential
    with TableInfo<$UserCredentialTable, UserCredentialData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserCredentialTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  static const VerificationMeta _admnoMeta = const VerificationMeta('admno');
  @override
  late final GeneratedColumn<String> admno = GeneratedColumn<String>(
      'admno', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accessTokenMeta =
      const VerificationMeta('accessToken');
  @override
  late final GeneratedColumn<String> accessToken = GeneratedColumn<String>(
      'access_token', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (username)'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (email)'));
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastLoginMeta =
      const VerificationMeta('lastLogin');
  @override
  late final GeneratedColumn<DateTime> lastLogin = GeneratedColumn<DateTime>(
      'last_login', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [userId, admno, accessToken, username, email, password, lastLogin];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_credential';
  @override
  VerificationContext validateIntegrity(Insertable<UserCredentialData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('admno')) {
      context.handle(
          _admnoMeta, admno.isAcceptableOrUnknown(data['admno']!, _admnoMeta));
    } else if (isInserting) {
      context.missing(_admnoMeta);
    }
    if (data.containsKey('access_token')) {
      context.handle(
          _accessTokenMeta,
          accessToken.isAcceptableOrUnknown(
              data['access_token']!, _accessTokenMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('last_login')) {
      context.handle(_lastLoginMeta,
          lastLogin.isAcceptableOrUnknown(data['last_login']!, _lastLoginMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserCredentialData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserCredentialData(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id']),
      admno: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}admno'])!,
      accessToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}access_token']),
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      lastLogin: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_login']),
    );
  }

  @override
  $UserCredentialTable createAlias(String alias) {
    return $UserCredentialTable(attachedDatabase, alias);
  }
}

class UserCredentialData extends DataClass
    implements Insertable<UserCredentialData> {
  final String? userId;
  final String admno;
  final String? accessToken;
  final String username;
  final String email;
  final String password;
  final DateTime? lastLogin;
  const UserCredentialData(
      {this.userId,
      required this.admno,
      this.accessToken,
      required this.username,
      required this.email,
      required this.password,
      this.lastLogin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    map['admno'] = Variable<String>(admno);
    if (!nullToAbsent || accessToken != null) {
      map['access_token'] = Variable<String>(accessToken);
    }
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    if (!nullToAbsent || lastLogin != null) {
      map['last_login'] = Variable<DateTime>(lastLogin);
    }
    return map;
  }

  UserCredentialCompanion toCompanion(bool nullToAbsent) {
    return UserCredentialCompanion(
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      admno: Value(admno),
      accessToken: accessToken == null && nullToAbsent
          ? const Value.absent()
          : Value(accessToken),
      username: Value(username),
      email: Value(email),
      password: Value(password),
      lastLogin: lastLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLogin),
    );
  }

  factory UserCredentialData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserCredentialData(
      userId: serializer.fromJson<String?>(json['userId']),
      admno: serializer.fromJson<String>(json['admission_number']),
      accessToken: serializer.fromJson<String?>(json['access_token']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      lastLogin: serializer.fromJson<DateTime?>(json['last_login']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String?>(userId),
      'admission_number': serializer.toJson<String>(admno),
      'access_token': serializer.toJson<String?>(accessToken),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'last_login': serializer.toJson<DateTime?>(lastLogin),
    };
  }

  UserCredentialData copyWith(
          {Value<String?> userId = const Value.absent(),
          String? admno,
          Value<String?> accessToken = const Value.absent(),
          String? username,
          String? email,
          String? password,
          Value<DateTime?> lastLogin = const Value.absent()}) =>
      UserCredentialData(
        userId: userId.present ? userId.value : this.userId,
        admno: admno ?? this.admno,
        accessToken: accessToken.present ? accessToken.value : this.accessToken,
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        lastLogin: lastLogin.present ? lastLogin.value : this.lastLogin,
      );
  UserCredentialData copyWithCompanion(UserCredentialCompanion data) {
    return UserCredentialData(
      userId: data.userId.present ? data.userId.value : this.userId,
      admno: data.admno.present ? data.admno.value : this.admno,
      accessToken:
          data.accessToken.present ? data.accessToken.value : this.accessToken,
      username: data.username.present ? data.username.value : this.username,
      email: data.email.present ? data.email.value : this.email,
      password: data.password.present ? data.password.value : this.password,
      lastLogin: data.lastLogin.present ? data.lastLogin.value : this.lastLogin,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserCredentialData(')
          ..write('userId: $userId, ')
          ..write('admno: $admno, ')
          ..write('accessToken: $accessToken, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('lastLogin: $lastLogin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId, admno, accessToken, username, email, password, lastLogin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserCredentialData &&
          other.userId == this.userId &&
          other.admno == this.admno &&
          other.accessToken == this.accessToken &&
          other.username == this.username &&
          other.email == this.email &&
          other.password == this.password &&
          other.lastLogin == this.lastLogin);
}

class UserCredentialCompanion extends UpdateCompanion<UserCredentialData> {
  final Value<String?> userId;
  final Value<String> admno;
  final Value<String?> accessToken;
  final Value<String> username;
  final Value<String> email;
  final Value<String> password;
  final Value<DateTime?> lastLogin;
  final Value<int> rowid;
  const UserCredentialCompanion({
    this.userId = const Value.absent(),
    this.admno = const Value.absent(),
    this.accessToken = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCredentialCompanion.insert({
    this.userId = const Value.absent(),
    required String admno,
    this.accessToken = const Value.absent(),
    required String username,
    required String email,
    required String password,
    this.lastLogin = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : admno = Value(admno),
        username = Value(username),
        email = Value(email),
        password = Value(password);
  static Insertable<UserCredentialData> custom({
    Expression<String>? userId,
    Expression<String>? admno,
    Expression<String>? accessToken,
    Expression<String>? username,
    Expression<String>? email,
    Expression<String>? password,
    Expression<DateTime>? lastLogin,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (admno != null) 'admno': admno,
      if (accessToken != null) 'access_token': accessToken,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (lastLogin != null) 'last_login': lastLogin,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCredentialCompanion copyWith(
      {Value<String?>? userId,
      Value<String>? admno,
      Value<String?>? accessToken,
      Value<String>? username,
      Value<String>? email,
      Value<String>? password,
      Value<DateTime?>? lastLogin,
      Value<int>? rowid}) {
    return UserCredentialCompanion(
      userId: userId ?? this.userId,
      admno: admno ?? this.admno,
      accessToken: accessToken ?? this.accessToken,
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      lastLogin: lastLogin ?? this.lastLogin,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (admno.present) {
      map['admno'] = Variable<String>(admno.value);
    }
    if (accessToken.present) {
      map['access_token'] = Variable<String>(accessToken.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (lastLogin.present) {
      map['last_login'] = Variable<DateTime>(lastLogin.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCredentialCompanion(')
          ..write('userId: $userId, ')
          ..write('admno: $admno, ')
          ..write('accessToken: $accessToken, ')
          ..write('username: $username, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('lastLogin: $lastLogin, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserTable user = $UserTable(this);
  late final $UserProfileTable userProfile = $UserProfileTable(this);
  late final $UserCredentialTable userCredential = $UserCredentialTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [user, userProfile, userCredential];
}

typedef $$UserTableCreateCompanionBuilder = UserCompanion Function({
  required String id,
  required String username,
  required String firstname,
  Value<String?> othernames,
  required String phone,
  Value<String?> email,
  required String gender,
  Value<bool> active,
  required DateTime createdAt,
  required DateTime modifiedAt,
  required DateTime dateOfBirth,
  required String nationalId,
  Value<int> rowid,
});
typedef $$UserTableUpdateCompanionBuilder = UserCompanion Function({
  Value<String> id,
  Value<String> username,
  Value<String> firstname,
  Value<String?> othernames,
  Value<String> phone,
  Value<String?> email,
  Value<String> gender,
  Value<bool> active,
  Value<DateTime> createdAt,
  Value<DateTime> modifiedAt,
  Value<DateTime> dateOfBirth,
  Value<String> nationalId,
  Value<int> rowid,
});

final class $$UserTableReferences
    extends BaseReferences<_$AppDatabase, $UserTable, UserData> {
  $$UserTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UserProfileTable, List<UserProfileData>>
      _userProfileRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.userProfile,
          aliasName: $_aliasNameGenerator(db.user.id, db.userProfile.userId));

  $$UserProfileTableProcessedTableManager get userProfileRefs {
    final manager = $$UserProfileTableTableManager($_db, $_db.userProfile)
        .filter((f) => f.userId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_userProfileRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserTableFilterComposer extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstname => $composableBuilder(
      column: $table.firstname, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get othernames => $composableBuilder(
      column: $table.othernames, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get active => $composableBuilder(
      column: $table.active, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => ColumnFilters(column));

  Expression<bool> userProfileRefs(
      Expression<bool> Function($$UserProfileTableFilterComposer f) f) {
    final $$UserProfileTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userProfile,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfileTableFilterComposer(
              $db: $db,
              $table: $db.userProfile,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableOrderingComposer extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstname => $composableBuilder(
      column: $table.firstname, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get othernames => $composableBuilder(
      column: $table.othernames, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get active => $composableBuilder(
      column: $table.active, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => ColumnOrderings(column));
}

class $$UserTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserTable> {
  $$UserTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get firstname =>
      $composableBuilder(column: $table.firstname, builder: (column) => column);

  GeneratedColumn<String> get othernames => $composableBuilder(
      column: $table.othernames, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<bool> get active =>
      $composableBuilder(column: $table.active, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get dateOfBirth => $composableBuilder(
      column: $table.dateOfBirth, builder: (column) => column);

  GeneratedColumn<String> get nationalId => $composableBuilder(
      column: $table.nationalId, builder: (column) => column);

  Expression<T> userProfileRefs<T extends Object>(
      Expression<T> Function($$UserProfileTableAnnotationComposer a) f) {
    final $$UserProfileTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userProfile,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfileTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfile,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, $$UserTableReferences),
    UserData,
    PrefetchHooks Function({bool userProfileRefs})> {
  $$UserTableTableManager(_$AppDatabase db, $UserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> firstname = const Value.absent(),
            Value<String?> othernames = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String> gender = const Value.absent(),
            Value<bool> active = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> modifiedAt = const Value.absent(),
            Value<DateTime> dateOfBirth = const Value.absent(),
            Value<String> nationalId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCompanion(
            id: id,
            username: username,
            firstname: firstname,
            othernames: othernames,
            phone: phone,
            email: email,
            gender: gender,
            active: active,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            dateOfBirth: dateOfBirth,
            nationalId: nationalId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String username,
            required String firstname,
            Value<String?> othernames = const Value.absent(),
            required String phone,
            Value<String?> email = const Value.absent(),
            required String gender,
            Value<bool> active = const Value.absent(),
            required DateTime createdAt,
            required DateTime modifiedAt,
            required DateTime dateOfBirth,
            required String nationalId,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCompanion.insert(
            id: id,
            username: username,
            firstname: firstname,
            othernames: othernames,
            phone: phone,
            email: email,
            gender: gender,
            active: active,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            dateOfBirth: dateOfBirth,
            nationalId: nationalId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UserTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({userProfileRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (userProfileRefs) db.userProfile],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (userProfileRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$UserTableReferences._userProfileRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableReferences(db, table, p0)
                                .userProfileRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableAnnotationComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, $$UserTableReferences),
    UserData,
    PrefetchHooks Function({bool userProfileRefs})>;
typedef $$UserProfileTableCreateCompanionBuilder = UserProfileCompanion
    Function({
  Value<int> id,
  required String userId,
  Value<String?> bio,
  Value<int> vibePoints,
  Value<String?> profilePictureUrl,
  Value<DateTime> lastSeen,
  Value<DateTime> createdAt,
  Value<DateTime> modifiedAt,
  Value<String?> admissionNumber,
  Value<String> campus,
});
typedef $$UserProfileTableUpdateCompanionBuilder = UserProfileCompanion
    Function({
  Value<int> id,
  Value<String> userId,
  Value<String?> bio,
  Value<int> vibePoints,
  Value<String?> profilePictureUrl,
  Value<DateTime> lastSeen,
  Value<DateTime> createdAt,
  Value<DateTime> modifiedAt,
  Value<String?> admissionNumber,
  Value<String> campus,
});

final class $$UserProfileTableReferences
    extends BaseReferences<_$AppDatabase, $UserProfileTable, UserProfileData> {
  $$UserProfileTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTable _userIdTable(_$AppDatabase db) => db.user
      .createAlias($_aliasNameGenerator(db.userProfile.userId, db.user.id));

  $$UserTableProcessedTableManager? get userId {
    if ($_item.userId == null) return null;
    final manager = $$UserTableTableManager($_db, $_db.user)
        .filter((f) => f.id($_item.userId!));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserProfileTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bio => $composableBuilder(
      column: $table.bio, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get vibePoints => $composableBuilder(
      column: $table.vibePoints, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get profilePictureUrl => $composableBuilder(
      column: $table.profilePictureUrl,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastSeen => $composableBuilder(
      column: $table.lastSeen, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get admissionNumber => $composableBuilder(
      column: $table.admissionNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get campus => $composableBuilder(
      column: $table.campus, builder: (column) => ColumnFilters(column));

  $$UserTableFilterComposer get userId {
    final $$UserTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableFilterComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserProfileTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bio => $composableBuilder(
      column: $table.bio, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get vibePoints => $composableBuilder(
      column: $table.vibePoints, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get profilePictureUrl => $composableBuilder(
      column: $table.profilePictureUrl,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastSeen => $composableBuilder(
      column: $table.lastSeen, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get admissionNumber => $composableBuilder(
      column: $table.admissionNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get campus => $composableBuilder(
      column: $table.campus, builder: (column) => ColumnOrderings(column));

  $$UserTableOrderingComposer get userId {
    final $$UserTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableOrderingComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserProfileTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfileTable> {
  $$UserProfileTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get bio =>
      $composableBuilder(column: $table.bio, builder: (column) => column);

  GeneratedColumn<int> get vibePoints => $composableBuilder(
      column: $table.vibePoints, builder: (column) => column);

  GeneratedColumn<String> get profilePictureUrl => $composableBuilder(
      column: $table.profilePictureUrl, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSeen =>
      $composableBuilder(column: $table.lastSeen, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedAt => $composableBuilder(
      column: $table.modifiedAt, builder: (column) => column);

  GeneratedColumn<String> get admissionNumber => $composableBuilder(
      column: $table.admissionNumber, builder: (column) => column);

  GeneratedColumn<String> get campus =>
      $composableBuilder(column: $table.campus, builder: (column) => column);

  $$UserTableAnnotationComposer get userId {
    final $$UserTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableAnnotationComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserProfileTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserProfileTable,
    UserProfileData,
    $$UserProfileTableFilterComposer,
    $$UserProfileTableOrderingComposer,
    $$UserProfileTableAnnotationComposer,
    $$UserProfileTableCreateCompanionBuilder,
    $$UserProfileTableUpdateCompanionBuilder,
    (UserProfileData, $$UserProfileTableReferences),
    UserProfileData,
    PrefetchHooks Function({bool userId})> {
  $$UserProfileTableTableManager(_$AppDatabase db, $UserProfileTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfileTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfileTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfileTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String?> bio = const Value.absent(),
            Value<int> vibePoints = const Value.absent(),
            Value<String?> profilePictureUrl = const Value.absent(),
            Value<DateTime> lastSeen = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> modifiedAt = const Value.absent(),
            Value<String?> admissionNumber = const Value.absent(),
            Value<String> campus = const Value.absent(),
          }) =>
              UserProfileCompanion(
            id: id,
            userId: userId,
            bio: bio,
            vibePoints: vibePoints,
            profilePictureUrl: profilePictureUrl,
            lastSeen: lastSeen,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            admissionNumber: admissionNumber,
            campus: campus,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userId,
            Value<String?> bio = const Value.absent(),
            Value<int> vibePoints = const Value.absent(),
            Value<String?> profilePictureUrl = const Value.absent(),
            Value<DateTime> lastSeen = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> modifiedAt = const Value.absent(),
            Value<String?> admissionNumber = const Value.absent(),
            Value<String> campus = const Value.absent(),
          }) =>
              UserProfileCompanion.insert(
            id: id,
            userId: userId,
            bio: bio,
            vibePoints: vibePoints,
            profilePictureUrl: profilePictureUrl,
            lastSeen: lastSeen,
            createdAt: createdAt,
            modifiedAt: modifiedAt,
            admissionNumber: admissionNumber,
            campus: campus,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserProfileTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$UserProfileTableReferences._userIdTable(db),
                    referencedColumn:
                        $$UserProfileTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UserProfileTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserProfileTable,
    UserProfileData,
    $$UserProfileTableFilterComposer,
    $$UserProfileTableOrderingComposer,
    $$UserProfileTableAnnotationComposer,
    $$UserProfileTableCreateCompanionBuilder,
    $$UserProfileTableUpdateCompanionBuilder,
    (UserProfileData, $$UserProfileTableReferences),
    UserProfileData,
    PrefetchHooks Function({bool userId})>;
typedef $$UserCredentialTableCreateCompanionBuilder = UserCredentialCompanion
    Function({
  Value<String?> userId,
  required String admno,
  Value<String?> accessToken,
  required String username,
  required String email,
  required String password,
  Value<DateTime?> lastLogin,
  Value<int> rowid,
});
typedef $$UserCredentialTableUpdateCompanionBuilder = UserCredentialCompanion
    Function({
  Value<String?> userId,
  Value<String> admno,
  Value<String?> accessToken,
  Value<String> username,
  Value<String> email,
  Value<String> password,
  Value<DateTime?> lastLogin,
  Value<int> rowid,
});

final class $$UserCredentialTableReferences extends BaseReferences<
    _$AppDatabase, $UserCredentialTable, UserCredentialData> {
  $$UserCredentialTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserTable _userIdTable(_$AppDatabase db) => db.user
      .createAlias($_aliasNameGenerator(db.userCredential.userId, db.user.id));

  $$UserTableProcessedTableManager? get userId {
    if ($_item.userId == null) return null;
    final manager = $$UserTableTableManager($_db, $_db.user)
        .filter((f) => f.id($_item.userId!));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UserTable _usernameTable(_$AppDatabase db) => db.user.createAlias(
      $_aliasNameGenerator(db.userCredential.username, db.user.username));

  $$UserTableProcessedTableManager? get username {
    if ($_item.username == null) return null;
    final manager = $$UserTableTableManager($_db, $_db.user)
        .filter((f) => f.username($_item.username!));
    final item = $_typedResult.readTableOrNull(_usernameTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UserTable _emailTable(_$AppDatabase db) => db.user.createAlias(
      $_aliasNameGenerator(db.userCredential.email, db.user.email));

  $$UserTableProcessedTableManager? get email {
    if ($_item.email == null) return null;
    final manager = $$UserTableTableManager($_db, $_db.user)
        .filter((f) => f.email($_item.email!));
    final item = $_typedResult.readTableOrNull(_emailTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserCredentialTableFilterComposer
    extends Composer<_$AppDatabase, $UserCredentialTable> {
  $$UserCredentialTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get admno => $composableBuilder(
      column: $table.admno, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accessToken => $composableBuilder(
      column: $table.accessToken, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastLogin => $composableBuilder(
      column: $table.lastLogin, builder: (column) => ColumnFilters(column));

  $$UserTableFilterComposer get userId {
    final $$UserTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableFilterComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableFilterComposer get username {
    final $$UserTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.username,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.username,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableFilterComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableFilterComposer get email {
    final $$UserTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.email,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.email,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableFilterComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserCredentialTableOrderingComposer
    extends Composer<_$AppDatabase, $UserCredentialTable> {
  $$UserCredentialTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get admno => $composableBuilder(
      column: $table.admno, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accessToken => $composableBuilder(
      column: $table.accessToken, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastLogin => $composableBuilder(
      column: $table.lastLogin, builder: (column) => ColumnOrderings(column));

  $$UserTableOrderingComposer get userId {
    final $$UserTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableOrderingComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableOrderingComposer get username {
    final $$UserTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.username,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.username,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableOrderingComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableOrderingComposer get email {
    final $$UserTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.email,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.email,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableOrderingComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserCredentialTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserCredentialTable> {
  $$UserCredentialTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get admno =>
      $composableBuilder(column: $table.admno, builder: (column) => column);

  GeneratedColumn<String> get accessToken => $composableBuilder(
      column: $table.accessToken, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<DateTime> get lastLogin =>
      $composableBuilder(column: $table.lastLogin, builder: (column) => column);

  $$UserTableAnnotationComposer get userId {
    final $$UserTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableAnnotationComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableAnnotationComposer get username {
    final $$UserTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.username,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.username,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableAnnotationComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableAnnotationComposer get email {
    final $$UserTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.email,
        referencedTable: $db.user,
        getReferencedColumn: (t) => t.email,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableAnnotationComposer(
              $db: $db,
              $table: $db.user,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserCredentialTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserCredentialTable,
    UserCredentialData,
    $$UserCredentialTableFilterComposer,
    $$UserCredentialTableOrderingComposer,
    $$UserCredentialTableAnnotationComposer,
    $$UserCredentialTableCreateCompanionBuilder,
    $$UserCredentialTableUpdateCompanionBuilder,
    (UserCredentialData, $$UserCredentialTableReferences),
    UserCredentialData,
    PrefetchHooks Function({bool userId, bool username, bool email})> {
  $$UserCredentialTableTableManager(
      _$AppDatabase db, $UserCredentialTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserCredentialTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserCredentialTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserCredentialTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String?> userId = const Value.absent(),
            Value<String> admno = const Value.absent(),
            Value<String?> accessToken = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCredentialCompanion(
            userId: userId,
            admno: admno,
            accessToken: accessToken,
            username: username,
            email: email,
            password: password,
            lastLogin: lastLogin,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String?> userId = const Value.absent(),
            required String admno,
            Value<String?> accessToken = const Value.absent(),
            required String username,
            required String email,
            required String password,
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCredentialCompanion.insert(
            userId: userId,
            admno: admno,
            accessToken: accessToken,
            username: username,
            email: email,
            password: password,
            lastLogin: lastLogin,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserCredentialTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {userId = false, username = false, email = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$UserCredentialTableReferences._userIdTable(db),
                    referencedColumn:
                        $$UserCredentialTableReferences._userIdTable(db).id,
                  ) as T;
                }
                if (username) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.username,
                    referencedTable:
                        $$UserCredentialTableReferences._usernameTable(db),
                    referencedColumn: $$UserCredentialTableReferences
                        ._usernameTable(db)
                        .username,
                  ) as T;
                }
                if (email) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.email,
                    referencedTable:
                        $$UserCredentialTableReferences._emailTable(db),
                    referencedColumn:
                        $$UserCredentialTableReferences._emailTable(db).email,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UserCredentialTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserCredentialTable,
    UserCredentialData,
    $$UserCredentialTableFilterComposer,
    $$UserCredentialTableOrderingComposer,
    $$UserCredentialTableAnnotationComposer,
    $$UserCredentialTableCreateCompanionBuilder,
    $$UserCredentialTableUpdateCompanionBuilder,
    (UserCredentialData, $$UserCredentialTableReferences),
    UserCredentialData,
    PrefetchHooks Function({bool userId, bool username, bool email})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserTableTableManager get user => $$UserTableTableManager(_db, _db.user);
  $$UserProfileTableTableManager get userProfile =>
      $$UserProfileTableTableManager(_db, _db.userProfile);
  $$UserCredentialTableTableManager get userCredential =>
      $$UserCredentialTableTableManager(_db, _db.userCredential);
}

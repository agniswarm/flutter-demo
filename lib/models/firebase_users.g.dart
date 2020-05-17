// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

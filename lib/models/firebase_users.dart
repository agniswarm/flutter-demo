import 'package:json_annotation/json_annotation.dart';

part 'firebase_users.g.dart';

@JsonSerializable(includeIfNull: false)
class Users {
  String name;
  @JsonKey(ignore: true)
  String id;
  Users({
    this.name,
  });
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  factory Users.fromFirestore(Map<String, dynamic> json, String id) =>
      _$UsersFromFireStore(json, id);

  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

_$UsersFromFireStore(Map<String, dynamic> json, String id) {
  var obj = Users.fromJson(json);
  obj.id = id;
  return obj;
}

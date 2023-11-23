// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? username,
    String? userPhoto,
  })  : _username = username,
        _userPhoto = userPhoto;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "userPhoto" field.
  String? _userPhoto;
  String get userPhoto => _userPhoto ?? '';
  set userPhoto(String? val) => _userPhoto = val;
  bool hasUserPhoto() => _userPhoto != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        username: data['username'] as String?,
        userPhoto: data['userPhoto'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'userPhoto': _userPhoto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'userPhoto': serializeParam(
          _userPhoto,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        userPhoto: deserializeParam(
          data['userPhoto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        username == other.username &&
        userPhoto == other.userPhoto;
  }

  @override
  int get hashCode => const ListEquality().hash([username, userPhoto]);
}

UserStruct createUserStruct({
  String? username,
  String? userPhoto,
}) =>
    UserStruct(
      username: username,
      userPhoto: userPhoto,
    );

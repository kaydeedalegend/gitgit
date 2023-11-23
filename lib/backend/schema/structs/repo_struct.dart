// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepoStruct extends BaseStruct {
  RepoStruct({
    String? ownerUserName,
    String? repoName,
    String? repoDescription,
    String? visibility,
    String? repoLink,
    String? repoId,
    bool? isFavorite,
  })  : _ownerUserName = ownerUserName,
        _repoName = repoName,
        _repoDescription = repoDescription,
        _visibility = visibility,
        _repoLink = repoLink,
        _repoId = repoId,
        _isFavorite = isFavorite;

  // "ownerUserName" field.
  String? _ownerUserName;
  String get ownerUserName => _ownerUserName ?? '';
  set ownerUserName(String? val) => _ownerUserName = val;
  bool hasOwnerUserName() => _ownerUserName != null;

  // "repoName" field.
  String? _repoName;
  String get repoName => _repoName ?? '';
  set repoName(String? val) => _repoName = val;
  bool hasRepoName() => _repoName != null;

  // "repoDescription" field.
  String? _repoDescription;
  String get repoDescription => _repoDescription ?? '';
  set repoDescription(String? val) => _repoDescription = val;
  bool hasRepoDescription() => _repoDescription != null;

  // "visibility" field.
  String? _visibility;
  String get visibility => _visibility ?? '';
  set visibility(String? val) => _visibility = val;
  bool hasVisibility() => _visibility != null;

  // "repoLink" field.
  String? _repoLink;
  String get repoLink => _repoLink ?? '';
  set repoLink(String? val) => _repoLink = val;
  bool hasRepoLink() => _repoLink != null;

  // "repoId" field.
  String? _repoId;
  String get repoId => _repoId ?? '';
  set repoId(String? val) => _repoId = val;
  bool hasRepoId() => _repoId != null;

  // "is_favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  set isFavorite(bool? val) => _isFavorite = val;
  bool hasIsFavorite() => _isFavorite != null;

  static RepoStruct fromMap(Map<String, dynamic> data) => RepoStruct(
        ownerUserName: data['ownerUserName'] as String?,
        repoName: data['repoName'] as String?,
        repoDescription: data['repoDescription'] as String?,
        visibility: data['visibility'] as String?,
        repoLink: data['repoLink'] as String?,
        repoId: data['repoId'] as String?,
        isFavorite: data['is_favorite'] as bool?,
      );

  static RepoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RepoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'ownerUserName': _ownerUserName,
        'repoName': _repoName,
        'repoDescription': _repoDescription,
        'visibility': _visibility,
        'repoLink': _repoLink,
        'repoId': _repoId,
        'is_favorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ownerUserName': serializeParam(
          _ownerUserName,
          ParamType.String,
        ),
        'repoName': serializeParam(
          _repoName,
          ParamType.String,
        ),
        'repoDescription': serializeParam(
          _repoDescription,
          ParamType.String,
        ),
        'visibility': serializeParam(
          _visibility,
          ParamType.String,
        ),
        'repoLink': serializeParam(
          _repoLink,
          ParamType.String,
        ),
        'repoId': serializeParam(
          _repoId,
          ParamType.String,
        ),
        'is_favorite': serializeParam(
          _isFavorite,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RepoStruct fromSerializableMap(Map<String, dynamic> data) =>
      RepoStruct(
        ownerUserName: deserializeParam(
          data['ownerUserName'],
          ParamType.String,
          false,
        ),
        repoName: deserializeParam(
          data['repoName'],
          ParamType.String,
          false,
        ),
        repoDescription: deserializeParam(
          data['repoDescription'],
          ParamType.String,
          false,
        ),
        visibility: deserializeParam(
          data['visibility'],
          ParamType.String,
          false,
        ),
        repoLink: deserializeParam(
          data['repoLink'],
          ParamType.String,
          false,
        ),
        repoId: deserializeParam(
          data['repoId'],
          ParamType.String,
          false,
        ),
        isFavorite: deserializeParam(
          data['is_favorite'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'RepoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RepoStruct &&
        ownerUserName == other.ownerUserName &&
        repoName == other.repoName &&
        repoDescription == other.repoDescription &&
        visibility == other.visibility &&
        repoLink == other.repoLink &&
        repoId == other.repoId &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode => const ListEquality().hash([
        ownerUserName,
        repoName,
        repoDescription,
        visibility,
        repoLink,
        repoId,
        isFavorite
      ]);
}

RepoStruct createRepoStruct({
  String? ownerUserName,
  String? repoName,
  String? repoDescription,
  String? visibility,
  String? repoLink,
  String? repoId,
  bool? isFavorite,
}) =>
    RepoStruct(
      ownerUserName: ownerUserName,
      repoName: repoName,
      repoDescription: repoDescription,
      visibility: visibility,
      repoLink: repoLink,
      repoId: repoId,
      isFavorite: isFavorite,
    );

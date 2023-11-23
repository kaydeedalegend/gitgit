import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GitHub Group Code

class GitHubGroup {
  static String baseUrl = 'api.github.com';
  static Map<String, String> headers = {
    'Authorization':
        'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
  };
  static GetSingleUserCall getSingleUserCall = GetSingleUserCall();
  static GetUserFollowersCall getUserFollowersCall = GetUserFollowersCall();
  static GetUserFollowingCall getUserFollowingCall = GetUserFollowingCall();
  static GetUserReposCall getUserReposCall = GetUserReposCall();
  static GetRepoLanguagesCall getRepoLanguagesCall = GetRepoLanguagesCall();
  static GetSingleRepoCall getSingleRepoCall = GetSingleRepoCall();
}

class GetSingleUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleUser',
      apiUrl: '${GitHubGroup.baseUrl}/users/${username}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {
        'username': username,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.login''',
      );
  dynamic userPhotoUrl(dynamic response) => getJsonField(
        response,
        r'''$.avatar_url''',
      );
  dynamic userPageLink(dynamic response) => getJsonField(
        response,
        r'''$.html_url''',
      );
  dynamic userFollowersUrl(dynamic response) => getJsonField(
        response,
        r'''$.followers_url''',
      );
  dynamic userFollowingUrl(dynamic response) => getJsonField(
        response,
        r'''$.following_url''',
      );
  dynamic userLocation(dynamic response) => getJsonField(
        response,
        r'''$.location''',
      );
  dynamic userBio(dynamic response) => getJsonField(
        response,
        r'''$.bio''',
      );
  dynamic userPRC(dynamic response) => getJsonField(
        response,
        r'''$.public_repos''',
      );
  dynamic userPGC(dynamic response) => getJsonField(
        response,
        r'''$.public_gists''',
      );
  dynamic userFC(dynamic response) => getJsonField(
        response,
        r'''$.followers''',
      );
  dynamic userFC2(dynamic response) => getJsonField(
        response,
        r'''$.following''',
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.created_at''',
      );
  dynamic userEmail(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
}

class GetUserFollowersCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserFollowers',
      apiUrl: '${GitHubGroup.baseUrl}/users/${username}/followers',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic followerUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].login''',
        true,
      );
  dynamic followerAvatar(dynamic response) => getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      );
  dynamic followers(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
}

class GetUserFollowingCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserFollowing',
      apiUrl: '${GitHubGroup.baseUrl}/users/${username}/following',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic followingUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].login''',
        true,
      );
  dynamic followingAvatar(dynamic response) => getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      );
  dynamic following(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetUserReposCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserRepos',
      apiUrl: '${GitHubGroup.baseUrl}/users/${username}/repos',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic repoName(dynamic response) => getJsonField(
        response,
        r'''$[:].name''',
        true,
      );
  dynamic ownerUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].owner.login''',
        true,
      );
  dynamic repoVisibility(dynamic response) => getJsonField(
        response,
        r'''$[:].visibility''',
        true,
      );
  dynamic repoDescription(dynamic response) => getJsonField(
        response,
        r'''$[:].description''',
        true,
      );
  dynamic repoLanguage(dynamic response) => getJsonField(
        response,
        r'''$[:].language''',
        true,
      );
  dynamic repoDefaultBranch(dynamic response) => getJsonField(
        response,
        r'''$[:].default_branch''',
        true,
      );
  dynamic repos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
  dynamic url(dynamic response) => getJsonField(
        response,
        r'''$[:].html_url''',
        true,
      );
  dynamic repoId(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
}

class GetRepoLanguagesCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? repoName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRepoLanguages',
      apiUrl: '${GitHubGroup.baseUrl}/repos/${username}/${repoName}/languages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic languages(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      );
}

class GetSingleRepoCall {
  Future<ApiCallResponse> call({
    String? repoId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSingleRepo',
      apiUrl: '${GitHubGroup.baseUrl}/repositories/${repoId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'YmVhcmVyIGdpdGh1Yl9wYXRfMTFBTFVVTkFBMFhnek9RMk1acDVFNF8yeDZwdHRmOTZRZlVuV1U0VzJBMzJlQmlZSnhKY2FnbW9jeXBXc1hzZDU5NlZRTjJLREtjcTVkY3VJWA==',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic repoId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic repoName(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
  dynamic ownerLogin(dynamic response) => getJsonField(
        response,
        r'''$.owner.login''',
      );
  dynamic visibility(dynamic response) => getJsonField(
        response,
        r'''$.visibility''',
      );
  dynamic htmlUrl(dynamic response) => getJsonField(
        response,
        r'''$.html_url''',
      );
  dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
}

/// End GitHub Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

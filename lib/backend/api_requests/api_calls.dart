import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GitHub Group Code

class GitHubGroup {
  static String getBaseUrl() => 'api.github.com';
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
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSingleUser',
      apiUrl: '${baseUrl}/users/${username}',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
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
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserFollowers',
      apiUrl: '${baseUrl}/users/${username}/followers',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? followerUsername(dynamic response) => (getJsonField(
        response,
        r'''$[:].login''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? followerAvatar(dynamic response) => (getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? followers(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetUserFollowingCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserFollowing',
      apiUrl: '${baseUrl}/users/${username}/following',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? followingUsername(dynamic response) => getJsonField(
        response,
        r'''$[:].login''',
        true,
      ) as List?;
  List? followingAvatar(dynamic response) => getJsonField(
        response,
        r'''$[:].avatar_url''',
        true,
      ) as List?;
  dynamic following(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetUserReposCall {
  Future<ApiCallResponse> call({
    String? username = '',
  }) async {
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserRepos',
      apiUrl: '${baseUrl}/users/${username}/repos',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? repoName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? ownerUsername(dynamic response) => (getJsonField(
        response,
        r'''$[:].owner.login''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? repoVisibility(dynamic response) => (getJsonField(
        response,
        r'''$[:].visibility''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? repoDescription(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? repoLanguage(dynamic response) => (getJsonField(
        response,
        r'''$[:].language''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? repoDefaultBranch(dynamic response) => (getJsonField(
        response,
        r'''$[:].default_branch''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? repos(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$[:].html_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? repoId(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetRepoLanguagesCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? repoName = '',
  }) async {
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getRepoLanguages',
      apiUrl: '${baseUrl}/repos/${username}/${repoName}/languages',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? languages(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetSingleRepoCall {
  Future<ApiCallResponse> call({
    String? repoId = '',
  }) async {
    final baseUrl = GitHubGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSingleRepo',
      apiUrl: '${baseUrl}/repositories/${repoId}',
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
      isStreamingApi: false,
      alwaysAllowBody: false,
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

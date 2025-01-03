import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _favRepos = await secureStorage.getStringList('ff_favRepos') ?? _favRepos;
    });
    await _safeInitAsync(() async {
      _favUsers = await secureStorage.getStringList('ff_favUsers') ?? _favUsers;
    });
    await _safeInitAsync(() async {
      _searches = await secureStorage.getStringList('ff_searches') ?? _searches;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _favRepos = [];
  List<String> get favRepos => _favRepos;
  set favRepos(List<String> value) {
    _favRepos = value;
    secureStorage.setStringList('ff_favRepos', value);
  }

  void deleteFavRepos() {
    secureStorage.delete(key: 'ff_favRepos');
  }

  void addToFavRepos(String value) {
    favRepos.add(value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void removeFromFavRepos(String value) {
    favRepos.remove(value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void removeAtIndexFromFavRepos(int index) {
    favRepos.removeAt(index);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void updateFavReposAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    favRepos[index] = updateFn(_favRepos[index]);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void insertAtIndexInFavRepos(int index, String value) {
    favRepos.insert(index, value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  List<String> _favUsers = [];
  List<String> get favUsers => _favUsers;
  set favUsers(List<String> value) {
    _favUsers = value;
    secureStorage.setStringList('ff_favUsers', value);
  }

  void deleteFavUsers() {
    secureStorage.delete(key: 'ff_favUsers');
  }

  void addToFavUsers(String value) {
    favUsers.add(value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void removeFromFavUsers(String value) {
    favUsers.remove(value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void removeAtIndexFromFavUsers(int index) {
    favUsers.removeAt(index);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void updateFavUsersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    favUsers[index] = updateFn(_favUsers[index]);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void insertAtIndexInFavUsers(int index, String value) {
    favUsers.insert(index, value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  List<String> _searches = [];
  List<String> get searches => _searches;
  set searches(List<String> value) {
    _searches = value;
    secureStorage.setStringList('ff_searches', value);
  }

  void deleteSearches() {
    secureStorage.delete(key: 'ff_searches');
  }

  void addToSearches(String value) {
    searches.add(value);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void removeFromSearches(String value) {
    searches.remove(value);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void removeAtIndexFromSearches(int index) {
    searches.removeAt(index);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void updateSearchesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searches[index] = updateFn(_searches[index]);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void insertAtIndexInSearches(int index, String value) {
    searches.insert(index, value);
    secureStorage.setStringList('ff_searches', _searches);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}

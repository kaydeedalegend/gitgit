import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
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
  set favRepos(List<String> _value) {
    _favRepos = _value;
    secureStorage.setStringList('ff_favRepos', _value);
  }

  void deleteFavRepos() {
    secureStorage.delete(key: 'ff_favRepos');
  }

  void addToFavRepos(String _value) {
    _favRepos.add(_value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void removeFromFavRepos(String _value) {
    _favRepos.remove(_value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void removeAtIndexFromFavRepos(int _index) {
    _favRepos.removeAt(_index);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void updateFavReposAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _favRepos[_index] = updateFn(_favRepos[_index]);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  void insertAtIndexInFavRepos(int _index, String _value) {
    _favRepos.insert(_index, _value);
    secureStorage.setStringList('ff_favRepos', _favRepos);
  }

  List<String> _favUsers = [];
  List<String> get favUsers => _favUsers;
  set favUsers(List<String> _value) {
    _favUsers = _value;
    secureStorage.setStringList('ff_favUsers', _value);
  }

  void deleteFavUsers() {
    secureStorage.delete(key: 'ff_favUsers');
  }

  void addToFavUsers(String _value) {
    _favUsers.add(_value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void removeFromFavUsers(String _value) {
    _favUsers.remove(_value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void removeAtIndexFromFavUsers(int _index) {
    _favUsers.removeAt(_index);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void updateFavUsersAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _favUsers[_index] = updateFn(_favUsers[_index]);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  void insertAtIndexInFavUsers(int _index, String _value) {
    _favUsers.insert(_index, _value);
    secureStorage.setStringList('ff_favUsers', _favUsers);
  }

  List<String> _searches = [];
  List<String> get searches => _searches;
  set searches(List<String> _value) {
    _searches = _value;
    secureStorage.setStringList('ff_searches', _value);
  }

  void deleteSearches() {
    secureStorage.delete(key: 'ff_searches');
  }

  void addToSearches(String _value) {
    _searches.add(_value);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void removeFromSearches(String _value) {
    _searches.remove(_value);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void removeAtIndexFromSearches(int _index) {
    _searches.removeAt(_index);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void updateSearchesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _searches[_index] = updateFn(_searches[_index]);
    secureStorage.setStringList('ff_searches', _searches);
  }

  void insertAtIndexInSearches(int _index, String _value) {
    _searches.insert(_index, _value);
    secureStorage.setStringList('ff_searches', _searches);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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

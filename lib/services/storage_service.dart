import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static final StorageService _instance = StorageService._internal();

  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  Future<void> saveApartments(List<String> apartments) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('apartments', apartments);
  }

  Future<List<String>> loadApartments() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('apartments') ?? [];
  }

  Future<void> saveBills(List<String> bills) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('bills', bills);
  }

  Future<List<String>> loadBills() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('bills') ?? [];
  }
}
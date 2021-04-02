import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static const String AUTH_TOKEN = "auth_token";
  static const String ADDRESS_LAT = "address_lat";
  static const String ADDRESS_LONG = "address_long";

  Future<Null> storeAuthToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(PreferenceManager.AUTH_TOKEN, token);
  }

  Future<String?> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(PreferenceManager.AUTH_TOKEN);
  }

  Future<Null> clearAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(PreferenceManager.AUTH_TOKEN);
  }

  Future<Null> storeAddressLocationCoordinates(double lat, double long) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(PreferenceManager.ADDRESS_LONG, long);
    await prefs.setDouble(PreferenceManager.ADDRESS_LAT, lat);
  }

  Future<double?> getAddressLocationCoordinateLat() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(PreferenceManager.ADDRESS_LAT);
  }

  Future<double?> getAddressLocationCoordinateLong() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(PreferenceManager.ADDRESS_LONG);
  }
}

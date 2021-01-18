import 'dart:convert';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart';

import 'models/ip_location.dart';

class FirebaseInit {
  static init() async {
    await Firebase.initializeApp();
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    FirebaseAnalytics analytics = FirebaseAnalytics();
    analytics.setUserId(userCredential.user.uid);
    IPLocation location = await getLocation();
    analytics.setUserProperty(name: "IP", value: location.ip);
    analytics.setUserProperty(name: "State", value: location.stateProv);
    analytics.setUserProperty(name: "City", value: location.city);
    analytics.setUserProperty(name: "ISP", value: location.isp);
    analytics.setUserProperty(name: "Zip", value: location.zipcode);
    final now = DateTime.now();
    analytics.setUserProperty(
        name: "lastTimeAccessed",
        value: DateTime(now.year, now.month, now.day, now.hour, now.minute)
            .toString());
    analytics.logAppOpen();
  }
  static Future<IPLocation> getLocation() async {
    Response _response = await get(
        "https://api.ipgeolocation.io/ipgeo?apiKey=3c420380d7b04ef8a47ac604a7ce8cbc");
    if (_response.statusCode == 200) {
      final body = jsonDecode(_response.body);
      IPLocation ipLocation = IPLocation.fromJson(body);
      return ipLocation;
    } else {
      throw Exception(
          "Failed to load IP info. StatusCode: ${_response.statusCode}");
    }
  }
}

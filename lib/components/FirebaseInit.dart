import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'models/ip_location.dart';

class FirebaseInit {
  static init() async {
    await Firebase.initializeApp();
    UserCredential userCredential =
        await FirebaseAuth.instance.signInAnonymously();
    FirebaseAnalytics analytics = FirebaseAnalytics();
    analytics.setUserId(userCredential.user.uid);
    IPLocation location = await IPLocation.getLocation();
    analytics.setUserProperty(name: "IP", value: location.query);
    analytics.setUserProperty(name: "State", value: location.regionName);
    analytics.setUserProperty(name: "City", value: location.city);
    analytics.setUserProperty(name: "ISP", value: location.isp);
    analytics.setUserProperty(name: "Zip", value: location.zip);
    final now = DateTime.now();
    analytics.setUserProperty(
        name: "lastTimeAccessed",
        value: DateTime(now.year, now.month, now.day, now.hour, now.minute)
            .toString());
    analytics.logAppOpen();
  }
}

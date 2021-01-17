import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class Licences {
  static load() async {
    //OFL for Google Fonts
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('assets/licenses/OFL.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });
    //Unsplash license for picture
    LicenseRegistry.addLicense(() async* {
      final unsplashLicense =
          await rootBundle.loadString("assets/licenses/Unsplash.txt");
      yield LicenseEntryWithLineBreaks(["unsplash"], unsplashLicense);
    });
  }
}

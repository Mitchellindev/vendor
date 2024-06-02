import 'package:broadcaadvendor/app.dart';
import 'package:broadcaadvendor/features/location/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  appInitialization();
  await LocationServiceClass.getCurrentLocation();
  print({
    "latitude": LocationServiceClass.latitude,
    "longitude": LocationServiceClass.longitude,
    "country": LocationServiceClass.country
  });
  runApp(const MyApp());
}

appInitialization() async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  // await initializeDependencies();
  FlutterNativeSplash.remove();
}

// import 'package:geolocator/geolocator.dart';

import 'package:location_plus/location_plus.dart';

class LocationServiceClass {
  static late dynamic locality;
  static late dynamic postalCode;
  static late dynamic administrativeArea;
  static late dynamic country;
  static late dynamic latitude;
  static late dynamic longitude;
  static late dynamic ipAddress;
  static Future<void> getCurrentLocation() async {
    var result = await LocationPlus.getCurrentLocation();

    print(result);
    locality = result['locality'];
    postalCode = result['postalCode'];
    administrativeArea = result['administrativeArea'];
    country = result['country'];
    latitude = double.parse(result['latitude']);
    longitude = double.parse(result['longitude']);
    ipAddress = result['ipAddress'];
  }

  // static Future<Position> determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Location permissions are denied');
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permanently denied, we cannot request permissions.');
  //   }

  //   return await Geolocator.getCurrentPosition();
  // }
}

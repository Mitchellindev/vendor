// import 'package:geolocator/geolocator.dart';

// import 'package:location/location.dart';

// import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';

class LocationServiceClass {
  // static late dynamic locality;
  // static late dynamic postalCode;
  // static late dynamic administrativeArea;
  // static late dynamic country;
  // static late dynamic latitude;
  // static late dynamic longitude;
  // static late dynamic ipAddress;
  // static Future<void> getCurrentLocation() async {
  //   var result = await LocationPlus.getCurrentLocation();

  //   logger.e(result);
  //   locality = result['locality'];
  //   postalCode = result['postalCode'];
  //   administrativeArea = result['administrativeArea'];
  //   country = result['country'];
  //   latitude = double.parse(result['latitude']);
  //   longitude = double.parse(result['longitude']);
  //   ipAddress = result['ipAddress'];
  // }

  // static Future<LocationData?> getLocation() async {
  //   Location location = Location();

  //   late bool serviceEnabled;
  //   late PermissionStatus permissionGranted;
  //   late LocationData locationData;

  //   serviceEnabled = await location.serviceEnabled();
  //   if (!serviceEnabled) {
  //     serviceEnabled = await location.requestService();
  //     if (!serviceEnabled) {
  //       return null;
  //     }
  //   }

  //   permissionGranted = await location.hasPermission();
  //   if (permissionGranted == PermissionStatus.denied) {
  //     permissionGranted = await location.requestPermission();
  //     if (permissionGranted != PermissionStatus.granted) {
  //       null;
  //     }
  //   }

  //   locationData = await location.getLocation();
  //   return locationData;
  // }

  static Future<Address> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    final Position position = await Geolocator.getCurrentPosition();
    GeoCode geoCode = GeoCode();

    return await geoCode.reverseGeocoding(
        latitude: position.latitude, longitude: position.longitude);
  }
}

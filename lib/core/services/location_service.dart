import 'package:location/location.dart';

class LocationService {
  static Future<bool> checkEnabledAndPermission() async {
    final Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied ) {
      permissionGranted = await location.requestPermission();
      if(permissionGranted.index==2||permissionGranted==PermissionStatus.deniedForever){
print("hello ${permissionGranted}");
      }
      if (permissionGranted != PermissionStatus.granted) {
        return false;
      }
    }
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return false;
      }
    }
    return true;
  }
}

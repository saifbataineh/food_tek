import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_constants.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:food_tek/features/track/views/widgets/delivery_guy_deatils_widget.dart';
import 'package:food_tek/features/track/views/widgets/order_track_status_widget.dart';
import 'package:food_tek/features/track/views/widgets/your_location_details_widget.dart';
import 'package:food_tek/generated/l10n.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';


class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  State<TrackPage> createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  LatLng sourceDes = LatLng(37.33500926, -122.03272188);
  LatLng destination = LatLng(37.33429383, -122.06600055);
  LatLng carPosition = LatLng(37.33382, -122.0498);

  List<LatLng> polyLineCoordinatesFromResturant = [];
  List<LatLng> polyLineCoordinatesToHome = [];
  void getPolyPointsFromResturant() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: googleApiKey,
        request: PolylineRequest(
            origin: PointLatLng(sourceDes.latitude, sourceDes.longitude),
            destination:
                PointLatLng(carPosition.latitude, carPosition.longitude),
            mode: TravelMode.driving));
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polyLineCoordinatesFromResturant
            .add(LatLng(point.latitude, point.longitude));
      }
    } else {
      print('No points found in polyline result');
    }
    setState(() {});
  }

  void getPolyPointsToHome() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        googleApiKey: googleApiKey,
        request: PolylineRequest(
            origin: PointLatLng(carPosition.latitude, carPosition.longitude),
            destination:
                PointLatLng(destination.latitude, destination.longitude),
            mode: TravelMode.driving));
    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polyLineCoordinatesToHome.add(LatLng(point.latitude, point.longitude));
      }
    } else {
      print('No points found in polyline result');
    }
    setState(() {});
  }

  Set<Marker> markers = {};
  getCustomIconMarker() async {
    markers.addAll({
      Marker(
          icon: await BitmapDescriptor.asset(
              ImageConfiguration(), AppImageStrings.homeLogo),
          markerId: MarkerId("initial Location"),
          position: sourceDes),
      Marker(
          zIndex: 10,
          infoWindow: InfoWindow(title: "hello world", snippet: "distance"),
          icon: await BitmapDescriptor.asset(
              ImageConfiguration(), AppImageStrings.trackedCar),
          markerId: MarkerId("car Location"),
          position: carPosition),
      Marker(
          icon: await BitmapDescriptor.asset(
              ImageConfiguration(), AppImageStrings.resturantLogo),
          markerId: MarkerId("second Location"),
          position: destination),
    });
    setState(() {});
  }

  @override
  void initState() {
    getPolyPointsFromResturant();
    getPolyPointsToHome();
    getCustomIconMarker();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
            initialCameraPosition: CameraPosition(
              target: sourceDes,
              zoom: 13.5,
            ),
            markers: markers,
            polylines: {
              Polyline(
                  width: 2,
                  polylineId: PolylineId("route"),
                  points: polyLineCoordinatesFromResturant,
                  color: AppColors.mainColor),
              Polyline(
                  width: 2,
                  polylineId: PolylineId("route2"),
                  points: polyLineCoordinatesToHome,
                  color: AppColors.black),
            }),
        Positioned(
          width: responsiveWidth(context, 432),
          top: responsiveHeight(context, 61),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: responsiveWidth(context, 24)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Intl.getCurrentLocale() == 'en'
                        ? Icons.arrow_back
                        : Icons.arrow_forward)),
                Expanded(
                    child: FoodSearchWidget(
                  showFilterButton: false,
                )),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: responsiveWidth(context, 21),
                  vertical: responsiveHeight(context, 28)),
              height: responsiveHeight(context, 300),
              width: responsiveWidth(context, 432),
              color: Theme.of(context).cardColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(S.of(context).on_the_way),
                      TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: AppColors.mainColor),
                        onPressed: () {
                          AppNavigatorService.pushNamed(context,
                              routeName: Routes.orderDetails);
                        },
                        child: Text(S.of(context).all_details),
                      ),
                    ],
                  ),
                  Flexible(
                    child: Row(
                      spacing: responsiveWidth(context, 10),
                      children: [
                        Expanded(
                          child: OrderTrackStatusWidget(
                            title: S.of(context).order_placed,
                            value: 1,
                          ),
                        ),
                        Expanded(
                          child: OrderTrackStatusWidget(
                            title:  S.of(context).on_the_way,
                          ),
                        ),
                        Expanded(
                          child: OrderTrackStatusWidget(
                            title:  S.of(context).delivered,
                            value: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  DeliveryGuyDetailsWidget(),
                  YourLocationDetailsWidget()
                ],
              ),
            )),
      ]),
    );
  }
}

/*   Future<BitmapDescriptor> getCustomIcon(String image,
      [bool showbg = false]) async {
    return ColoredBox(
        color: showbg ? AppColors.whiteGrey : Colors.transparent,
        child: Transform.rotate(
          angle: pi / 3.5,
          child: RotatedBox(
            quarterTurns: 0,
            child: Image.asset(image),
          ),
        )).toBitmapDescriptor();
  } */

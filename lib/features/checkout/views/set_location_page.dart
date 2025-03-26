import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/food_search_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({super.key});

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage>
    with TickerProviderStateMixin {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  double _markerPositionX = 37.7749;
  double _markerPositionY = -122.4194;
  AnimationController? _animationController;
  Animation? _animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween(
      begin: Offset(_markerPositionX, _markerPositionY),
      end: Offset(_markerPositionX + 1, _markerPositionY + 1),
    ).animate(_animationController!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              markers: {
                Marker(
                  markerId: MarkerId('marker'),
                  position: LatLng(_markerPositionX, _markerPositionY),
                  icon: BitmapDescriptor.defaultMarker,
                ),
                
              },

              padding: EdgeInsets.only(
                top: responsiveHeight(
                  context,
                  550,
                ),
              ),
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.terrain,
              onMapCreated: (GoogleMapController controller) {
                controller.animateCamera(CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: LatLng(_markerPositionX, _markerPositionY),
                    zoom: 14.0,
                  ),
                ));
              },
            ),
            Positioned(
                bottom: responsiveHeight(context, 86),
                left: responsiveWidth(context, 48),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: responsiveWidth(context, 343),
                  height: responsiveHeight(context, 154),
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: responsiveWidth(context, 24),
                      vertical: responsiveHeight(context, 24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "your location",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Text(
                        "123 Al-Madina Street, Abdali, Amman, Jordan",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      //TODO:navigate to inforamation screen
                      Container(
                        margin:
                            EdgeInsets.only(top: responsiveHeight(context, 10)),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: responsiveWidth(context, 24)),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text("Set Location")),
                      )
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(child: FoodSearchWidget()),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

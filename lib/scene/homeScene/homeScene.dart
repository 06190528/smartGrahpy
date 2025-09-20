import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneController.dart';

class HomeScene extends ConsumerStatefulWidget {
  @override
  _HomeSceneState createState() => _HomeSceneState();
}

class _HomeSceneState extends ConsumerState<HomeScene> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    final _homeSceneController = ref.read(homeSceneControllerProvider);
    if (_homeSceneController.homeSceneWidgets == null)
      _homeSceneController.setHomeSceneWidgets(ScreenSize.width, setState);
    final width = ScreenSize.width;

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(27.98785, 86.9250), // エベレスト山の位置
              zoom: 8,
            ),
            mapType: MapType.terrain,
            polygons: _homeSceneController.mapShape.polygons,
            polylines: _homeSceneController.mapShape.polylines,
            markers: _homeSceneController.mapShape.nowSetMarkers,
            onMapCreated: (controller) {
              _homeSceneController.setMapController(controller);
            },
            myLocationButtonEnabled: false,
            compassEnabled: false,
            rotateGesturesEnabled: false,
            onTap: (latLng) {
              _homeSceneController.onTapAndSetNowSetMarkers(latLng, setState);
            },
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: SizedBox(
              width: width * 0.5,
              child: _homeSceneController.homeSceneWidgets!.searchField(
                ref,
                setState,
              ),
            ),
          ),
          _homeSceneController.commonMenuWidget.leftSlideMenu(
              context,
              setState,
              _homeSceneController.homeSceneWidgets!.noteModeMenu(),
              width * 0.2),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneController.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWIdgets.dart';

class HomeScene extends ConsumerStatefulWidget {
  @override
  _HomeSceneState createState() => _HomeSceneState();
}

class _HomeSceneState extends ConsumerState<HomeScene> {
  late GoogleMapController _mapController;

  @override
  Widget build(BuildContext context) {
    final homeSceneController = ref.watch(homeSceneControllerProvider);
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
            polygons: homeSceneController.mapShape.polygons,
            polylines: homeSceneController.mapShape.polylines,
            markers: homeSceneController.mapShape.nowSetMarkers,
            onMapCreated: (controller) {
              homeSceneController.setMapController(controller);
            },
            myLocationButtonEnabled: false,
            compassEnabled: false,
            rotateGesturesEnabled: false,
            onTap: (latLng) {
              homeSceneController.onTapAndSetNowSetMarkers(latLng, setState);
            },
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: SizedBox(
              width: width * 0.5,
              child: HomeSceneWidgets.searchField(
                ref,
                setState,
              ),
            ),
          ),
          homeSceneController.commonMenuWidget.leftSlideMenu(
              context,
              setState,
              HomeSceneWidgets.noteMenu(ScreenSize.width * 0.2),
              ScreenSize.width * 0.2),
        ],
      ),
    );
  }
}

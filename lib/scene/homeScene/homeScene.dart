import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneProvider.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWIdgets.dart';

class HomeScene extends ConsumerStatefulWidget {
  @override
  _HomeSceneState createState() => _HomeSceneState();
}

class _HomeSceneState extends ConsumerState<HomeScene> {
  final TextEditingController _searchController = TextEditingController();
  late GoogleMapController _mapController;
  final Set<Polygon> _polygons = {};
  bool _isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    final homeSceneController = ref.watch(homeSceneControllerProvider);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(27.98785, 86.9250), // エベレスト山の位置
              zoom: 8,
            ),
            mapType: MapType.terrain,
            polygons: _polygons,
            onMapCreated: (controller) {
              _mapController = controller;
            },
            myLocationButtonEnabled: false,
            compassEnabled: false,
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Container(
              width: width * 0.05,
              height: width * 0.05,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.menu, color: Colors.black, size: width * 0.03),
                onPressed: () {
                  setState(() {
                    _isMenuVisible = !_isMenuVisible;
                  });
                },
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: 0,
            right: _isMenuVisible ? 0 : -200,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.primaryDelta! > 20) {
                  setState(() {
                    _isMenuVisible = false;
                  });
                }
              },
              child: Container(
                width: 200,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: HomeSceneWidgets.menu(),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: SizedBox(
              width: width * 0.5,
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: '検索...',
                  filled: true,
                  fillColor: Color.fromARGB(140, 255, 255, 255),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      final query = _searchController.text;
                      homeSceneController
                          .searchAndNavigate(
                              query, _mapController, _polygons, setState)
                          .then((_) {});
                    },
                  ),
                ),
                onSubmitted: (query) {
                  homeSceneController
                      .searchAndNavigate(
                          query, _mapController, _polygons, setState)
                      .then((_) {
                    setState(() {});
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

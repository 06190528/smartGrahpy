import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/scene/homeScene/homeScene.dart';

void main() async {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScene(),
      debugShowCheckedModeBanner: false, // デバックモードのバナーを非表示
    );
  }
}

// class MapSample extends StatefulWidget {
//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   late GoogleMapController _mapController;
//   final LatLng targetLocation = LatLng(0, 0); // 東京の緯度と経度
//   bool _isStaticMap = false;
//   late Uint8List _imageData;
//   bool _isLoading = true;
//   final double _minZoomLevel = 1.0; // 動的マップの最小ズームレベル

//   @override
//   void initState() {
//     super.initState();
//   }

//   Future<void> _fetchMapImage() async {
//     final response = await http.get(Uri.parse(url));

//     if (response.statusCode == 200) {
//       setState(() {
//         _imageData = response.bodyBytes;
//         _isLoading = false;
//       });
//     } else {
//       throw Exception('Failed to load map image');
//     }
//   }

//   void _onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//   }

//   void _onCameraMove(CameraPosition position) async {
//     if (position.zoom <= _minZoomLevel && !_isStaticMap) {
//       setState(() {
//         _isStaticMap = true;
//         _isLoading = true;
//       });
//       await _fetchMapImage();
//     } else if (position.zoom > _minZoomLevel && _isStaticMap) {
//       setState(() {
//         _isStaticMap = false;
//       });
//     }
//     print(position.zoom);
//     // _moveCamera();
//   }

//   void _moveCamera() async {
//     _mapController.moveCamera(CameraUpdate.zoomOut());
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _isStaticMap
//           ? Center(
//               child: _isLoading
//                   ? CircularProgressIndicator()
//                   : SizedBox.expand(
//                       child: Image.memory(
//                         _imageData,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//             )
//           : GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: targetLocation,
//                 zoom: 4,
//               ),
//               onCameraMove: _onCameraMove,
//               mapType: MapType.hybrid, // 地形表示に設定
//               compassEnabled: false,
//             ),
//     );
//   }
// }

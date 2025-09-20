import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/common/const.dart';
import 'package:smart_graph_app/common/logic.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';
import 'package:smart_graph_app/data/local.dart';
import 'package:smart_graph_app/scene/homeScene/homeScene.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  await DatabaseService().database;
  final container = ProviderContainer();
  await Initialize.initialize(container);
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().setSize(MediaQuery.of(context).size);
    return MaterialApp(
      home: HomeScene(),
      debugShowCheckedModeBanner: false,
    );
  }
}

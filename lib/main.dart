import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/screens/home_view.dart';
import 'package:flutter_whatsapp/screens/camera_view.dart';

Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        fontFamily: 'OpenSans',
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E)
      ),
      home: HomeView(),
    );
  }
}


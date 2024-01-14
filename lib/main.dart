import 'package:flutter/material.dart';
import 'package:mi_proyecto_flutter/screens/home_screen.dart';
import 'package:mi_proyecto_flutter/screens/perfil.dart';
import 'package:mi_proyecto_flutter/screens/readjson.dart';
import 'package:mi_proyecto_flutter/screens/screen_ventana2.dart';
import 'package:mi_proyecto_flutter/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Proyecto Flutter',
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        'home': (_) => const HomeScreen(),
        'perfil': (_) => const Perfil(),
        'json': (_) => const ReadJson(),
        'card': (_) => const ScreenVentana2(),
      }
    );
  }
}

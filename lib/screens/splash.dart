import 'package:flutter/material.dart';
import 'package:mi_proyecto_flutter/screens/home_screen.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetoHome();
  }
  _navigatetoHome() async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('imagenes/compra.png'), width: 250, height: 250,),
            SizedBox(height: 20,
            ),
            Text('Hello ¡Welcome!', style: TextStyle(fontSize: 40, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}

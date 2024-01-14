import 'dart:ui';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Valeria Moreno'),
              ),
              ListTile(
                title: Text('Perfil'),
                leading: Icon(Icons.account_circle_rounded),
                onTap: () {
                  Navigator.pushNamed(context, 'perfil');
                },
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, 'home');
                },
              ),
              ListTile(
                title: Text('CARD'),
                leading: Icon(Icons.add_card),
                onTap: () {
                  Navigator.pushNamed(context, 'card');
                },
              ),
              ListTile(
                title: Text('PRODUCTOS JSON'),
                leading: Icon(Icons.description),
                onTap: () {
                  Navigator.pushNamed(context, 'json');
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
            "Online Store",
            style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(image: AssetImage('imagenes/roberto1.png')),
            ),
            Container(
              color: Colors.grey[100],
              padding: EdgeInsets.all(30.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: [
                     Text('Moda', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600)),
                      Image(image: AssetImage('assets/verity.png'), width: 150, height: 150,)
                    ],
                  ),
                  Column(
                    children: [
                      Text('Accesorios', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600)),
                      Image(image: AssetImage('imagenes/reloj.png'), width: 150, height: 150,)
                    ],
                  ),
                  Column(
                    children: [
                      Text('Salud y Belleza', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600)),
                      Image(image: AssetImage('assets/laura.png'), width: 150, height: 150,)
                    ],
                  ),
                  Column(
                    children: [
                      Text('Hogar y Decoración', style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w600)),
                      Image(image: AssetImage('imagenes/kirill.png'), width: 150, height: 150,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:mi_proyecto_flutter/screens/home_screen.dart';
class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
                  color: Colors.deepPurpleAccent,
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
        title: Text('Mi Perfil', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: const Center(
        child: Text('Bienvenido'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ScreenVentana2 extends StatelessWidget {
  const ScreenVentana2({super.key});

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
        title: Text('Cards de Información', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('Diseño de CARD', style: TextStyle(fontSize: 20, color: Colors.indigo)),
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20),
              elevation: 10,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Caracilia Conjunto deportivo'),
                      subtitle: Text('45'),
                      leading: Image(image: NetworkImage('https://m.media-amazon.com/images/I/61fB+IIW6eL._AC_SY445_.jpg'),width: 50, height: 50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){}, child: const Text('Aceptar', style: TextStyle(color: Colors.blue))),
                        TextButton(
                            onPressed: (){}, child: const Text('Cancelar', style: TextStyle(color: Colors.blue)))
                      ],
                    )
                  ],
                ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20),
              elevation: 10,
              child: Column(
                children: [
                  const ListTile(
                    title: Text('YESNO - Peto/overol largo'),
                    subtitle: Text('35'),
                    leading: Image(image: NetworkImage(
                        'https://m.media-amazon.com/images/I/51f-UbxmNvL._AC_SX342_.jpg'),
                        width: 60, height: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){}, child: const Text('Aceptar', style: TextStyle(color: Colors.blue))),
                      TextButton(
                          onPressed: (){}, child: const Text('Cancelar', style: TextStyle(color: Colors.blue)))
                    ],
                  )
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(20),
              elevation: 10,
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Cárdigan tipo kimono'),
                    subtitle: Text('40'),
                    leading: Image(image: NetworkImage(
                        'https://m.media-amazon.com/images/I/8147GlIb8oL._AC_SX466_.jpg'),
                        width: 50, height: 50)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: (){}, child: const Text('Aceptar', style: TextStyle(color: Colors.blue))),
                      TextButton(
                          onPressed: (){}, child: const Text('Cancelar', style: TextStyle(color: Colors.blue)))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

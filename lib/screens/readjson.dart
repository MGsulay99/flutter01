import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:mi_proyecto_flutter/providers/product.dart';
import 'package:flutter/services.dart' as rootBundle;

class ReadJson extends StatelessWidget {
  const ReadJson({super.key});

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
        title: Text('Productos Json', style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data){
          if(data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if(data.hasData) {
            var items = data.data as List<ProductDataModel>;
            return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 6),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 50,
                          child: Image(image: NetworkImage(items[index].imageURL.toString()),
                            fit: BoxFit.fill,),
                        ),
                        Expanded(child: Container(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Padding(padding: EdgeInsets.only(left: 20, right: 8),
                                 child: Text(items[index].name.toString(), style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),),
                              Padding(padding: EdgeInsets.only(left: 20, right: 8),
                                child: Text(items[index].oldPrice.toString()),)
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                );
              }
            );
          }else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      )
    );
  }
  Future<List<ProductDataModel>>ReadJsonData() async{
    final jsondata = await rootBundle.rootBundle.loadString('data/productos.json');
    final list = json.decode(jsondata) as List<dynamic>;
    
    return list.map((e) => ProductDataModel.fromJson(e)).toList();
  }
}

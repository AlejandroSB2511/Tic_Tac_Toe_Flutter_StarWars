import 'package:flutter/material.dart';

class Personajes extends StatelessWidget {

  Personajes({super.key});




  List personajes = <String>[
    "Calrissian",
    "Chewbacca",
    "Gon",
    "Kenobi",
    "Leia",
    "Luke",
    "R2D2",
    "C3PO",
    "Han",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Choose your character",),
        centerTitle: true,
          automaticallyImplyLeading: false,
        backgroundColor: Colors.amberAccent
      ),
      body: SafeArea(
          child: listaEstaticaPersonajes(personajes,context),
      ),
    );
  }
  ListView listaEstaticaPersonajes(List personajes, BuildContext context) {

    return ListView(children: [
      ListTile(title:  Text(personajes[0]),
        leading: Image.asset("assets/images/light_side/calrissian_lando.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: const Border(bottom: BorderSide(color: Colors.black87,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero', arguments: personajes[0]);
        },
      ),
      ListTile(title: Text(personajes[1]),
        leading: Image.asset("assets/images/light_side/chewbacca.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.red[800]!,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[1]);
        },
      ),
      ListTile(title: Text(personajes[2]),
        leading: Image.asset("assets/images/light_side/gon_jinn_qui.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.black87,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[2]);
        },
      ),
      ListTile(title: Text(personajes[3]),
        leading: Image.asset("assets/images/light_side/kenobi_obiwan.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.red[800]!,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[3]);
        },
      ),
      ListTile(title: Text(personajes[4]),
        leading: Image.asset("assets/images/light_side/leia_princess.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.black87,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[44]);
        },
      ),
      ListTile(title: Text(personajes[5]),
        leading: Image.asset("assets/images/light_side/luke_skywalker.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.red[800]!,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[5]);
        },
      ),
      ListTile(title: Text(personajes[6]),
        leading: Image.asset("assets/images/light_side/r2d2.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.black87,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[6]);
        },
      ),
      ListTile(title: Text(personajes[7]),
        leading: Image.asset("assets/images/light_side/c3p0.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.red[800]!,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[7]);
        },
      ),
      ListTile(title: Text(personajes[8]),
        leading: Image.asset("assets/images/light_side/han_solo.png",width: 60,),
        trailing: Icon(Icons.arrow_forward_ios),
        shape: Border(bottom: BorderSide(color: Colors.black87,width: 1.2)),
        minTileHeight: 120,
        onTap: () {
          Navigator.pushNamed(context, '/seleccion_tablero',arguments: personajes[8]);
        },
      ),
    ],
    );
  }
}

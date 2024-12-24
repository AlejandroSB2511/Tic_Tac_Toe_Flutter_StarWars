import 'package:flutter/material.dart';

class Battle extends StatefulWidget {
  const Battle({super.key});

  @override
  State<Battle> createState() => _BattleState();
}

class _BattleState extends State<Battle> {
  @override
  Widget build(BuildContext context) {
    final double tablero = ModalRoute.of(context)?.settings.arguments as double;
    return Scaffold(
      appBar: AppBar(
          title: Text("Fight!!",),
          centerTitle: true,
          backgroundColor: Colors.amberAccent
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(left: 10,top: 10, child: Container(width: 390,height: 100,color: Colors.amber[200],)),
          Positioned(left: 10,top: 20, child: Container(width: 100,height: 80,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red[300]),child: Image.asset("assets/images/light_side/luke_skywalker.png",),),),
            Positioned(left: 120,top: 40,child: Text("Luke Skywalker",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),
            Positioned(left: 10,top: 120, child: Container(width: 390,height: 100,color: Colors.grey[400],)),
            Positioned(left: 300,top: 130, child: Container(width: 100,height: 80,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black45),child: Image.asset("assets/images/dark_side/darth_vader.png",),),),
            Positioned(left: 190,top: 160,child: Text("Darth Vader",style: TextStyle(fontSize: 20),)),
          ],
        ),
      ),
    );
  }

}

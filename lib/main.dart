import 'package:flutter/material.dart';
import 'package:flutter_drawer_greatest/Views/Drawerpgm.dart';

void main()=> runApp(Myhome());

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("OPERATIONS")),
        ),
        drawer: MainDrawer(),
        body: Container(
          child:
          Center(child: Text("Choose your operations...")),
        ),
      ),
    );
  }
}

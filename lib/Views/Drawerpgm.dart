import 'package:flutter/material.dart';
import 'package:flutter_drawer_greatest/Views/Even%20or%20Odd.dart';
import 'package:flutter_drawer_greatest/Views/Greatest.dart';
import 'package:flutter_drawer_greatest/Views/Logout.dart';
import 'package:flutter_drawer_greatest/Views/Smallest.dart';
import 'package:flutter_drawer_greatest/main.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
         children: [
           UserAccountsDrawerHeader(
              currentAccountPicture: Hero(tag: "pic",
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://i.pinimg.com/originals/e9/9b/92/e99b9232cdd16b5629c4bd68cd6cb1f2.jpg"),
                  )),
               accountName: Text("Arathy Anoop"),
               accountEmail: Text("arathysree97@gmail.com")),

           Card(
             elevation: 10.0,
             child: ListTile(

               onTap: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Myhome()));
               },

               title: Text("My Profile"),
               trailing: Icon(Icons.person),
             ),
           ),

           Card(
             elevation: 10.0,
             child: ListTile(

               onTap: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Greater()));

               },

               title: Text("Greatest"),
               trailing: Icon(Icons.arrow_back_ios),
             ),
           ),

           Card(
             elevation: 10.0,
             child: ListTile(

               onTap: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Smaller()));

               },

               title: Text("Smallest"),
               trailing: Icon(Icons.arrow_forward_ios),
             ),
           ),

           Card(
             elevation: 10.0,
             child: ListTile(

               onTap: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Oddeven()));

               },

               title: Text("Even or Odd"),
               trailing: Icon(Icons.exposure_zero),
             ),
           ),

           Card(
             elevation: 10.0,
             child: ListTile(

               onTap: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Logout()));

               },

               title: Text("Logout"),
               trailing: Icon(Icons.account_circle),
             ),
           ),
         ],
      ),
    );
  }
}

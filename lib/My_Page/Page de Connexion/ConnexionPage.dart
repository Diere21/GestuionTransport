import'package:flutter/material.dart';
import 'package:gestion_transport/My_Page/Home_Page.dart';


//Ma page de connexion
class PageConnexion extends StatelessWidget{
  const PageConnexion({Key? key}): super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("Page de connexion"),
      ),
     body: Center(
       child: Column(
         children: [
           ElevatedButton(
             onPressed:(){
               Navigator.push(
                   context,
                   PageRouteBuilder(
                       pageBuilder:(_, __, ___) =>HomePage()
                   )
               );
             },
             child: Text("Se Connecter"),
           ),
         ],
       ),
     ) ,
    );
  }

}
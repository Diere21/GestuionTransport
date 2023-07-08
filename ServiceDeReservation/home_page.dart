import 'package:flutter/material.dart';
import 'TransportInterurbain.dart';
import 'TransportUrbain.dart';
import 'covoiturage.dart';


class HomeReservation extends StatefulWidget  {

  const  HomeReservation({Key? key}) : super(key: key);

  _HomeReservationState createState() => _HomeReservationState();
}

class _HomeReservationState extends State< HomeReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Module de reservation"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(title: "TransportInterurbain", icon: Icons.directions_bus, warna: Colors.blue,),
            MyMenu(title: "TransportUrbain", icon: Icons.directions_car, warna: Colors.blue,),
            MyMenu(title: "Covoiturage", icon:  Icons.car_rental, warna: Colors.blue,),



          ],
        ),
      ),


    );

  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title = '', this.icon = Icons.home, this.warna = Colors.cyan});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {
              if (title == "TransportInterurbain"){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TransportInterurbain()));

              }  else if ( title == "TransportUrbain"){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TransportUrbain()));

              } else if ( title == "Covoiturage"){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Covoiturage()));
              }


            },
            splashColor: Colors.green,
            child: Center(
                child:
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Icon(
                    icon,
                    size: 70.0,
                    color: warna,
                  ),
                  Text(title, style: TextStyle(fontSize: 17.0))
                ]))));
  }
}


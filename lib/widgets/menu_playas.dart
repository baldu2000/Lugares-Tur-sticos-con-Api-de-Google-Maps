import 'package:flutter/material.dart';
import 'package:turisticas_app/screens/playas/playa_eltunco.dart';
import 'package:turisticas_app/screens/playas/playa_lapuntilla.dart';
import 'package:turisticas_app/widgets/widgets.dart';

class Menu_Playas extends StatefulWidget {
  @override
  _Menu_PlayasState createState() => _Menu_PlayasState();
}

class _Menu_PlayasState extends State<Menu_Playas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playas'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_add),
            tooltip: 'Change English',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://www.adventurouskate.com/wp-content/uploads/2015/04/DSC_0326.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'En esta sección puedes elegir tu destino',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Playa_ElTunco()),
                );
              },
              child: Text('Playa El Tunco'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Playa_LaPuntilla()),
                );
                //codigo de enlace Playa_LaPuntilla
              },
              child: Text('Playa La Puntilla'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Playa'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Playa'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: const Text('Playa'),
            ),
          ],
        ),
      ),
    );
  }
}

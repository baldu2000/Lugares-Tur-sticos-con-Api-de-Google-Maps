import 'package:flutter/material.dart';
import 'package:turisticas_app/widgets/menu_playas.dart';
import 'package:turisticas_app/widgets/menu_hospitales.dart';
import 'package:turisticas_app/screens/playas/playa_eltunco.dart';
import 'package:turisticas_app/screens/hospitales/hospital_ginecologico.dart';
import 'package:turisticas_app/screens/hospitales/unidadsalud_puertolalibertad.dart';

class Menu_Principal extends StatefulWidget {
  @override
  _Menu_PrincipalState createState() => _Menu_PrincipalState();
}

class _Menu_PrincipalState extends State<Menu_Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
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
                  MaterialPageRoute(builder: (context) => Menu_Playas()),
                );
              },
              child: Text('Playas'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Volcanes'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Arqueología'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Lagos'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                //codigo de enlace
              },
              child: Text('Iglesias'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Menu_Hospitales()),
                );
              },
              child: Text('Hospitales'),
            ),
          ],
        ),
      ),
    );
  }
}

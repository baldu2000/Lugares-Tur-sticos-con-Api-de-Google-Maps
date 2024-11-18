import 'package:flutter/material.dart';
import 'package:turisticas_app/maps/playas/playas_maps.dart';
import 'package:turisticas_app/widgets/widgets.dart';
import 'package:turisticas_app/main.dart';

class Playa_ElTunco extends StatefulWidget {
  @override
  _Playa_ElTuncoState createState() => _Playa_ElTuncoState();
}

class _Playa_ElTuncoState extends State<Playa_ElTunco> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regresar al menú de sitios'),
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
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.network(
                    'https://www.adventurouskate.com/wp-content/uploads/2015/04/DSC_0326.jpg',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Playa El Tunco',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Disfruta de las hermosas playas de El Salvador en Playa El Tunco, un lugar perfecto para practicar surf y relajarte en la playa. También puedes visitar los bares y restaurantes de la zona para degustar la deliciosa comida local.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => playa_eltunco()),
                      );
                      // Código para ir a otra página o realizar alguna acción
                    },
                    child: Text('Como llegar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

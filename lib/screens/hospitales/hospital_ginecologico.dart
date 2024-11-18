import 'package:flutter/material.dart';
import 'package:turisticas_app/maps/hospitales/hospital_ginecologico.dart';
import 'package:turisticas_app/widgets/widgets.dart';
import 'package:turisticas_app/main.dart';

class Hospital_Ginecologico extends StatefulWidget {
  @override
  _Hospital_GinecologicoState createState() => _Hospital_GinecologicoState();
}

class _Hospital_GinecologicoState extends State<Hospital_Ginecologico> {
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
                    'https://centroginecologico.com.sv/wp-content/uploads/2020/12/quienes003.jpg',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hospital Centro Ginecologico',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dirección: Pasaje Martha Urbina y diagonal Dr. Luis Edmundo Vásquez, Colonia Médica, San Salvador',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Latitud y longitud: 13.709239964895998, -89.20241072068721',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Número de Contacto: (503) 2247-1122',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Hospital_Ginecologico()),
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

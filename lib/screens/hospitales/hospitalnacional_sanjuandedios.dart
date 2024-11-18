import 'package:flutter/material.dart';
import 'package:turisticas_app/maps/hospitales/hospitalnacional_sanjuandedios.dart';
import 'package:turisticas_app/widgets/widgets.dart';
import 'package:turisticas_app/main.dart';

class HospitalNacional_SanJuandeDios extends StatefulWidget {
  @override
  _HospitalNacional_SanJuandeDiosState createState() => _HospitalNacional_SanJuandeDiosState();
}

class _HospitalNacional_SanJuandeDiosState extends State<HospitalNacional_SanJuandeDios> {
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
                    'Hospital Nacional "San Juan de Dios" de Santa Ana',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dirección: Final 13 avenida sur, No. 1, Santa Ana, El Salvador',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Latitud y longitud: 13.992241580479563, -89.55130167835469',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Número de Contacto: (503) 2891-5000',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HospitalNacional_SanJuandeDios()),
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
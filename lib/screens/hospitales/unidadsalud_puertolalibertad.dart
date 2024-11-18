import 'package:flutter/material.dart';
import 'package:turisticas_app/maps/hospitales/unidadsalud_puertolalibertad.dart';
import 'package:turisticas_app/widgets/widgets.dart';
import 'package:turisticas_app/main.dart';

class UnidadSalud_PuertoLaLibertad extends StatefulWidget {
  @override
  _UnidadSalud_PuertoLaLibertadState createState() => _UnidadSalud_PuertoLaLibertadState();
}

class _UnidadSalud_PuertoLaLibertadState extends State<UnidadSalud_PuertoLaLibertad> {
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
                    'Unidad de Salud - Puerto de la Libertad',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Dirección: Antigua Calle a Conchalío, Puerto de La Libertad., Municipio de La Libertad',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Latitud y longitud: 13.486201645047293, -89.33879254952782',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Número de Contacto: 2355-9195',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UnidadSalud_PuertoLaLibertad()),
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

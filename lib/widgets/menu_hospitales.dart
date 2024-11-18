import 'package:flutter/material.dart';
import 'package:turisticas_app/screens/hospitales/hospital_ginecologico.dart';
import 'package:turisticas_app/screens/hospitales/hospitalnacional_sanjuandedios.dart';
import 'package:turisticas_app/screens/hospitales/unidadsalud_puertolalibertad.dart';
import 'package:turisticas_app/widgets/widgets.dart';

class Menu_Hospitales extends StatefulWidget {
  @override
  _Menu_HospitalesState createState() => _Menu_HospitalesState();
}

class _Menu_HospitalesState extends State<Menu_Hospitales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospitales'),
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
              'https://hes.salud.gob.sv/wp-content/uploads/2021/05/ECCFINALES-3-1-scaled-e1622496273433.jpg',
              width: 200,
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'En esta sección puedes ver los diferentes hospitales',
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
                  MaterialPageRoute(builder: (context) => Hospital_Ginecologico()),
                );
              },
              child: Text('Hospital Centro Ginecológico'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UnidadSalud_PuertoLaLibertad()),
                );
              },
              child: Text('Unidad de salud - Puerto de la Libertad'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => HospitalNacional_SanJuandeDios()),
                );
              },
              child: const Text('Hospital Nacional "San Juan de Dios" de Santa Ana'),
            ),
          ],
        ),
      ),
    );
  }
}

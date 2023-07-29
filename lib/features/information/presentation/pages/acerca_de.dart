import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';

class AcercaNosotros extends StatelessWidget {
  AcercaNosotros({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(
            Icons.keyboard_arrow_left_sharp,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                 Text(
                  'Acerca de nosotros',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '¿Quiénes somos? Nosotros somos Tecnologías Innovadoras de Chiapas (TICH) con el domicilio conocido en Calle Carretera Tuxtla Gutiérrez. - Portillo Zaragoza Km 21+500, Las Brisas, 29150, Suchiapa Chiapas. Somos una empresa encargada de innovar en ciertos estatutos. Nosotros actualmente somos estudaintes de la Universidad Politécnica de Chiapas, estudiando las siguientes carreras: \n\n•  Licenciatura e Administración y Gestión Empresarial.\n\n•  Ingeniería en Software-\n\nLos integrantes de esta empresa somos capaces de realizar las actividades propuestas, no siendo obstáculo para cada uno. Entre los integrantes del equipo se encuentran:\n\n•  Josué Benjamín Maldonado Urbina\n•  Andy Omar Franco Bermúdez\n•  José Francisco Leyva González\n•  Sara Abigaíl Cundapí Pérez\n•  Wendy Guadalupe Toalá Suchiapa\n•  Fabiola Hernández Espinosa\n•  Marcos Gustavo Pérez Jiménez',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                          letterSpacing: -0.41,
                        ),
                      )
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

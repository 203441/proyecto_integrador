import 'package:flutter/material.dart';

class FormInfo extends StatelessWidget {
  FormInfo({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(
            Icons.keyboard_arrow_left_sharp,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context); // Volver a la vista anterior
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(

              
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:EdgeInsets.all(35.0),
                    child: Text(
                      'Esta encuesta no está avalada cientificamente, es una herramienta que ayuda a las personas en saber si cuentan con este trastorno.\n\nEn Disorders, estamos comprometidos a brindarte el mejor apoyo y recursos para comprender el TDAH y mejorar tu bienestar. Para ello, te invitamos a participar en nuestra encuesta especializada sobre el TDAH, diseñada para ayudarte a obtener una mejor comprensión de ti mismo/a.\n\nLa encuesta es completamente anónima y está destinada a proporcionarte una perspectiva inicial sobre la posibilidad de que puedas tener TDAH.\n\nParticipar es sencillo. Simplemente accede a la sección "Encuesta sobre el TDAH" en la aplicación y responde las preguntas de manera honesta y precisa. La encuesta solo tomará unos minutos de tu tiempo, pero puede proporcionarte información valiosa para tu bienestar.\n\nUna vez que completes la encuesta, recibirás un resumen inicial basado en tus respuestas, lo que te permitirá tener una idea general sobre la posibilidad de tener TDAH. Es importante tener en cuenta que esta evaluación no reemplaza un diagnóstico profesional, pero puede ser un buen punto de partida para entender tus posibles necesidades.\n\nRecuerda que la información que proporciones será tratada con la máxima confidencialidad y solo se utilizará con fines estadísticos y para mejorar nuestros servicios. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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

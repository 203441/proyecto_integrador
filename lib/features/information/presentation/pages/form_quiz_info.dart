import 'package:flutter/material.dart';

class FormInfoQuizz extends StatelessWidget {
  FormInfoQuizz({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 241, 241),
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
                      'En Disorders estamos comprometidos a garantizar el bienestar y la seguridad de los niños y adolescentes con TDAH. Como parte de nuestros esfuerzos para brindar el mejor cuidado y apoyo posible, hemos creado una Encuesta de Aptitud para Cuidadores destinada a evaluar la preparación de familiares, maestros o tutores para cuidar a personas con TDAH.\n\nTu opinión y experiencia son valiosas para nosotros, y nos gustaría invitarte a participar en esta encuesta importante.\n\nComprender tus habilidades y conocimientos nos permitirá ofrecer recursos y capacitación adecuados para mejorar la calidad de vida de los niños y adolescentes con TDAH.\n\n\n\nAdaptado por Izal, M. y Montorio, I. (1994). Evaluación del medio y del cuidador del demente. En T. Del Ser y J. Peña (eds.).\n\nEvaluación neuropsicológica y funcional de la demencia. Barcelona: bvie\n\nExtraído de la  Sociedad  Española de Geriatría y Gerontología',
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

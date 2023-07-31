import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class RecomendacionesTDAH extends StatelessWidget {
  RecomendacionesTDAH({Key? key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                 const Text(
                  'Recomendaciones para el manejo del TDAH',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Evaluación y diagnóstico: Es fundamental que el TDAH sea diagnosticado correctamente Esto permitirá diseñar un plan de tratamiento adecuado o personalizado.\n\nTratamiento farmacológico: medicamentos que pueden ayudar a mejorar la atención, concentración y reducir la hiperactividad e impulsividad. Siempre deben ser recetados y monitoreados por un médico.\n\nTerapia conductual Estas terapias pueden ayudar al individuo a desarrollar estrategias para manejar comportamientos impulsivos y mejorar su organización y planificación.\n\nActiviad física La actividad física regular puede ser beneficiosa para las personas con TDAH, ya que puede ayudar a liberar energía y mejorar la concentración.\n\nApoyo emocional y familiar Es fundamental que las personas con TDAH cuenten con el apoyo emocional y comprensión de sus familiares, amigos o profesores.\n\nReducción de estímulos En entornos con muchas distracciones, es útil minimizar los estímulos externos para ayudar a mantener el enfoque y la atención.\n\n',
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
                Container(
                  width: 331,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Video',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 2,
                            letterSpacing: -0.41,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 0.50, color: Color(0xFFC7C7C7)),
                          ),
                          child: YoutubePlayer(
                            controller: YoutubePlayerController(
                              initialVideoId: 'qg3bkPb5OnU', // Reemplaza 'VIDEO_ID_HERE' con el ID de tu video de YouTube
                              flags: YoutubePlayerFlags(
                                autoPlay: false, // Cambia a 'true' si deseas que el video se reproduzca automáticamente
                                mute: false, // Cambia a 'true' si deseas que el video se reproduzca sin sonido
                              ),
                            ),
                            showVideoProgressIndicator: true,
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
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

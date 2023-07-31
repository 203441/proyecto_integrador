import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'form.dart';
import 'infoCauses.dart';

class Concentracion extends StatelessWidget {
  Concentracion({Key? key});

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
                  'Estrategias para mejorar la concentración',
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
                        'Practicar la "regla de los dos minutos" si una tarea toma menos de dos minutos en completarse, hazla de inmediato. Esto evita que las pequeñas tareas se acumulen y se conviertan en distracciones a largo plazo.\n\nEducación y comprensión: \n\n•  Técnicas de autocontrol aprender a identificar y manejar las emociones y los impulsos puede ayudar a reducir la impulsividad y mejorar el autocontrol.\n\n•  Uso de juegos y actividades Incorporar juegos y actividades interactivas en el aprendizaje y la rutina diaria puede hacer que las tareas sean más atractivas y mantener el interés.\n\n•  Participación en deportes y actividades físicas a participación en actividades deportivas o recreativas puede ayudar a canalizar la energía y mejorar la atención.\n\n•  Mantener un registro de progreso mantener un registro de los logros, avances y desafíos puede proporcionar información útil para ajustar las estrategias y ver el progreso a lo largo del tiempo.',
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
                              initialVideoId: 'BlIpine9XbI', // Reemplaza 'VIDEO_ID_HERE' con el ID de tu video de YouTube
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

                SizedBox(height: 20), // Espacio entre los contenedores

                
                SizedBox(height: 15),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

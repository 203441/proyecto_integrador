import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'form.dart';
import 'infoCauses.dart';

class Rutinas extends StatelessWidget {
  Rutinas({Key? key});

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
                  'Rutinas para descansar correctamente',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Los niños con TDAH pueden experimentar dificultades para dormir, como dificultad para conciliar el sueño, inquietud y despertares nocturnos. Estas dificultades pueden deberse a problemas de autorregulación y ansiedad, o bien, del mismo TDAH. Cuando los niños con TDAH tienen dificultades para dormir, pueden presentarse algunos signos reveladores:\n\n•  Encuentran difícil calmarse antes de dormir.\n\n•  Experimentan dificultades para conciliar el sueño debido a pensamientos persistentes.\n\n•  Se muestran inquietos y se despiertan varias veces durante la noche.\n\n Se pueden establecer algunas cosas para hacer del sueño algo más placentero y tener un mejor descanso\n\n•  Supervisar los patrones de sueño de los niños y adolescentes, registrando sus horarios de dormir y despertar.\n\n•  Fomentar la actividad física después de la escuela para mejorar la calidad del sueño.\n\n•  Establecer una rutina consistente para la hora de dormir que incluya actividades tranquilas y reduzca estímulos antes de acostarse.\n\n•  Evitar el uso de aparatos electrónicos con pantallas antes de dormir y considerar el uso de aparatos de ruido blanco para favorecer el sueño.\n\n•  Ayudar a los niños a planificar y priorizar tareas para reducir la ansiedad antes de dormir.\n\n•  Si se utiliza medicación para el TDAH, discutir con el médico la dosis y su efecto en el sueño.\n\n•  Comunicar cualquier problema de sueño a los profesionales que evalúan al niño para el TDAH y considerar técnicas de relajación para mejorar el sueño.\n\nAtender estos aspectos puede ayudar a mejorar la calidad del sueño y el bienestar de los niños y adolescentes con TDAH.',
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
                          'Video informativo sobre el tema    ',
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
                              initialVideoId: 'QXobgpRXm_A', 
                              flags: YoutubePlayerFlags(
                                autoPlay: false, 
                                mute: false, 
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
                SizedBox(height: 20), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}

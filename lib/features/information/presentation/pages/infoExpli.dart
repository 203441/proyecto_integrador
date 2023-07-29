import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';

class InfoExplication extends StatelessWidget {
  InfoExplication({Key? key});

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
        actions: [
          Row(
            children: [
              const Text(
                'Explicación',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 172, 42),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  letterSpacing: -0.41,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoCauses()),
                  );
                },
                child: const Text(
                  'Causas del trastorno',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      letterSpacing: -0.41,
                    ),
                  ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoEvaluation()),
                  );
                },
                child: const Text(
                  'Encuesta tutores',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      letterSpacing: -0.41,
                    ),
                  ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                 const Text(
                  'Hablemos del TDAH',
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
                        'El TDAH, o Trastorno por Déficit de Atención e Hiperactividad, es una condición neurológica que afecta principalmente a niños y, en ocasiones, a adultos. Podría describirse como un patrón de comportamiento caracterizado por dificultades para concentrarse, prestar atención y controlar la impulsividad.\n\nLos síntomas pueden variar en cada individuo:\n\n•  Dificultades para prestar atención a detalles o seguir instrucciones.\n\n•  Inquietud o impulsividad excesiva, como hablar sin pensar o interrumpir a otros.\n\n•   Dificultades para mantenerse organizado y terminar tareas.\n\n• Olvidar cosas importantes, como deberes o responsabilidades.\n\n•   Dificultades para quedarse quieto o mantenerse en un lugar durante mucho tiempo.\n\nEs importante destacar que el TDAH no se debe a una falta de inteligencia o a problemas de crianza.\n\n',
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
                          '¿Qué es el TDAH?',
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
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/features/media/pp.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'José Leyva',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.41,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Jul 20, 2023',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 0.50, color: Color(0xFFC7C7C7)),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "El Trastorno por Deficit de Atención e Hiperactividad (TDAH) es una tipo enfermedad neurológica que afecta la capacidad de hacer distintas actividades, por ejemplo, el simple hecho de dormir, ya que esta enfermad tiene como un síntoma el insomnio.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20), // Espacio entre los contenedores

                Container(
                  width: 331,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Container(
                          width: 331,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                          
                        ), 
                        const Text(
                          'El Trastorno por Deficit de Atención e Hiperactividad',
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
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/features/media/liz.png'),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Lizeth Vidaña',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.41,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Jul 20, 2023',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 0.50, color: Color(0xFFC7C7C7)),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "El Trastorno por Deficit de Atención e Hiperactividad (TDAH) es una tipo enfermedad neurológica que afecta la capacidad de hacer distintas actividades, por ejemplo, el simple hecho de dormir, ya que esta enfermad tiene como un síntoma el insomnio.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

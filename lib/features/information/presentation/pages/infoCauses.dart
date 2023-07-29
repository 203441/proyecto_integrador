import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'infoExpli.dart';

class InfoCauses extends StatelessWidget {
  InfoCauses({Key? key});

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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoExplication  ()),
                  );
                },
                child: const Text(
                  'Explicación',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    letterSpacing: -0.41, 
                  ),
                ),
              ),
              
                const Text(
                  'Causas del trastorno',
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
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Anatomia y función del cerebro: Un nivel inferior en las partes del cerebro que controlan los niveles de atención y concentración puede estar ligado con el TDAH.\n\nLos genes y la herencia. Una de las frecuencias mas comunes del TDHA es hereditario y se pasa en las familias. Tiene una probabilidad de 1 entre 4 de tener padres con TDAH. También es probable que otro miembro y no cercano de la familia pueda tener TDAH.\n\nTrastornes mentales hereditarios.El nacimiento prematuro aumenta el riesgo de desarrollar TDAH Lesiones graves en la cabeza pueden en algunos casos causar el TDAH.\n\nLas exposiciones prenatales, como la exposición al alcohol o a la nicotina del cigarrillo, aumentan el riesgo de desarrollar TDAH.\n\nDe acuerdo con datos nacionales: «cerca de 9,4 % de niños estadounidenses entre 2 y 17 años se ven afectados por el TDAH, incluyendo a 2,4% de niños entre 2 y 5 años y entre 4 % a 12 % de niños en edad escolar.  Los niños varones tienen más del doble de probabilidad que las niñas de ser diagnosticados con TDAH.»\nAmerican Academy of Pediatrics (Copyright @ 2019)',
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
    );
  }
}

import 'package:app_auth/features/information/presentation/pages/form_quiz_info.dart';
import 'package:flutter/material.dart';

import 'form.dart';
import 'form_info.dart';
import 'infoCauses.dart';
import 'infoExpli.dart';

class InfoEvaluation extends StatefulWidget {
  @override
  _InfoEvaluationState createState() => _InfoEvaluationState();
}

class _InfoEvaluationState extends State<InfoEvaluation> {
  Map<String, int> scores = {
    'pregunta1': 0,
    'pregunta2': 0,
    'pregunta3': 0,
    'pregunta4': 0,
    'pregunta5': 0,
    'pregunta6': 0,
    'pregunta7': 0,
    'pregunta8': 0,
    'pregunta9': 0,
    'pregunta10': 0,
    'pregunta11': 0,
    'pregunta12': 0,
    'pregunta13': 0,
    'pregunta14': 0,
    'pregunta15': 0,
    'pregunta16': 0,
    'pregunta17': 0,
    // Agrega más preguntas aquí con sus puntajes iniciales
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Row(
                children: [
                  const Text(
                    'Encuesta para el tutor o familiar',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Expanded(
                    child: Container(), // Este widget Expanded ocupa todo el espacio restante
                  ),
                  IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FormInfoQuizz()),
                      );
                    },
                  ),
                ],
              ),
              const Text(
              "¿Cómo se da la puntuación?\n\n0 = Nunca.\n\n1 = Rara vez.\n\n2 = Algunas veces.\n\n3 = Bastantes veces.\n\n4 = Siempre. "
            ),
            SizedBox(height: 15),
              Container(
                width: 300,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFC7C7C7),
                    ),
                  ),
                ),
              ),
              _buildQuestion('1. ¿Cree que su familiar le solicita más ayuda de la necesaria?', ['0', '1', '2', '3', '4'], 'pregunta1'),
              _buildQuestion('2. ¿Considera que el cuidado de su familiar afecta negativamente su relación con otros miembros de la familia?', ['0', '1', '2', '3', '4'], 'pregunta2'),
              _buildQuestion('3. ¿Siente temor por el futuro de su familiar?', ['0', '1', '2', '3', '4'], 'pregunta3'),
              _buildQuestion('4. ¿Siente temor por el futuro de su familiar?', ['0', '1', '2', '3', '4'], 'pregunta4'),
              _buildQuestion('5. ¿Piensa que su familiar depende demasiado de usted?', ['0', '1', '2', '3', '4'], 'pregunta5'),
              _buildQuestion('6. ¿Siente que la cantidad de intimidad en su vida ha disminuido debido al cuidado de su familiar?', ['0', '1', '2', '3', '4'], 'pregunta6'),
              _buildQuestion('7. ¿Ha visto afectada negativamente su vida social debido al cuidado de su familiar?', ['0', '1', '2', '3', '4'], 'pregunta7'),
              _buildQuestion('8. ¿Desearía poder delegar el cuidado de su familiar a otra persona?', ['0', '1', '2', '3', '4'], 'pregunta8'),
              _buildQuestion('9. ¿Cree que debería hacer más por su familiar?', ['0', '1', '2', '3', '4'], 'pregunta9'),
              _buildQuestion('10. ¿Piensa que podría proporcionar un mejor cuidado a su familiar?', ['0', '1', '2', '3', '4'], 'pregunta10'),
              _buildQuestion('11. En general, ¿qué nivel de "carga" experimenta debido al cuidado de su familiar?', ['0', '1', '2', '3', '4'], 'pregunta10'),
              // Agrega más preguntas aquí
              SizedBox(height: 50),
              Center(
              child: SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: _showResult,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: const Color.fromRGBO(81, 78, 235, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                  child: const Text('Iniciar cálculo', style: TextStyle(fontSize: 16, fontFamily: 'Montserrat')),
                ),
              ),
            ),

            ],
          ),
        ),
      ),
    );
  }
  Widget _buildQuestion(String question, List<String> options, String key) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Text(
                question,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 18,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                width: 250,
                height: 55,
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 182, 182, 182)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: DropdownButton<int>(
                  value: scores[key],
                  onChanged: (value) {
                    setState(() {
                      scores[key] = value!;
                    });
                  },
                  items: options.asMap().entries.map((entry) {
                    int index = entry.key;
                    String option = entry.value;
                    return DropdownMenuItem<int>(
                      value: index,
                      child: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
  void _showResult() {
  int totalScore = scores.values.reduce((a, b) => a + b);
  String result = '';

  // Agrega lógica para asignar la calificación según el puntaje total
  if (totalScore >= 0 && totalScore <= 15) {
    result = 'Debes de cuidar más a la persona';
  } else if (totalScore >= 16 && totalScore <= 30) {
    result = 'La persona tiene buenos cuidados';
  } else {
    result = 'La persona está muy bien cuidada';      
  } 

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Resultados obtenidos en la encuesta sobre cómo cuidar a una persona con TDAH'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(' $result'),
            const SizedBox(height: 8), // Agrega un espacio entre los textos
            if (result == 'Debes de cuidar más a la persona') // Condición para mostrar texto adicional según la calificación
              const Text(
                "Puedes contactar con profesionales del tema en el directorio de especialistas.",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            if (result == 'La persona tiene buenos cuidados') // Condición para mostrar texto adicional según la calificación
              const Text(
                "Deberías de tomar algunas cuantas recomendaciones. Puedes visualizarlas en nuestro menú de la aplicación.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            if (result == 'La persona está muy bien cuidada') // Condición para mostrar texto adicional según la calificación
              const Text(
                "El cuidado que le das a las personas es muy bueno",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close
            )
          ),
        ],
      );
    },
  );
}

}

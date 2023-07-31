import 'package:flutter/material.dart';

import 'form_info.dart';
import 'infoCauses.dart';
import 'infoExpli.dart';

class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
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
                'Encuesta para el TDAH',
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
                        MaterialPageRoute(builder: (context) => FormInfo()),
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
              
              SizedBox(height: 15),
              _buildQuestion('1. ¿Con qué frecuencia comete errores cuando trabaja en un proyecto que encuentra aburrido o difícil?', ['0', '1', '2', '3', '4'], 'pregunta1'),
              _buildQuestion('2. ¿Con qué frecuencia tiene dificultades para mantener su atención en tareas monótonas o repetitivas?', ['0', '1', '2', '3', '4'], 'pregunta2'),
              _buildQuestion('3. ¿Con qué frecuencia le cuesta concentrarse en asuntos que otras personas le comunican, incluso cuando se dirigen directamente a usted?', ['0', '1', '2', '3', '4'], 'pregunta3'),
              _buildQuestion('4. ¿Con qué frecuencia tiene dificultades para organizar las cosas en tareas que requieren orden?', ['0', '1', '2', '3', '4'], 'pregunta4'),
              _buildQuestion('5. Cuando tiene una tarea que requiere mucha reflexión, ¿con qué frecuencia la evita o retrasa su inicio?', ['0', '1', '2', '3', '4'], 'pregunta5'),
              _buildQuestion('6. ¿Con qué frecuencia extravía cosas o tiene dificultades para encontrarlas en su hogar o lugar de trabajo?', ['0', '1', '2', '3', '4'], 'pregunta6'),
              _buildQuestion('7. ¿Con qué frecuencia se distrae debido a la actividad o ruido a su alrededor?', ['0', '1', '2', '3', '4'], 'pregunta7'),
              _buildQuestion('8. ¿Con qué frecuencia tiene dificultades para recordar citas u obligaciones?', ['0', '1', '2', '3', '4'], 'pregunta8'),
              _buildQuestion('9. ¿Con qué frecuencia tiene dificultades para recordar citas u obligaciones?', ['0', '1', '2', '3', '4'], 'pregunta9'),
              _buildQuestion('10 ¿Con qué frecuencia se levanta de su asiento en reuniones u otras situaciones en las que debería permanecer sentado?', ['0', '1', '2', '3', '4'], 'pregunta10'),
              _buildQuestion('11. ¿Con qué frecuencia siente una sensación de inquietud?', ['0', '1', '2', '3', '4'], 'pregunta11'),
              _buildQuestion('12. ¿Con qué frecuencia tiene dificultades para relajarse durante su tiempo libre?', ['0','1', '2', '3', '4'], 'pregunta12'),
              _buildQuestion('13. ¿Con qué frecuencia se siente impulsado a realizar actividades como si fuera impulsado por un motor?', ['0', '1', '2', '3', '4'], 'pregunta13'),
              _buildQuestion('14. ¿Con qué frecuencia se siente impulsado a realizar actividades como si fuera impulsado por un motor?', ['0', '1', '2', '3', '4'], 'pregunta14'),
              _buildQuestion('15. Cuando está en una conversación, ¿con qué frecuencia permite que los demás terminen sus intervenciones?', ['0', '1', '2', '3', '4'], 'pregunta15'),
              _buildQuestion('16. ¿Con qué frecuencia tiene dificultad para esperar su turno en situaciones que requieren espera?', ['0', '1', '2', '3', '4'], 'pregunta16'),
              _buildQuestion('17. ¿Con qué frecuencia interrumpe a los demás mientras están ocupados?', ['0', '1', '2', '3', '4'], 'pregunta17'),
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
  if (totalScore >= 0 && totalScore <= 20) {
    result = 'Tienes un nivel bajo de TDAH';
  } else if (totalScore >= 21 && totalScore <= 34) {
    result = 'Tienes un nivel medio de TDAH';
  } else {
    result = 'Tienes un nivel alto de TDAH';      
  } 

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Resultados obtenidos en la encuesta sobre TDAH'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Tu calificación es: $result'),
            const SizedBox(height: 8), // Agrega un espacio entre los textos
            if (result == 'Tienes un nivel bajo de TDAH') // Condición para mostrar texto adicional según la calificación
              const Text(
                "No deberías preocuparte.",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            if (result == 'Tienes un nivel medio de TDAH') // Condición para mostrar texto adicional según la calificación
              const Text(
                "Deberías de tomar algunas cuantas recomendaciones. Puedes visualizarlas en nuestro menú de la aplicación.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  color: Color.fromARGB(255, 73, 72, 72),
                ),
              ),
            if (result == 'Tienes un nivel alto de TDAH') // Condición para mostrar texto adicional según la calificación
              const Text(
                "Deberías contactar con un especialista. Puedes obtener un directorio de especialistas con nuestro plan premium.",
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

import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';
import 'infoExpli.dart';

class Quizz extends StatelessWidget {
  Quizz({Key? key});

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
                    MaterialPageRoute(builder: (context) => InfoCauses()),
                  );
                },
                child: const Text('Explicación'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoExplication()),
                  );
                },
                child: const Text('Causas del trastorno'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SurveyPage()),
                  );
                },
                child: const Text('Encuesta tutores'),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        
      ),
    );
  }
}

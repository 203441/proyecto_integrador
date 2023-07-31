import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'infoExpli.dart';

class InfoContact extends StatelessWidget {
  InfoContact({Key? key});

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
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'El siguiente directorio de especialistas es meramente inventado, estamos en espera de los directorios reales de los profesionales de la salud.',
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

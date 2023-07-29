import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';

class NotFound extends StatelessWidget {
  NotFound({Key? key});

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
                
                
                

                SizedBox(height: 250), // Espacio entre los contenedores

                Container(
                  width: 331,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF6F6F6),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                         Container(
                          width: 331,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFF6F6F6),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          ),
                        ), 
                        const SizedBox(height: 15),
                        Container(
                          width: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(width: 0.50, color: const Color(0xFFC7C7C7)),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "No disponibe por el momento",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
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

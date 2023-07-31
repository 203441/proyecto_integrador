
import 'package:app_auth/features/information/presentation/pages/contact_list_page.dart';
import 'package:app_auth/features/information/presentation/pages/form.dart';
import 'package:app_auth/features/information/presentation/pages/not_found.dart';
import 'package:app_auth/features/information/presentation/pages/premiun_election.dart';
import 'package:app_auth/features/information/presentation/pages/users.dart';
import 'package:flutter/material.dart';

import 'module.dart';

class Main extends StatelessWidget {
  Main({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Esta función evita que la vista regrese a la página de inicio de sesión al presionar el botón de regresar en el teléfono
      onWillPop: () async {
        // Siempre devuelve "false" para evitar que la vista regrese.
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 0),
              Container(
                width: double.infinity,
                height: 109,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(81, 78, 235, 50),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: const Column(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Buen día ',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Explorar',
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
              ),
              SizedBox(
    height: 250,
    child: ListView.builder(
      padding: const EdgeInsets.only(left: 21, top: 0, right: 21, bottom: 0),
      scrollDirection: Axis.horizontal,
      itemCount: 6,
      itemExtent: 190,
      itemBuilder: (BuildContext context, int index) {
        List<String> imagePaths = [
          'lib/features/media/B1.png',
          'lib/features/media/B2.png',
          'lib/features/media/B3.png',
          'lib/features/media/B4.png',
          'lib/features/media/B5.png',
          'lib/features/media/B6.png',
        ];
        return GestureDetector(
          onTap: () {
            if (index == 0) {
              // Si es la primera imagen (índice 0), dirigir a una interfaz
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Modulos()),
              );
            } else {
              // Para las demás imágenes, dirigir a otra interfaz
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotFound()),
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
            child: Image.asset(
              imagePaths[index],
              width: 175,
              height: 250,
            ),
          ),
        );
      },
    ),
  ),

              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SurveyPage()),
                  );
                },
                child: Container(
                  width: 303,
                  height: 143,
                  decoration: ShapeDecoration(
                    color: const Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1.50, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Image.asset('lib/features/media/encuesta_tdah.png'), 
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactListPage()),
                  );
                },
                child: Container(
                  width: 303,
                  height: 143,
                  decoration: ShapeDecoration(
                    color: const Color(0x00D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1.50, color: Colors.transparent),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Image.asset('lib/features/media/directorio.png'), 
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    size: 36,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Main()), // Reemplaza 'NewView' con el nombre de tu vista de destino
                    );
                  },
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.person_3_sharp,
                    size: 36,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Users()), // Reemplaza 'NewView' con el nombre de tu vista de destino
                    );
                  },
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}





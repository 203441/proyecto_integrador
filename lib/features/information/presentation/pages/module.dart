import 'package:app_auth/features/information/presentation/pages/users.dart';
import 'package:flutter/material.dart';

import 'estrategias.dart';
import 'infoExpli.dart';
import 'main.dart';

class Modulos extends StatelessWidget {
  Modulos({Key? key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 0),
            Container(
              width: double.infinity,
              height: 75,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(81, 78, 235, 50),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            ),
            const SizedBox(height: 180),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoExplication()),
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
                child: Image.asset('lib/features/media/button_information.png'),
              ),
            ),

            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Estrategias()),
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
                child: Image.asset('lib/features/media/button_strategies.png'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(255, 229, 0, 1),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
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
                icon: Icon(
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
    );
  }
}


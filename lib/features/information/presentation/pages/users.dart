import 'package:app_auth/features/information/presentation/pages/acerca_de.dart';
import 'package:app_auth/features/information/presentation/pages/aviso_privacidad.dart';
import 'package:app_auth/features/information/presentation/pages/terminos_condiciones.dart';
import 'package:flutter/material.dart';
import 'components/button_close.dart';
import '../../../user/presentation/homepage.dart';

class Users extends StatelessWidget {
  const Users({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(81, 78, 235, 50),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            size: 40,
          ),
          onPressed: () {
            Navigator.pop(context); // Volver a la vista anterior
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Stack(
                  children: [
                    SizedBox(
                      child: Text(
                        'Mi cuenta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          height: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 237,
                height: 237,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage('lib/features/media/logo.png'),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AvisoPrivacidad()),
                            );
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Avisos de privacidad',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: -0.41,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 32,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TerminosCondiciones()),
                            );
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Términos y condiciones',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: -0.41,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 32,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AcercaNosotros()),
                            );
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Acerca de nosotros',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'Montserrat',
                                  letterSpacing: -0.41,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 32,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),

              MyButtonClose(
              onTap: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

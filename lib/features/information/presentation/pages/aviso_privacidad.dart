import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';

class AvisoPrivacidad extends StatelessWidget {
  AvisoPrivacidad({Key? key});

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                 Text(
                  'Aviso de privacidad',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.41,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Finalidades del tratamiento de datos personales: Los datos personales recopilados a través de la aplicación "Disorders" serán utilizados para las siguientes finalidades:\n\n1.	Proporcionar información relevante sobre el trastorno por déficit de atención e hiperactividad (TDAH) y ofrecer métodos de aprendizaje para padres con hijos que presentan esta condición.\n\n2.	Personalizar y adaptar el contenido de la aplicación según las necesidades y preferencias de cada usuario.\n\n3.	Realizar análisis y estudios estadísticos para mejorar la calidad de los servicios ofrecidos.\n\n4.	Enviar notificaciones y comunicaciones relacionadas con la aplicación y su funcionamiento.\n\nTransferencia de datos personales: Tus datos personales podrán ser transferidos y tratados por Disorders y por terceros proveedores de servicios que colaboren con nosotros, únicamente con las finalidades descritas anteriormente.\n\nDerechos ARCO (Acceso, Rectificación, Cancelación y Oposición): Tienes derecho a acceder, rectificar, cancelar u oponerte al tratamiento de tus datos personales. Para ejercer dichos derechos, por favor ponte en contacto con nosotros a través de los datos de contacto proporcionados al inicio de este aviso.\n\nMedidas de seguridad: En Disorders tomamos las medidas de seguridad necesarias para proteger tus datos personales contra el acceso no autorizado, el uso indebido o la divulgación no autorizada.\n\nImplementamos medidas técnicas, administrativas y físicas para salvaguardar la información que recopilamos.\n\nModificaciones al aviso de privacidad: Nos reservamos el derecho de realizar modificaciones o actualizaciones a este aviso de privacidad en cualquier momento. Dichas modificaciones serán notificadas a través de notificaciones dentro de la aplicación o por correo electrónico.\n\nConsentimiento: Al utilizar la aplicación "Disorders", aceptas y consientes el tratamiento de tus datos personales de acuerdo con lo establecido en este aviso de privacidad.',
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
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:app_auth/features/information/presentation/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'infoCauses.dart';

class TerminosCondiciones extends StatelessWidget {
  TerminosCondiciones({Key? key});

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
                  'Términos y condiciones',
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
                        '1.	Términos de uso: Establece las reglas y condiciones para acceder y utilizar la aplicación. Esto puede incluir restricciones de edad, prohibiciones de uso no autorizado, limitaciones de responsabilidad y condiciones para la resolución de disputas.\n\na.	La naturaleza de la aplicación es un ecosistema educativo, es por ello que es recomendable que todas las personas puedan usarlo, única y exclusivamente para los módulos de información y de estrategias para el trastorno.\n\nb.	Como la aplicación tendrá una opción de interactuar con un especialista, lo más recomendable es que sea utilizado por personas adultas, en este caso, tutores (padres de familia o maestros de la persona con TDAH).\n\nc.	Como finalidad, la aplicación en general la puede usar personas de cualquier edad, pero es mucho más recomendable que sean personas adultas, ya que es importante proteger los datos de los niños y/o adolescentes. \n\n2.	Política de privacidad: Describe cómo se recopila, utiliza, almacena y protege la información personal de los usuarios. Debe cumplir con las leyes y regulaciones de privacidad aplicables y proporcionar transparencia sobre las prácticas de manejo de datos.\n\na.	Los datos estarán protegidos por diferentes protocolos de seguridad de la información.\n\nb.	Se ha de indicar si los datos recopilados se desean compartir con terceros, esto con la finalidad de mejorar la experiencia del usuario, mejorar la aplicación o proporcionar servicios específicos.\n\nc.	Informa a los usuarios sobre sus derechos con respecto a sus datos personales. Esto puede incluir el derecho a acceder, corregir o eliminar sus datos, así como el derecho a optar por no participar en ciertas actividades de recopilación de datos.\n\nd.	Si la aplicación utiliza cookies u otras tecnologías de seguimiento, explica cómo se utilizan y cómo los usuarios pueden administrar sus preferencias de cookies, en este caso no será necesario usarlas.\n\n\n3.	Condiciones de pago: Si la aplicación ofrece servicios o contenido premium que requieren pagos, es importante establecer claramente las condiciones de pago, los precios, las políticas de reembolso y cualquier otro detalle relevante.\n\na.	Seguridad de los datos de pago, las medidas de seguridad implementadas para proteger los datos de pago de los usuarios. \n\nb.	Establecer claramente las políticas de reembolso y cancelación en caso de insatisfacción o deseo de cancelar el servicio. Define los plazos, los requisitos y los procedimientos para solicitar un reembolso o cancelar la suscripción.\n\nc.	Establece claramente las políticas de reembolso y cancelación en caso de insatisfacción o deseo de cancelar el servicio. Define los plazos, los requisitos y los procedimientos para solicitar un reembolso o cancelar la suscripción.\n\nd.	Explica de manera clara y concisa los servicios o características adicionales que requieren un pago. Detalla los beneficios específicos que los usuarios obtendrán al realizar un pago, como acceso a contenido premium, funciones exclusivas o soporte especializado.\n\n\n\n4.	Política de propiedad intelectual: Establece los derechos de propiedad intelectual asociados con la aplicación y su contenido. Debe dejar claro que la propiedad y los derechos de autor de la aplicación y su contenido pertenecen al titular y que el uso no autorizado está prohibido.\n\na.	Explica claramente que la aplicación y todo su contenido están protegidos por derechos de autor y son propiedad exclusiva de tu empresa. Establece que no se permite la reproducción, distribución, modificación o uso no autorizado del contenido sin tu consentimiento expreso. \n\nb.	Proporciona información de contacto clara para que los usuarios puedan presentar reclamaciones relacionadas con la propiedad intelectual. Asegúrate de responder de manera oportuna y abordar las preocupaciones presentadas.\n\nc.	Asegúrate de tener la facultad de retirar cualquier contenido que se considere infractor o que viole los derechos de propiedad intelectual de terceros. Establece que cooperarás con los titulares de derechos de autor en la resolución de cualquier disputa relacionada con la propiedad intelectual.\n\n\n\n5.	Política de contenido y conducta del usuario: Establece las pautas y restricciones para el contenido generado por los usuarios, como comentarios, publicaciones o mensajes. Puede incluir la prohibición de contenido ofensivo, difamatorio o ilegal, y el derecho de la empresa a tomar medidas si se violan estas pautas.\n\na.	Establece claramente qué tipo de contenido está permitido y qué contenido está prohibido en la aplicación. \n\nb.	Define límites claros para evitar contenido ofensivo, difamatorio, obsceno, ilegal o que viole los derechos de terceros.',
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

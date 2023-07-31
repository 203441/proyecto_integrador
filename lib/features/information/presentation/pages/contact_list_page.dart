import 'package:app_auth/features/information/presentation/pages/infoCauses.dart';
import 'package:app_auth/features/information/presentation/pages/info_contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../../domain/usecases/get_contacts_usecases.dart';
import '../../domain/entities/contact.dart';

class ContactListPage extends StatelessWidget {
  final List<ContactEntity> _contacts = [
    ContactEntity(
        id: 1,
        name: 'Dra. Ana de la Fuente Martín',
        phone: '(+52)(55) 44405590 Ext.1204'),
    ContactEntity(
      
        id: 2,
        name: 'Dr. José Ramón Grajales Almeida',
        phone: '(+52)(55) 44405590 Ext.2488'),
    ContactEntity(
        id: 3,
        name: 'Dr. Rodrigo Aquilino Orcajo Castelán',
        phone: '(+52)(55) 44405590 Ext.1204'),
    ContactEntity(
        id: 4,
        name: 'Dra. Cristina Rodríguez Hernández',
        phone: '(+52)(55) 44405590 Ext.1849'),
    ContactEntity(
        id: 5,
        name: 'Dra. Anna Valeria Cabrera Rodríguez',
        phone: '(+52)(55) 44405590 Ext.93'),
    ContactEntity(
        id: 6,
        name: 'Psic. Gustavo Mauricio García Madrigal',
        phone: '(+52)(55) 43375783'),
    ContactEntity(
        id: 7,
        name: 'Dr. Antonio Rizzoli Córdoba',
        phone: '(+52)(55) 44405590 Ext.3299'),
    ContactEntity(
        id: 8,
        name: 'Dra. Nancy Barrera',
        phone: '(+52)(55) 44405590 Ext.1079'),
    ContactEntity(
        id: 9,
        name: 'Dra. María del Carmen García Peña',
        phone: '(+52)(55) 44405590 Ext.1204'),
    ContactEntity(
        id: 10,
        name: 'Dr. Juan Carlos Seade Loera',
        phone: '(+52)(55) 44405590 Ext.834'),
  ];

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
       actions: [
        IconButton(
          color: Colors.black,
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoContact()),
            );
          },
        ),
       ],
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, index) {
          final contact = _contacts[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 8.0,
            ),
            title: Text(
              contact.name,
              style: TextStyle(fontSize: 16.0),
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: Text(
                    'Telefono: ' + contact.phone,
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.copy, size: 22.0),
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(text: contact.phone),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Número copiado al portapapeles'),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
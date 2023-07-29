import 'package:flutter/material.dart';

class WidgetTabBar extends StatelessWidget {
  WidgetTabBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de pestañas
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context); // Volver a la vista anterior
            },
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              // Contenido de la pestaña 1
              SingleChildScrollView(
                child: Center(
                  child: Text(
                    'Contenido Tab 1',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              // Contenido de la pestaña 2
              SingleChildScrollView(
                child: Center(
                  child: Text(
                    'Contenido Tab 2',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              // Contenido de la pestaña 3
              SingleChildScrollView(
                child: Center(
                  child: Text(
                    'Contenido Tab 3',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

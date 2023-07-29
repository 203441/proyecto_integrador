import 'package:flutter/material.dart';

class PremiumElection extends StatelessWidget {
  PremiumElection({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Column(
        children: [
        Container(
          width: 360,
          height: 700,
          padding: const EdgeInsets.only(
            top: 338,
            left: 20,
            right: 20,
            bottom: 290,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 64,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],

      ),
    );
  }
}

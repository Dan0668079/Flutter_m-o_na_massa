import 'dart:ui';

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e Rotacao de Texto'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.deepOrange,
                      child: const Text('Daniel Rodrigues'),
                    ),
                  ),
                  const Icon(Icons.ac_unit_outlined),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Salvar'),
                style: TextButton.styleFrom(
                  primary: Colors.indigo,
                  padding: const EdgeInsets.all(40),
                  minimumSize: const Size(50, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(75),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.exit_to_app),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Salvando'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple,
                  minimumSize: const Size(120, 38),
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.airplane_ticket_sharp),
                label: const Text('Modo avião'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lime,
                  minimumSize: const Size(120, 38),
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Salvar'),
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.blue),
                  // minimumSize: MaterialStateProperty.all(
                  //   const Size(110, 50),
                  // ),
                  minimumSize: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(150, 150);
                    } else if (states.contains(MaterialState.hovered)) {
                      return const Size(180, 180);
                    }
                    return const Size(120, 60);
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.green;
                      } else if (states.contains(MaterialState.hovered)) {
                        return Colors.pink;
                      }
                      return Colors.red;
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Text('InkWell'),
              ),
              GestureDetector(
                child: const Text('Gesture Detector'),
                onTap: () => print('Gesture Clicado'),
                onVerticalDragStart: (_) => print('Gesture Movimentado'),
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.red,
                    ),
                  ],
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {},
                  child: const Center(
                    child: Text('Botão Slavar',style: TextStyle(color:Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/4633666/pexels-photo-4633666.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white38, //deixar a tela com opacidade
          ),
          Positioned(
            left: 10,
            right: 10,
            top: 28,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 12,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      'Vaidas Vaiciulis',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                        'Não andeis ansiosos por coisa alguma; antes em tudo sejam os vossos pedidos conhecidos diante de Deus pela oração e súplica com ações de graças; e a paz de Deus, que excede todo o entendimento, guardará os vossos corações e os vossos pensamentos em Cristo Jesus.Filipenses 4:6-7'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

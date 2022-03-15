import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const cor = Colors.blue;
    // final cor = Colors.red.withOpacity(0.5);
    // const cor = Color.fromRGBO(0, 5, 255, 0);
    const cor = Color(0XFF45D1FD);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Page'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        width: 400,
        color: Colors.brown
        ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Container(
              color: Colors.deepPurpleAccent,
              child: const Text('Elemento 1'), 
            ),
            
            const Text('Elemento 2'),
            const Text('Elemento 3'),
          ],
        ),
      ),
    );
  }
}

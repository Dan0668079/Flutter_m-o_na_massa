import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {
                      print('Clicado!!!');
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}

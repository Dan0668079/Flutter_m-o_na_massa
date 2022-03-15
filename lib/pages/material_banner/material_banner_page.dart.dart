import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
               final materialbanner = MaterialBanner(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                  forceActionsBelow: true,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentMaterialBanner();//utlizado para tirar a mensagemn da tela.
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                );
                ScaffoldMessenger.of(context).showMaterialBanner(materialbanner);

                Future.delayed(const Duration(seconds: 2),(){
                  ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                });//serve para remover o banner depois de determinado tempo
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

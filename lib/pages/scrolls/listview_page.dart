import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
          itemCount: 100,
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.green,
            );
          },
          itemBuilder: (context, index) {
            print('Carregando o indice $index');
            return ListTile(
              title: Text('Indice $index'),
              subtitle: const Text('Flutter é TOP'),
              leading: const CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage('https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
              ),
              trailing: const CircleAvatar(),
            );
          }),
    );
  }
}

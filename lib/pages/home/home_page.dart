import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_single_child,
  scrolls_list_view,
  dialogs,
  snackbars,
  forms,
  cidades,
  stack,
  stack2,
  bottomNavigatorBar,
  circleAvatar,
  colorsPage,
  materialBanner,
  instagramPage,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            // icon: const Icon(Icons.restaurant_menu),
            tooltip: 'Selecione um Item do menu',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                     break;
                     case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                    case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                     break;
                     case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                    case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_texto');
                  break;
                   case PopupMenuPages.scrolls_single_child:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                  case PopupMenuPages.scrolls_list_view:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                   case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                  case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                  case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                   case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                  case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                   case PopupMenuPages.stack2:
                  Navigator.of(context).pushNamed('/stack2');
                  break;
                   case PopupMenuPages.bottomNavigatorBar:
                  Navigator.of(context).pushNamed('/bottomNavigatorBar');
                  break;
                   case PopupMenuPages.circleAvatar:
                  Navigator.of(context).pushNamed('/circleAvatar');
                  break;
                    case PopupMenuPages.colorsPage:
                  Navigator.of(context).pushNamed('/colorsPage');
                  break;
                   case PopupMenuPages.materialBanner:
                  Navigator.of(context).pushNamed('/materialBanner');
                  break;
                  case PopupMenuPages.instagramPage:
                  Navigator.of(context).pushNamed('/instagramPage');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows & Columns'),
                ),
                  const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('MediaQuery'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto,
                  child: Text('Botoes e Rotacao de Texto'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_single_child,
                  child: Text('SingleChildScrollView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_list_view,
                  child: Text('Scroll ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('SnackBars'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack2,
                  child: Text('Stack 2'),
                ),
                 const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottomNavigatorBar,
                  child: Text('Bottom Navigator Bar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circleAvatar,
                  child: Text('Circle Avatar'),
                ),
                  const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colorsPage,
                  child: Text('Colors Page'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.materialBanner,
                  child: Text('Material Banner'),
                ),
                  const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.instagramPage,
                  child: Text('Instagram Page'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Text('Bot??o X'),
            ),
            Container(
              width: 75,
              height: 75,
              color: Theme.of(context).primaryColorLight
            ),
          ],
        ),
      ),
    );
  }
}

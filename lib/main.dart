import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto2/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto2/pages/bottom_navigator_bar/botom_navigator_bar.dart';
import 'package:flutter_primeiro_projeto2/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto2/pages/circle_avatar/cicle_avatar_page.dart';
import 'package:flutter_primeiro_projeto2/pages/colors/colors_page.dart';
import 'package:flutter_primeiro_projeto2/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto2/pages/dialogs/dialogs.page.dart';
import 'package:flutter_primeiro_projeto2/pages/instagram/instagran_desafio_page.dart';
import 'package:flutter_primeiro_projeto2/pages/material_banner/material_banner_page.dart.dart';
import 'package:flutter_primeiro_projeto2/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto2/pages/rows_columns/rows_column_page.dart';
import 'package:flutter_primeiro_projeto2/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto2/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_projeto2/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_projeto2/pages/stack/stack_page.dart';
import 'pages/forms/forms_page.dart';
import 'pages/home/home_page.dart';
import 'pages/layout_builder/layout_builder_page.dart';
import 'pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: !kReleaseMode,
      enabled: false, // ReleaseMode
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primaryColorLight: Colors.red,
        primaryColorDark: Colors.amberAccent,
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',

        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.black26),),
      ),

      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,

      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnsPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => const SinglechildscrollviewPage(),
        '/scrolls/list_view': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogPage(),
        '/snackbars': (_) =>  SnackbarPage(),
        '/forms': (_) => const FormsPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/bottomNavigatorBar': (_) => const BottomNavigatorBarPage(),
        '/circleAvatar': (_) => const CircleAvatarPage(),
        '/colorsPage': (_) =>  const ColorsPage(),
        '/materialBanner': (_) => const MaterialBannerPage(),
        '/instagramPage': (_) => const InstagranDesafioPage(),
      },
    );
  }
}

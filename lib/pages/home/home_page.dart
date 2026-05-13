import 'package:flutter/material.dart';

enum PopupMenuPages { container, rowsColumns }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home Page'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          // CRIAR POPUP:
          PopupMenuButton<PopupMenuPages>(
            // ALTERAR OS 3 PONTINHOS DO POPUP PELO ÍCONE DE UM PRATO:
            icon: Icon(Icons.restaurant_menu),
            // TÍTULO DO BOTÃO DO APPBAR:
            // tooltip: 'Selecione um Item do menu',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowsColumns:
                  Navigator.of(context).pushNamed('/rows-columns');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowsColumns,
                  child: Text('Rows & Columns'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}

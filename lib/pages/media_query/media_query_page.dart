import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Mediaquery = MediaQuery.of(context);

    print('largura: ${Mediaquery.size.width}');
    print('altura: ${Mediaquery.size.height}');
    print('orientação: ${Mediaquery.orientation}');
    print('padding TOP: ${Mediaquery.padding.top}');

    // print('tamanho AppBarDefault: $kToolbarHeight}');
    var appBar = AppBar(title: const Text('MediaQuery'));

    print('TAmanho AppBar ${appBar.preferredSize.height}');

    // DESCOBRIR O TAMANHO DA TELA DESCONSIDERANDO O APPBAR:
    final heighbody =
        Mediaquery.size.height -
        appBar.preferredSize.height -
        Mediaquery.padding.top;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: Mediaquery.size.width * 0.5,
              height: heighbody * 0.5,
            ),
            Container(
              color: Colors.blue,
              // width: Mediaquery.size.width * 0.5,
              height: heighbody * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}

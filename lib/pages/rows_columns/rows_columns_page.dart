import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rows & Colums')),
      body: Container(
        width: 400,
        color: Colors.red,
        // container para organizar os elementos dentro da tela - aceita 1- child
        // Row: height - um do lado do outro na mesma linha
        // Column: widht - um abaixo do outro na mesma coluna - aceita vários children
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Elemento 1'),
            Text('Elemento 2'),
            Text('Elemento 3'),
            Container(
              color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(color: Colors.yellow, width: 100, height: 100),
                  Container(color: Colors.green, width: 100, height: 100),
                  //Container(color: Colors.blue, width: 100, height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}









        //     Row(
        //       children: [
        //         Container(
        //           color: Colors.red,
        //           width: 100,
        //           height: 100,
        //         ),
        //         Container(
        //           color: Colors.green,
        //           width: 100,
        //           height: 100,
        //         ),
        //         Container(
        //           color: Colors.blue,
        //           width: 100,
        //           height: 100,
        //         ),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         Container(
        //           color: Colors.orange,
        //           width: 100,
        //           height: 100,
        //         ),
        //         Container(
        //           color: Colors.purple,
        //           width: 100,
        //           height: 100,
        //         ),
        //         Container(
        //           color: Colors.yellow,
        //           width: 100,
        //           height: 100,
        //         ),
        //       ],
        // )
import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo de Navegação')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          padding: EdgeInsets.all(10),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    offset: Offset(10, 10),
                  ),
                  BoxShadow(
                    color: Colors.yellow,
                    blurRadius: 20,
                    offset: Offset(-10, -10),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

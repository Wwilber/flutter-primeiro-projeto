import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/container/container_page.dart';
import 'package:flutter_primeiro_projeto/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
      },
    );
  }
}

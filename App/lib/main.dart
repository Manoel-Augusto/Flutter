import 'package:App/components/views/home-view.dart';
import 'package:App/components/views/registroVenda-view.dart';
import 'package:App/components/views/venda-view.dart';
import 'package:App/controller/controller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Navigator.defaultRouteName;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'SABORETTO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Home(),
        "/venda": (context) => Venda(),
        "/registroVenda": (context) => RegistroVenda(),
      },
    );
  }
}

import 'package:flutter/material.dart';

class ProdutoCadastrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromRGBO(164, 92, 125, 1),
      body: SafeArea(
          child: Card(
              margin: EdgeInsets.only(top: 80, bottom: 50),
              color: Colors.white38,
              elevation: 20,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('item $index'),
                    );
                  }))),
    );
  }
}

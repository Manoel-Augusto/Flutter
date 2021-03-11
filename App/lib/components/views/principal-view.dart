import 'package:App/components/views/home-view.dart';
import 'package:App/components/views/venda-View.dart';
import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.white38,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 80,
              width: 250,
            ),
          ),
          Home()
        ],
      ),
    );
  }
}
/*
Container(
      height: 660,
      color: Color.fromRGBO(164, 92, 125, 1),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Card(
            elevation: 20,
            color: Colors.white38,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 80,
                    width: 250,
                  ),
                ),
                Home()
              ],
            ),
          ),
        ),
      ),
    );

*/

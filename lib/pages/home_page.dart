import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatelessWidget {
  getDataPokemon() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Hola"),
          onPressed: () {
            getDataPokemon();
          },
        ),
      ),
    );
  }
}

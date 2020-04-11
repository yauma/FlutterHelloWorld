import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 24);
    int conteo = 0;
    var textContador = Text(
                    "$conteo",
                    style: textStyle,
                  );
        return Scaffold(
            appBar: AppBar(
              bottomOpacity: 0.5,
              elevation: 1.5,
              centerTitle: true,
              title: Text("Título"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Número de clicks",
                    style: textStyle,
                  ),
                  textContador
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            conteo++;
          },
          child: Icon(
            Icons.add,
            color: Colors.red[50],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}

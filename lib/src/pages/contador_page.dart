import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorState();
}

class _ContadorState extends State {
  var _textStyle = TextStyle(fontSize: 24);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.5,
          elevation: 1.5,
          centerTitle: true,
          title: Text("State"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Número de clicks",
                style: _textStyle,
              ),
              Text(
                "$_conteo",
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButton: buildFloatingActionButton());
  }

  Widget buildFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove), onPressed: _restCounter),
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _addCounter)
      ],
    );
  }

  void _reset() {
    setState(() {
      _conteo = 0;
    });
  }

  void _restCounter() {
    setState(() {
      if (_conteo > 0) {
        _conteo--;
      }
    });
  }

  void _addCounter() {
    setState(() {
      if (_conteo >= 0) {
        _conteo++;
      }
    });
  }
}

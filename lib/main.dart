import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Bandeiras'),
          backgroundColor: Colors.blue,
        ),
        body: _novaPaginaFlags(),
      ),
    ),
  );
}

class _novaPaginaFlags extends StatefulWidget {
  const _novaPaginaFlags({Key? key}) : super(key: key);

  @override
  State<_novaPaginaFlags> createState() => new __novaPaginaFlagsState();
}

int valorAleatorio() {
  var range = Random();
  return range.nextInt(20) + 1;
}

flagsNames (flagNum){
  var names = {
    1:  'Argentina',
    2:	'Brasil',
    3:	'Canadá',
    4:	'Alemanha',
    5:	'Bélgica',
    6:	'Austrália',
    7:	'Noruega',
    8:	'Suíça',
    9:	'China',
    10:	'Dinamarca',
    11:	'França',
    12:	'Reino Unido',
    13:	'Inglaterra',
    14:	'Hong Kong',
    15:	'Irlanda',
    16:	'Itália',
    17:	'Jamaica',
    18:	'Japão',
    19:	'Estados Unidos',
    20:	'Grécia'
  };

  return names[flagNum];
}

class __novaPaginaFlagsState extends State<_novaPaginaFlags> {
  int flagNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  flagNum = valorAleatorio();
                });
              },
              child: Image.asset('images/flag$flagNum.png', scale: 3.0,),
            ),
          ),
          Text(flagsNames(flagNum), style: TextStyle(fontSize: 100.0, color: Colors.white),),
        ]));
  }
}
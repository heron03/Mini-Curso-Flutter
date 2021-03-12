import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double valorTotal = 0.0;
  double valorSegundo = 0.0;
  double valorPrimeiro = 0.0;
  String operacao;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    valorTotal.toString(),
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(7);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '7',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(8);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '8',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(9);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '9',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          opercaoPressionada('/');
                        },
                        color: Colors.grey,
                        child: Text(
                          '/',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(4);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(5);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(6);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '6',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          opercaoPressionada('X');
                        },
                        color: Colors.grey,
                        child: Text(
                          'X',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(1);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(2);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(3);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          opercaoPressionada('-');
                        },
                        color: Colors.grey,
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          numeroPressionado(0);
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          opercaoPressionada('+');
                        },
                        color: Colors.grey,
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          limparValores();
                        },
                        color: Colors.yellowAccent,
                        child: Text(
                          'C',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child: FlatButton(
                        onPressed: () {
                          calcular();
                        },
                        color: Colors.grey,
                        child: Text(
                          '=',
                          style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void numeroPressionado(double valorPressionado) {
    if (valorPrimeiro == 0.0) {
      valorPrimeiro = valorPressionado;
    } else {
      valorSegundo = valorPressionado;
    }
  }

  void opercaoPressionada(String operacaoPressionada) {
    operacao = operacaoPressionada;
  }

  void calcular() {
    setState(() {
      if (valorPrimeiro != 0.0 && valorSegundo != 0.0 && operacao != null) {
        if (operacao == '+') {
          valorTotal = valorPrimeiro + valorSegundo;
        }
        if (operacao == '-') {
          valorTotal = valorPrimeiro - valorSegundo;
        }
        if (operacao == 'X') {
          valorTotal = valorPrimeiro * valorSegundo;
        }
        if (operacao == '/') {
          valorTotal = valorPrimeiro / valorSegundo;
        }
      }
    });
  }

  void limparValores() {
    setState(() {
      valorPrimeiro = 0.0;
      valorSegundo = 0.0;
      valorTotal = 0;
      operacao = null;
    });
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mude a Cor',
      home: MyHomePage(title: 'Clique para Mudar a Cor!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final List cores = [
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.purple,
    Colors.grey,
    Colors.orange
  ];

  final List nomeCores = [
    'White',
    'Black',
    'Blue',
    'Brown',
    'Green',
    'Red',
    'Yellow',
    'Cyan',
    'Purple',
    'Grey',
    'Orange'
  ];

  void _mudarCor() {
    setState(() {
      if (_counter <= 9) {
        _counter++;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double vdbWidth = MediaQuery.of(context).size.width;
    final double vdbHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: vdbWidth,
              height: vdbHeight - 140,
              color: cores[_counter],
            ),
            const Text(
              'Clique e mude a cor de fundo:',
            ),
            Text(
              '$_counter - ${nomeCores[_counter]}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mudarCor,
        tooltip: 'Mudando Cor',
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

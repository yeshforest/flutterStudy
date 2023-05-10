import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Subpage Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => FirstPage(),
          '/second': (context) => SecondPage()
        });
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Page Main '),
      ),
      body: Container(
        child: Center(
          child: Text('첫 번째 페이지'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/second', arguments: SecondPageArguments(number: 5));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPageArguments {
  final int number;

  SecondPageArguments({required this.number});
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SecondPageArguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Container(
            child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                Text('돌아가기'),
                Text('${args.number}'),
              ],
            ),
          ),
        )));
  }
}

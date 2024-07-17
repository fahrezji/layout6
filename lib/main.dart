import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _depan = " ";
  String _belakang = " ";

  final depan = TextEditingController();
  final belakang = TextEditingController();

  void _setCounter(value) {
    setState(() {
      _depan = value;
      depan.text = '$_depan';
    });
  }

  void _setCounter1(value) {
    setState(() {
      _belakang = value;
      belakang.text = '$_belakang';
    });
  }

  @override
  void dispose() {
    depan.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Layout6"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: depan,
                ),
                TextField(
                  controller: belakang,
                ),
                Text(
                  'Hallo $_depan $_belakang',
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _depan = depan.text;
                        _belakang = belakang.text;
                      });
                    },
                    child: const Text('Salam'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

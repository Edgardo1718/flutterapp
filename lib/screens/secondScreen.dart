import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
const SecondPage({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Second screen'),
        backgroundColor: Color.fromARGB(255, 214, 22, 112),
        centerTitle: true,
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 13, 119, 66),
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),),

      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 206, 120, 23)),
                    padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15))),
                    child: const Text('Volver'),
                    onPressed: () => Navigator.pop(context),
              )
            ]),
      ),
    );
  }
}
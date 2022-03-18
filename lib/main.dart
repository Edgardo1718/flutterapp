import 'package:flutter/material.dart';
import 'screens/fromScreen.dart';
import 'screens/dataScreen.dart';
import 'screens/secondScreen.dart';
import 'screens/stackScreen.dart';
import 'screens/formScreen.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter demo',
    initialRoute: '/',
    routes: {
    '/' : (context) => const HomePage(),
    '/second':(context) => const SecondPage(),
    '/datos':(context) => const Datos(),
    '/stack': (context)=> const TestStack(),
    '/card': (context)=> const CardScreen(),
    '/form': (context)=> const FormScreen()
    }
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 75, 0, 250),
        centerTitle: true,
        title: const Text('Inicio'),
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 26, 145, 45),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 0, 184, 230)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Segunda pantalla'),
                onPressed: () {
                /*  final route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );*/
                  Navigator.pushNamed(context,'/second');
                }),
            const SizedBox(height: 10.0),

            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 64, 3, 114)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () { 
                  Navigator.pushNamed(context,'/datos');
                }),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 64, 3, 114)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Card mask'),
                onPressed: () { 
                  Navigator.pushNamed(context,'/card');
                }),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 64, 3, 114)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Form Screen'),
                onPressed: () { 
                  Navigator.pushNamed(context,'/form');
                }),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,'/stack');
                  },
                  child: const Text('Pagina Datos Stack'),
                
            )
          ],
        ),
      ),
    );
  }
  }


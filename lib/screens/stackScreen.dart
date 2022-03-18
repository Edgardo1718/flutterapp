import 'package:flutter/material.dart';

class TestStack extends StatelessWidget {
const TestStack({Key? key}) : super(key: key); 
@override
Widget build(BuildContext context) {
     return Scaffold(
     appBar: AppBar(
         title: const Text('Pagina Stack'),
         backgroundColor: Color.fromARGB(255, 136, 10, 240),
       ),

       body: Center(
            child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Center(
            child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children:<Widget>[

         ////Container para la imagen
          Container(
          width: 300.0,
          height: 300.0,
          padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage('https://lh3.googleusercontent.com/a-/AOh14Gi4NR-3NGUnP-iHPmij2x1raG4Yu6g9L9-LBn6d=s288-p-rw-no')
                    ))),
         
         //Container para el texto
          Positioned(
          top: 230.0,
          left: 30.0,
          child: 
          Container(
          width: 260.0,
          height: 20.0,
          child: const Text('Gutierrez Rabanales Edgardo',
          style:
          TextStyle(
            fontSize: 12.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 4.0,
            color: Color.fromARGB(255, 49, 245, 81))),
            )) ,

          //Container para el boton
           Positioned(
           top: 250.0,
           left: 81.0,
           child: Container(
           width: 150.0,
           height: 50.0,
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 4, 199, 189)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                    child: const Text('Regresar'),
                    onPressed: () => Navigator.pop(context),
              )]),
            ) 
          ) 
        ], 
       ), 
      ),
     ),
    ),
   );
  }

Widget stackSinPos(){
    return Center(
         child: SizedBox(
         width: 300.0,
         height: 300.0,
         child: Center(
         child: Stack(
         children:<Widget> [
          Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Uno',
                  style:
                  TextStyle(color: Colors.purple)),),


          Container(
                  width: 250.0,
                  height: 250.0,
                  color: Color.fromARGB(255, 54, 244, 187),
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text
                  ('Dos',
                  style:
                    TextStyle(color: Colors.purple)),),


          Container(
                  width: 200.0,
                  height: 200.0,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                    image: NetworkImage('https://res.cloudinary.com/teepublic/image/private/s--lxNXHPN3--/c_fit,g_north_west,h_840,w_679/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_ffffff,e_outline:40/co_ffffff,e_outline:inner_fill:1/co_bbbbbb,e_outline:3:1000/c_mpad,g_center,h_1260,w_1260/b_rgb:eeeeee/c_limit,f_jpg,h_630,q_90,w_630/v1585726530/production/designs/8796655_0.jpg')
                    )),
                  child: const Text
                  ('Tres',
                  style:
                    TextStyle(color: Colors.black)),
                 ),
               ],
             ),
           ),
         ),
       );
  }
 }
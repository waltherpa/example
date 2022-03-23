import 'package:flutter/material.dart';
import 'package:flutter_application_9_future_provider/function.dart'; //here is my future class
import 'package:flutter_application_9_future_provider/homescreen.dart'; //here is the screen
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Busqueda bus =
      Busqueda(); // my class is called "Busqueda" and has a method (buscarrequest)that returns a future
  @override
  Widget build(BuildContext context) {
    return FutureProvider(
      initialData: 'vacio',
      create: (context) => bus.buscarrequest(),
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}

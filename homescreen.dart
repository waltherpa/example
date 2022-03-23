import 'package:flutter/material.dart';
import 'package:flutter_application_9_future_provider/function.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController val1 = TextEditingController();
    TextEditingController val2 = TextEditingController();
    Busqueda Look = Provider.of<Busqueda>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('future builder')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: val1,
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Look.buscarrequest(); // here is the future!!
              },
              child: const Text('data')),
          const SizedBox(
            height: 15,
          ),
          (Look == ['vacio'])
              ? const CircularProgressIndicator()
              : TextField(
                  controller: val2,
                ),
        ],
      ),
    );
  }
}

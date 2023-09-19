import 'package:flutter/material.dart';

void main() => runApp(const Gelateria());

class Gelateria extends StatelessWidget {
  const Gelateria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        title: 'Gelateria',
        home: Scaffold(
            appBar: AppBar(title: const Text('Gelateria')),
            body: Builder(builder: (context) {
              return SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 50,
                  ),
                  const Text('Il gelato più buono',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    height: 50,
                  ),
                  Image.network(
                      'https://images.pexels.com/photos/47062/bananas-dessert-ice-cream-fruit-47062.jpeg'),
                  Container(
                    height: 100,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        SnackBar snackBar = const SnackBar(
                            content: Text('La mail è Gelateria@flet.dev'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: const Text('Info', style: TextStyle(color: Colors.white, fontSize: 20)))
                ]
              ),
            );
          }
        )
      )
    );
  }
}

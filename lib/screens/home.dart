import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/goto_screen_a", arguments: {
                'result': '',
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Next',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )),
      )),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My home page',
            ),
          ],
        ),
      ),
    );
  }
}

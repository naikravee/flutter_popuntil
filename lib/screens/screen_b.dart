import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({
    super.key,
  });

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Screen B',
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/goto_screen_c");
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
              'Screen B',
            ),
          ],
        ),
      ),
    );
  }
}

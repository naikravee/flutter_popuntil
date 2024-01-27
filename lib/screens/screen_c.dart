import 'package:flutter/material.dart';

class ScreenC extends StatefulWidget {
  const ScreenC({
    super.key,
  });

  @override
  State<ScreenC> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Screen C',
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
              Navigator.pushNamed(context, "/goto_screen_d");
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
              'Screen C',
            ),
          ],
        ),
      ),
    );
  }
}

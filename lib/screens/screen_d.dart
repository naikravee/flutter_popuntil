import 'package:flutter/material.dart';

class ScreenD extends StatefulWidget {
  const ScreenD({
    super.key,
  });

  @override
  State<ScreenD> createState() => _ScreenDState();
}

class _ScreenDState extends State<ScreenD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Screen D',
          style: TextStyle(color: Colors.white),
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
              Navigator.popUntil(context, ((route) {
                if (route.settings.name == '/goto_screen_a') {
                  (route.settings.arguments as Map)['result'] =
                      'Your request has been submitted successfully..!!';
                  return true;
                } else {
                  return false;
                }
              }));
            },
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Submit',
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
              'Screen D',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_popuntil_with_data/screens/screen_b.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({
    super.key,
  });

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  var textContent = 'Screen A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Screen A',
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
              Navigator.pushNamed(context, "/goto_screen_b").then((value) {
                final arguments =
                    ModalRoute.of(context)?.settings.arguments as Map;
                final result = arguments['result'];
                setState(() {
                  if (result != null && result != '') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        duration: const Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          result,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                });
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
              'Screen A',
            ),
          ],
        ),
      ),
    );
  }
}

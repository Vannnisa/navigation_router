import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 246, 252),
      appBar: AppBar(
        title: const Text('Navigation & Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreen');
              },
              child: const Text('Go to Second Screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments: 'Hello from First Screen!');
              },
              child: const Text('Navigation with Data'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result =
                    await Navigator.pushNamed(context, '/returnDataScreen');

                SnackBar snackBar =
                    SnackBar(content: Text('Nama anda $result'));
                scaffoldMessenger.showSnackBar(snackBar);
              },
              child: const Text('Return Data from Another Screen'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/replacementScreen');
              },
              child: const Text('Replace Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

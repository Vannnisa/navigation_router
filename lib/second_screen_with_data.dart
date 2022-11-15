import 'package:flutter/material.dart';

class SecondScreenWithData extends StatelessWidget {
  final String data;

  const SecondScreenWithData(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              // ignore: sort_child_properties_last
              child: Text(data),
              margin: const EdgeInsets.only(bottom: 10),
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

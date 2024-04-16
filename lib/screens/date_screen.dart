import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  _DateScreenState createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  // State. This variable is why we need a StatefulWidget.
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          // This is where we use state (`date` variable) in the process of building the UI.
          date.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 42.0, color: Colors.grey[400]),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            // We totally need to use setState() here. Otherwise, state will be updated
            // but UI will not reflect that change.
            setState(() {
              date = DateTime.now();
            });
          },
          child: const Text('Update date'),
        ),
      ],
    );
  }
}

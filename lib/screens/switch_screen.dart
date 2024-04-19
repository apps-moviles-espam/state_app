import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  // State. This variable is why we need a StatefulWidget.
  var activated = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          // We use state here (`activated` variable) in the process of building the UI.
          activated ? 'On' : 'Off',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 42.0, color: Colors.grey[400]),
        ),
        const SizedBox(height: 30),
        Switch(
          // We use state here (`activated` variable) in the process of building the UI.
          value: activated,
          onChanged: (bool newValue) {
            // We totally need to use setState() here. Otherwise, state will be updated
            // but UI will not reflect that change.
            // setState(() {
            // });
            activated = newValue;
          },
        ),
      ],
    );
  }
}

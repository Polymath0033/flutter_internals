import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget {
  const DemoButtons({super.key});

  @override
  _DemoButtonsState createState() => _DemoButtonsState();
}

class _DemoButtonsState extends State<DemoButtons> {
  bool _isUnderstood = false;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _isUnderstood = false;
              });
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _isUnderstood = true;
              });
            },
            child: const Text('Yes'),
          ),
        ],
      ),
      if (_isUnderstood) const Text('Awesome!'),
    ]);
  }
}

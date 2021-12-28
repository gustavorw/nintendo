import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String label;

  const ActionButton({
    Key? key,
    this.label = 'X',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.05),
        child: Text(
          label,
          style: TextStyle(
            fontSize: constraints.maxHeight * 0.65,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      );
    });
  }
}

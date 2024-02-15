import 'package:flutter/material.dart';

class GButton extends StatelessWidget {
  final String text;
  final bool fullWidth;
  final Function() funcs;

  const GButton(
      {super.key,
      required this.fullWidth,
      required this.text,
      required this.funcs});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
                minimumSize: fullWidth ? const Size.fromHeight(50) : null,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(16.0),
                textStyle: const TextStyle(fontSize: 20)),
            onPressed: funcs,
            child: Wrap(children: [Text(text)]),
          ),
        ],
      ),
    );
  }
}

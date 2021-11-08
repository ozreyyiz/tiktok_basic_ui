import 'package:flutter/material.dart';

class ActivityButton extends StatelessWidget {
  final IconData icon;
  final String number;

  const ActivityButton({Key? key, required this.icon, required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          SizedBox(height: 10),
          Text(number),
        ],
      ),
    );
  }
}

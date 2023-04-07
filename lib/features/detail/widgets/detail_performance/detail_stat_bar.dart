import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  final double initialValue;
  final double finalValue;
  final String label;
  final Color color;

  const StatBar({
    super.key,
    required this.initialValue,
    required this.finalValue,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TweenAnimationBuilder<double>(
          tween: Tween(begin: initialValue, end: finalValue),
          duration: const Duration(milliseconds: 500),
          builder: (BuildContext context, double value, Widget? child) {
            return Container(
              width: value * MediaQuery.of(context).size.width,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color,
              ),
              child: LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                value: value,
              ),
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RadialPercentWidget extends StatelessWidget {
  final double percent;

  const RadialPercentWidget({
    super.key,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: percent,
            strokeWidth: 6,
          ),
          Text(
            '${(percent * 100).toInt()}%',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

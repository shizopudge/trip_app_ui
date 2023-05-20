import 'package:flutter/material.dart';

import '../../../constants.dart';

class ResortCardStat extends StatelessWidget {
  const ResortCardStat({
    super.key,
    required this.count,
    required this.icon,
    required this.label,
  });

  final int count;
  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 8,
        ),
        Text(
          '$count $label',
          style: AppConstants.small,
        ),
      ],
    );
  }
}

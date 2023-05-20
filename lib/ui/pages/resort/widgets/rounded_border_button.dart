import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class RoundedBorderButton extends StatelessWidget {
  final String label;
  final String content;
  final Widget icon;
  const RoundedBorderButton({
    super.key,
    required this.label,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          18,
        ),
        side: BorderSide(
          color: Colors.grey.shade400,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(
          18,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                label,
                maxFontSize: 50,
                minFontSize: 21,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    content,
                    maxFontSize: 50,
                    minFontSize: 21,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  icon,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ChooseDatesButton extends StatelessWidget {
  const ChooseDatesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          18,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(
          18,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icons/travel.png',
                height: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              const AutoSizeText(
                'Choose\ndates',
                maxFontSize: 50,
                minFontSize: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

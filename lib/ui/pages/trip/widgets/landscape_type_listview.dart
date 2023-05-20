import 'package:flutter/material.dart';

import '../../../../data/fake_data.dart';
import '../../../../data/models/landscape/landscape.dart';
import 'landscape_type_card.dart';

class LandscapeTypeListview extends StatefulWidget {
  final List<Landscape> landscapes;
  final ValueNotifier<int> selectedIndexNotifier;
  const LandscapeTypeListview({
    super.key,
    required this.selectedIndexNotifier,
    required this.landscapes,
  });

  @override
  State<LandscapeTypeListview> createState() => _LandscapeTypeListviewState();
}

class _LandscapeTypeListviewState extends State<LandscapeTypeListview> {
  late final ScrollController _scrollController;

  void _onTap(int index, Landscape landscape) {
    widget.selectedIndexNotifier.value = index;
    _scrollController.animateTo(
      widget.selectedIndexNotifier.value * 100,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: FakeData.landscapes.length,
        itemBuilder: (context, index) {
          final landscape = FakeData.landscapes[index];
          return LandscapeTypeCard(
            landscape: landscape,
            index: index,
            selectedIndexNotifier: widget.selectedIndexNotifier,
            onTap: () => _onTap(
              index,
              landscape,
            ),
          );
        },
      ),
    );
  }
}

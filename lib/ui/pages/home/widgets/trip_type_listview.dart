import 'package:flutter/material.dart';
import 'package:trip_app_ui/ui/pages/home/widgets/trip_type_card.dart';

import '../../../../data/models/trip_type/trip_type.dart';
import '../../../constants.dart';
import '../../trip/trip_page.dart';

class TripTypeListView extends StatefulWidget {
  final List<TripType> tripTypes;
  const TripTypeListView({
    super.key,
    required this.tripTypes,
  });

  @override
  State<TripTypeListView> createState() => _TripTypeListViewState();
}

class _TripTypeListViewState extends State<TripTypeListView> {
  late final ValueNotifier<int> selectedIndexNotifier;
  late final ScrollController _scrollController;

  void _onScroll() {
    int itemCount = widget.tripTypes.length;
    double scrollOffset = _scrollController.position.pixels;
    double viewportHeight = _scrollController.position.viewportDimension;
    double scrollRange = _scrollController.position.maxScrollExtent -
        _scrollController.position.minScrollExtent;
    int firstVisibleItemIndex =
        (scrollOffset / (scrollRange + viewportHeight) * itemCount).floor();
    if (_scrollController.position.atEdge) {
      bool isTop = _scrollController.position.pixels == 0;
      if (isTop) {
        selectedIndexNotifier.value = 0;
      } else {
        selectedIndexNotifier.value = firstVisibleItemIndex + 1;
      }
    } else {
      selectedIndexNotifier.value = firstVisibleItemIndex + 1;
    }
  }

  void _onTap(int index, TripType tripType) {
    if (index == selectedIndexNotifier.value) {
      AppConstants.navigateWithSlideTransition(
        context,
        TripPage(
          tripType: tripType,
        ),
      );
    } else {
      selectedIndexNotifier.value = index;
      _scrollController.animateTo(
        selectedIndexNotifier.value * 200,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
      );
    }
  }

  @override
  void initState() {
    selectedIndexNotifier = ValueNotifier<int>(0);
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    selectedIndexNotifier.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: widget.tripTypes.length,
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final TripType tripType = widget.tripTypes[index];
          return TripTypeCard(
            onTap: () => _onTap(index, tripType),
            tripType: tripType,
            index: index,
            selectedIndexNotifier: selectedIndexNotifier,
          );
        },
      ),
    );
  }
}

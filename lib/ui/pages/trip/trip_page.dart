import 'package:flutter/material.dart';

import '../../../data/fake_data.dart';
import '../../../data/models/trip_type/trip_type.dart';
import 'widgets/collapsed_trip_appbar.dart';
import 'widgets/expanded_trip_appbar.dart';
import 'widgets/resort_card.dart';

class TripPage extends StatefulWidget {
  final TripType tripType;
  const TripPage({
    super.key,
    required this.tripType,
  });

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  late final ValueNotifier<int> _selectedIndexNotifier;
  late final ValueNotifier<bool> _isAppBarCollapsedNotifier;
  late final ScrollController _scrollController;
  @override
  void initState() {
    _selectedIndexNotifier = ValueNotifier<int>(0);
    _isAppBarCollapsedNotifier = ValueNotifier<bool>(false);
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_scrollController.offset > 200) {
      _isAppBarCollapsedNotifier.value = true;
    }
    if (_scrollController.offset <= 200) {
      _isAppBarCollapsedNotifier.value = false;
    }
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _selectedIndexNotifier.dispose();
    _isAppBarCollapsedNotifier.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _isAppBarCollapsedNotifier,
        builder: (context, isAppBarCollapsed, _) => Visibility(
          visible: isAppBarCollapsed,
          child: IconButton(
            onPressed: _scrollToTop,
            icon: const CircleAvatar(
              radius: 16,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.arrow_upward_rounded,
                size: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: _isAppBarCollapsedNotifier,
              builder: (context, isAppBarCollapsed, _) => AnimatedSize(
                alignment: Alignment.topCenter,
                duration: const Duration(
                  milliseconds: 500,
                ),
                curve: Curves.linear,
                child: !isAppBarCollapsed
                    ? ExpandedTripAppbar(
                        widget: widget,
                        selectedIndexNotifier: _selectedIndexNotifier)
                    : const CollapsedTripAppbar(),
              ),
            ),
            Expanded(
              child: GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 375,
                ),
                itemCount: FakeData.resorts.length,
                itemBuilder: (context, index) {
                  final resort = FakeData.resorts[index];
                  return ResortCard(resort: resort);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:hotel_booking/i18n/strings.g.dart';

@RoutePage()
class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.overview.title),
      ),
      body: Center(
        child: Icon(
          Icons.explore_outlined,
          size: 150,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
      ),
    );
  }
}

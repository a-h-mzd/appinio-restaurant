import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ReservationScreen extends StatelessWidget with AutoRouteWrapper {
  final DateTime selectedDate;

  const ReservationScreen({
    super.key,
    required this.selectedDate,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider<ReservationProvider>(
      create: injectProvider.using(selectedDate),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ReservationProvider provider = context.watch();

    final Widget body;
    if (provider.isLoading) {
      body = const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    } else {
      final tables = provider.tables.entries.toList();

      body = ListView.builder(
        itemCount: tables.length,
        itemBuilder: (context, index) {
          final tableId = tables[index].key;
          final table = tables[index].value;

          return Row(
            children: [
              Text(tableId),
              const Text(': '),
              Text(table.toString()),
            ],
          );
        },
      );
    }

    return Scaffold(body: body);
  }
}

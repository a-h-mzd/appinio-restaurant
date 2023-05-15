import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/domain/reservations/models/reservation_status.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/components/cupertino_sliver_navigation_bar.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/components/table_card.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ReservationScreen extends StatelessWidget with AutoRouteWrapper {
  static const dateKey = 'date';

  final String selectedDate;

  const ReservationScreen({
    super.key,
    @PathParam(dateKey) required this.selectedDate,
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

    final Widget tablesList;
    if (provider.isLoading) {
      tablesList = const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    } else {
      final tables = provider.tables.entries.toList();

      tablesList = SliverPadding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        sliver: SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: TableCard.aspectRatio,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: tables.length,
          itemBuilder: (context, index) {
            final tableId = tables[index].key;
            final table = tables[index].value;

            final reservationStatus =
                provider.reservationStatusFor(tableId: tableId);
            return TableCard(
              table: table,
              reservationStatus: reservationStatus,
              ignoreTaps: reservationStatus is ReservationStatusReserved,
              onTap: () => provider.onTableTap(
                table: table,
                tableId: tableId,
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          TodoSliverNavigationBar(
            title: context.localizations.tableThemes,
          ),
          tablesList,
        ],
      ),
    );
  }
}

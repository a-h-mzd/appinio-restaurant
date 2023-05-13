import 'package:appinio_restaurant/common/injector/injector.dart';
import 'package:appinio_restaurant/l10n/localization.dart';
import 'package:appinio_restaurant/presentation/screens/reservation_time/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ReservationTimeScreen extends StatelessWidget with AutoRouteWrapper {
  const ReservationTimeScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return ChangeNotifierProvider<ReservationTimeProvider>(
      create: injectProvider,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ReservationTimeProvider provider = context.watch();

    return Scaffold(
      body: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Column(
          children: [
            Flexible(
              child: CalendarDatePicker(
                firstDate: provider.dateTimeNow,
                lastDate: provider.calendarLastDate,
                initialDate: provider.selectedDate,
                currentDate: provider.selectedDate,
                onDateChanged: provider.updateSelectedDate,
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.topCenter,
                child: Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.purple,
                    ),
                  ),
                  child: showPicker(
                    elevation: 1.0,
                    hideButtons: true,
                    is24HrFormat: true,
                    disableMinute: true,
                    iosStylePicker: true,
                    isInlinePicker: true,
                    minHour: provider.minHour + .0,
                    maxHour: provider.maxHour + .0,
                    isOnChangeValueMode: true,
                    value: provider.selectedTimeOfDay,
                    onChange: provider.updateSelectedTimeOfDay,
                  ) as Widget,
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: provider.onNextTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text.rich(
                    TextSpan(
                      children: const [
                        TextSpan(
                          text: '  | ',
                        ),
                      ],
                      text: context.localizations.next,
                    ),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_right_alt_rounded,
                    size: 32.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

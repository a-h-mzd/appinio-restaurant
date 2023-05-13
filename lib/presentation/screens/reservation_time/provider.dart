import 'package:appinio_restaurant/presentation/common/appinio_provider.dart';
import 'package:appinio_restaurant/presentation/screens/reservation_time/router.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReservationTimeProvider extends AppinioProvider<ReservationTimeRouter> {
  ReservationTimeProvider({
    required super.router,
    @factoryParam required super.context,
  });

  TimeOfDay get timeOfDayNow => TimeOfDay.fromDateTime(dateTimeNow);
  final dateTimeNow = DateTime.now();

  DateTime get calendarLastDate => dateTimeNow.add(const Duration(days: 120));

  late DateTime selectedDate = dateTimeNow;

  void updateSelectedDate(DateTime newSelectedDate) {
    selectedDate = newSelectedDate;
    notifyListeners();
  }

  final minHour = 8;
  final maxHour = 21;

  late int _selectedHour = timeOfDayNow.hour.clamp(minHour, maxHour);

  Time get selectedTimeOfDay => Time(hour: _selectedHour, minute: 0);

  void updateSelectedTimeOfDay(Time newSelectedTime) {
    _selectedHour = newSelectedTime.hour;
    notifyListeners();
  }

  void onNextTap() {
    final selectedDate = DateTime(
      this.selectedDate.year,
      this.selectedDate.month,
      this.selectedDate.day,
      _selectedHour,
    );
    router.openReservationScreen(selectedDate);
  }
}

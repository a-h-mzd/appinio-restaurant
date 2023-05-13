import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReservationScreen extends StatelessWidget {
  final DateTime selectedDate;

  const ReservationScreen({
    super.key,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(selectedDate.toString()),
      ),
    );
  }
}

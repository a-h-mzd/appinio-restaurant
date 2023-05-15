import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:appinio_restaurant/presentation/screens/reservation/guards/date_guard.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReservationTimeRouter extends AppinioRouter {
  void openReservationScreen(DateTime selectedDate) {
    router.push(
      ReservationRoute(
        selectedDate: DateGuard.encodeDate(selectedDate),
      ),
    );
  }
}

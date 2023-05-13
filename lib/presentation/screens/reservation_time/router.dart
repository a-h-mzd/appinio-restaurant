import 'package:appinio_restaurant/presentation/router/router.dart';
import 'package:injectable/injectable.dart';

@injectable
class ReservationTimeRouter extends AppinioRouter {
  void openReservationScreen(DateTime selectedDate) {
    router.push(ReservationRoute(selectedDate: selectedDate));
  }
}

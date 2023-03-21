import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../modals/remiderModal.dart';

class ReminderController extends GetxController {
  RxInt year = 0.obs;
  RxInt month = 0.obs;
  RxInt day = 0.obs;
  RxInt hour = 0.obs;
  RxInt minute = 0.obs;

  RxList<ReminderDB> reminders = <ReminderDB>[].obs;

  setDateTime({required int hourVal, required int minuteVal}) {
    hour.value = hourVal;
    minute.value = minuteVal;
  }

  clearDateTime() {
    hour.value = 0;
    minute.value = 0;
  }
}

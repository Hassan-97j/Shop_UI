import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
   bool switchChange = false;
  var switchDataController = GetStorage();

  switchState() {
    // ignore: avoid_print
    print('contructor called');
    if (switchDataController.read('isSwitched') != null) {
      switchChange = switchDataController.read('isSwitched');
    }
    update();
  }

  onChanged(value) {
    switchChange = value;
    switchDataController.write('isSwitched', switchChange);
    update();
  }
}
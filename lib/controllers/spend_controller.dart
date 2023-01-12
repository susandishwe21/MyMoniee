import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mymoniee/models/spend.dart';

class SpendController extends GetxController {
  List<Spend> spendList = [
    Spend(id: '1', title: 'Food', image: 'assets/images/food.png'),
    Spend(id: '2', title: 'Taxi', image: 'assets/images/taxi.png'),
    Spend(id: '3', title: 'Shopping', image: 'assets/images/shopping.png'),
    Spend(id: '4', title: 'Bill', image: 'assets/images/bill.png'),
    Spend(id: '5', title: 'Education', image: 'assets/images/education.png'),
    Spend(id: '6', title: 'Health', image: 'assets/images/health.png'),
    Spend(id: '7', title: 'Home', image: 'assets/images/home.png'),
    Spend(id: '8', title: 'Other', image: 'assets/images/plus.png'),
  ];
}

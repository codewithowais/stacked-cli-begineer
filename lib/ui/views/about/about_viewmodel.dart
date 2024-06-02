import 'package:expensetracker/app/app.locator.dart';
import 'package:expensetracker/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class AboutViewmodel extends BaseViewModel {
  final counterService = locator<CounterService>();
}

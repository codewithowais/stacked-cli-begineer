import 'package:expensetracker/app/app.locator.dart';
import 'package:expensetracker/app/app.router.dart';
import 'package:expensetracker/services/counter_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigatioService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  updatecounterValue() {
    counterService.updatecounterValService();
    rebuildUi();
  }

  navigatetoabout() {
    navigatioService.navigateToAboutView();
  }
}

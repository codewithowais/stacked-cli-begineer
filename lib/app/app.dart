import 'package:expensetracker/services/counter_service.dart';
import 'package:expensetracker/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:expensetracker/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:expensetracker/ui/views/about/about_view.dart';
import 'package:expensetracker/ui/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: AboutView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Singleton(classType: CounterService)
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

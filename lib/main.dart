import 'package:flutter/material.dart';
import 'package:expensetracker/app/app.bottomsheets.dart';
import 'package:expensetracker/app/app.dialogs.dart';
import 'package:expensetracker/app/app.locator.dart';
import 'package:expensetracker/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      // navigatorObservers: [
      //   StackedService.routeObserver,
      // ],
    );
  }
}

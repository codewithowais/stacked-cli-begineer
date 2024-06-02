import 'package:expensetracker/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodell, child) {
          return Scaffold(
            body: Column(
              children: [
                Center(
                  child: Text(
                    "${viewmodell.counterService.counter}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      viewmodell.updatecounterValue();
                    },
                    child: Text("Increment")),
                ElevatedButton(
                    onPressed: () {
                      viewmodell.navigatetoabout();
                    },
                    child: Text("Navigate to about"))
              ],
            ),
          );
        });
  }
}

import 'package:expensetracker/ui/views/about/about_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => AboutViewmodel(),
        builder: (context, viewmode1l, child) {
          return Scaffold(
            body: Text("${viewmode1l.counterService.counter}"),
          );
        });
  }
}

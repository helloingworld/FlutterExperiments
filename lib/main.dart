import 'package:flutter/material.dart';
import 'package:flutterexperiments/common/app_strings.dart';
import 'package:flutterexperiments/dashboard/dashboard_screen.dart';
import 'package:flutterexperiments/experiments/recursive_routing/recursive_routing_screen.dart';

void main() {
  runApp(RecursiveRoutingApp());
}

class RecursiveRoutingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        typography: Typography.material2018(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}

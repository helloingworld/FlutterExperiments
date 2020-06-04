import 'package:flutter/material.dart';
import 'package:flutter_experiments/common/app_strings.dart';
import 'package:flutter_experiments/experiments/recursive_routing/recursive_routing_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName),
      ),
      body: ListView(
        children: <Widget>[
          makeDashboardItem(
            context,
            AppStrings.recursiveRoutingTitle,
            (context) => RecursiveRoutingScreen(1),
          ),
        ],
      ),
    );
  }

  Card makeDashboardItem(BuildContext context, String title, WidgetBuilder routeBuilder) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: routeBuilder));
        },
      ),
    );
  }
}

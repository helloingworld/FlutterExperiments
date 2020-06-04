import 'package:flutter/material.dart';
import 'package:flutterexperiments/common/app_strings.dart';
import 'package:flutterexperiments/experiments/recursive_routing/recursive_routing_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.appName),
      ),
      body: ListView(
        children: <Widget>[
          makeDashboardItem(context, 'Recursive Routing', (context) => RecursiveRoutingScreen(1)),
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

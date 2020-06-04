import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterexperiments/common/app_strings.dart';

class RecursiveRoutingScreen extends StatelessWidget {
  const RecursiveRoutingScreen(
    this.depth, {
    Key key,
  })  : assert(depth != null),
        super(key: key);

  final int depth;

  void goDeep(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecursiveRoutingScreen(depth + 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Colors.primaries[(depth - 1) % Colors.primaries.length];

    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: color,
        colorScheme: Theme.of(context).colorScheme.copyWith(secondary: color),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${AppStrings.recursiveRoutingTitle} $depth'),
        ),
        body: Center(
          child: Text(
            '$depth',
            style: Theme.of(context).textTheme.headline1.copyWith(color: Colors.black),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => goDeep(context),
        ),
      ),
    );
  }
}

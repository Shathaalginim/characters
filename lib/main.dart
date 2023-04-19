// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_breaking/app_router.dart';

void main() {
  runApp(MyApp(
    approute: Approute(),
  ));
}

class MyApp extends StatelessWidget {
  final Approute approute;
  const MyApp({
    Key? key,
    required this.approute,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: approute.genarateroute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';
import 'package:pertemuan_ketuju/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: AppTheme.primaryFontFamily),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}

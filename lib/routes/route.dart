import 'package:flutter/material.dart';
import 'package:pertemuan_ketuju/pages/contact.dart';
import 'package:pertemuan_ketuju/pages/galery.dart';
import 'package:pertemuan_ketuju/pages/home.dart';
import 'package:pertemuan_ketuju/pages/portfolio.dart';
import 'package:pertemuan_ketuju/pages/profile.dart';
import 'package:pertemuan_ketuju/pages/setting.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/portfolio':
        return MaterialPageRoute(builder: (_) => PortfolioPage());
      case '/galery':
        return MaterialPageRoute(builder: (_) => GaleryPage());
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactPage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}

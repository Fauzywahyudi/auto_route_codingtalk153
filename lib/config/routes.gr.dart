// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/404.dart';
import '../pages/homepage.dart';
import '../pages/secondpage.dart';
import '../pages/thirdpage.dart';

class Routes {
  static const String homePage = '/';
  static const String secondpage = '/Secondpage';
  static const String _thirdPage = '/user/:id?';
  static String thirdPage({dynamic id = ''}) => '/user/$id';
  static const String notFound404 = '*';
  static const all = <String>{
    homePage,
    secondpage,
    _thirdPage,
    notFound404,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.secondpage, page: Secondpage),
    RouteDef(Routes._thirdPage, page: ThirdPage),
    RouteDef(Routes.notFound404, page: NotFound404),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    Secondpage: (data) {
      final args = data.getArgs<SecondpageArguments>(
        orElse: () => SecondpageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => Secondpage(
          number: args.number,
          nama: args.nama,
        ),
        settings: data,
      );
    },
    ThirdPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ThirdPage(id: data.pathParams['id'].value),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        transitionDuration: const Duration(milliseconds: 1000),
      );
    },
    NotFound404: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NotFound404(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// Secondpage arguments holder class
class SecondpageArguments {
  final int number;
  final String nama;
  SecondpageArguments({this.number, this.nama});
}

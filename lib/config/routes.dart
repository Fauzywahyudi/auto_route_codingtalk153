import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:coding_talk_153/pages/404.dart';
import 'package:coding_talk_153/pages/homepage.dart';
import 'package:coding_talk_153/pages/secondpage.dart';
import 'package:coding_talk_153/pages/thirdpage.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: Secondpage),
    CustomRoute(
      page: ThirdPage,
      path: '/user/:id?',
      durationInMilliseconds: 1000,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    MaterialRoute(page: NotFound404, path: '*'),
  ],
)
class $AppRouter {}

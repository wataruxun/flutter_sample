import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/page1.dart';
import '../pages/page2.dart';

class SamplePage {
  static GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Page1(),
        routes: <GoRoute>[
          GoRoute(
            path: 'page2',
            builder: (BuildContext context, GoRouterState state) =>
                const Page2(),
          ),
        ],
      ),
    ],
  );
}

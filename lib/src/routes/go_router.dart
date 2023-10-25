


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hackathon_mobile/src/views/detalle_moneda_view.dart';
import 'package:hackathon_mobile/src/views/home_page.dart';
import 'package:hackathon_mobile/src/views/home_view.dart';
import 'package:hackathon_mobile/src/views/listado_monedas_view.dart';

class GorouterConfiguracion {
  //Rutas gorouter
  static String login = '/login';

  static String home = '/home';

  static String listadoMonedas = '/listado_monedas_view';

  static String detalle = '/detalle';

  static String noPageFound = '/404';

static GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  static BuildContext? contextoGoRouter() {
    return rootNavigatorKey.currentState?.context;
  }

  GoRouter myRouter = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: home,
      routes: <RouteBase>[
        ///[Pagina del homePage]
        ShellRoute(
          pageBuilder: (context, state, child) {
            return NoTransitionPage(child: HomePage(child: child));
          },
          routes: <RouteBase>[
            GoRoute(
              path: '/',
              redirect: (_, __) => home,
            ),
            GoRoute(
              path: home,
              builder:  (BuildContext context, GoRouterState state) {
                 return const HomeView();
              },
            ),
            GoRoute(
              path: listadoMonedas,
              builder:  (BuildContext context, GoRouterState state) {
                 return const ListadoMonedaView();
              },
            ),
            GoRoute(
              path: detalle,
              builder:  (BuildContext context, GoRouterState state) {
                 return const DetalleMonedaView();
              },
            ),
          ],
        ),
      ]);

}


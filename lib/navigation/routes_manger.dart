import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:residents_app/navigation/app_routes_names.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();

class RoutesManager { 

  late final GoRouter _appRouter;
  GoRouter get router => _appRouter;
  RoutesManager() {
    _appRouter = 
    
    GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: [ 
     
      
        GoRoute(
            path: '/',
            name: AppRoutesNames.splash,
            pageBuilder: (context, state) => CupertinoPage(
                  child: const SplashPage(),
                  key: state.pageKey,
                  name: state.name,
                ),
            routes: const []), 
    
      ],
    );
  }



  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return CupertinoPage(
      key: state.pageKey,
      child: child,
      //   allowSnapshotting: false
    );
  }
}


class SplashPage  extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
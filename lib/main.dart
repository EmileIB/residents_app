import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:residents_app/injection.dart';

import 'I10n/generated/l10n.dart';
import 'core/resources/resources.dart';
import 'navigation/routes_manger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await configureDependencies();
  runApp(
    // DevicePreview(enabled: !kReleaseMode, builder: (context) => 
     ResidentsApp()
    // ),
  );
}

class ResidentsApp extends StatelessWidget {
   ResidentsApp({
    super.key,
  });
 final routesManager = RoutesManager();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(350, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, widget) => MaterialApp.router(
         builder: (context, child) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      alwaysUse24HourFormat: false,
                       textScaleFactor: 1
                    ),
                    child: child!);
              },
                routerConfig: routesManager.router,
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        theme: getApplicationThemeData(),
        // onGenerateTitle: (BuildContext context) =>
        //     AppLocalizations.of(context).appTitle,
        // initialRoute: AppRoutesNames.splash,
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale(StringsManager.english),
        ],
      //  onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}

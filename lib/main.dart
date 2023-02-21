import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import 'core/app/app.locator.dart';
import 'core/app/app.router.dart';
import 'core/util/app_colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food Court Weather App Task',
            theme: ThemeData(
              textTheme: GoogleFonts.latoTextTheme(),
              primaryColor: AppColors.primaryColor,
              colorScheme: ColorScheme.fromSwatch()
                  .copyWith(secondary: AppColors.accentColor),
              scaffoldBackgroundColor: AppColors.kWhite,
            ),
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [StackedService.routeObserver],
            onGenerateRoute: StackedRouter().onGenerateRoute,
            initialRoute: Routes.splashView,
          );
        });
  }
}

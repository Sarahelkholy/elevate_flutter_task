import 'package:elevate_flutter_task/core/routing/app_router.dart';
import 'package:elevate_flutter_task/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevateApp extends StatelessWidget {
  final AppRouter appRouter;

  const ElevateApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Elevate App',
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.homeScreen,
        );
      },
    );
  }
}

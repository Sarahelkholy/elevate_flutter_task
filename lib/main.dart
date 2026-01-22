import 'package:elevate_flutter_task/core/routing/app_router.dart';
import 'package:elevate_flutter_task/elevate_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(ElevateApp(appRouter: AppRouter()));
}

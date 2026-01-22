import 'package:elevate_flutter_task/core/di/dependency_injection.dart';
import 'package:elevate_flutter_task/core/routing/routes.dart';
import 'package:elevate_flutter_task/features/home/presentation/cubit/cubit/home_cubit_cubit.dart';
import 'package:elevate_flutter_task/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubitCubit(getIt())..getAllProducts(),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manzoma_front/core/constants/routes.dart';
import 'package:manzoma_front/core/di.dart';
import 'package:manzoma_front/presentation/blocs/client_cubit.dart';
import 'package:manzoma_front/presentation/blocs/user_cubit.dart';
import 'package:manzoma_front/presentation/screens/home_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.home:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (_) => getIt<ClientCubit>(),
                child: HomeScreen(),
              ),
        );

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}

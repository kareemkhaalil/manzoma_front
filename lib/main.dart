import 'package:flutter/material.dart';
import 'package:manzoma_front/core/constants/app_router.dart';
import 'package:manzoma_front/core/constants/app_theme.dart';
import 'package:manzoma_front/core/constants/routes.dart';
import 'package:manzoma_front/core/di.dart';
import 'package:manzoma_front/core/services/supabase_client.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseClientHelper.init();
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manzoma',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: RoutesNames.home,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}

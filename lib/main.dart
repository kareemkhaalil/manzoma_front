import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return ScreenUtilInit(
      designSize: const Size(1440, 1024), // حجم التصميم الأساسي (Figma مثلاً)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Manzoma',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.light,
          initialRoute: RoutesNames.home,
          onGenerateRoute: AppRouter.generateRoute,
        );
      },
    );
  }
}

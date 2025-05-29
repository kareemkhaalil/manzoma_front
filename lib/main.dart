import 'package:flutter/material.dart';
import 'package:manzoma_front/core/services/supabase_client.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseClientHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Bazar',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Scaffold(
        body: Center(child: Text('Welcome to Grocery Bazar!')),
      ),
    );
  }
}

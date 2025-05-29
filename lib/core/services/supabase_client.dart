import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseClientHelper {
  static Future<void> init() async {
    await Supabase.initialize(
      url: 'https://ehzlokgydjzelrdlnfsm.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVoemxva2d5ZGp6ZWxyZGxuZnNtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgyMjA0ODcsImV4cCI6MjA2Mzc5NjQ4N30.5thhHxCfheQ-YKv3s3w8tbxYDQrmgZbd5foR-hAGjFI',
    );
  }

  static SupabaseClient get client => Supabase.instance.client;
}

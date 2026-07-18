import 'package:supabase_flutter/supabase_flutter.dart';

/// Placeholder Supabase initialization. Reads project URL/anon key and
/// initializes the Supabase client. No auth or query logic lives here.
Future<void> initSupabase() async {
  await Supabase.initialize(
    url: 'SUPABASE_URL',
    publishableKey: 'SUPABASE_ANON_KEY',
  );
}

SupabaseClient get supabase => Supabase.instance.client;

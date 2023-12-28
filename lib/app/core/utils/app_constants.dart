
abstract class AppConstants {
  static const String supabaseUrl = String.fromEnvironment('SUPABASE_URL', defaultValue: '');
  static const String supabaseAnnonKey = String.fromEnvironment('SUPABASE_ANNON_KEY', defaultValue: '');
}
import 'package:flutter/material.dart';
import 'package:flutter_food_tracker_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  // ----------- กำหนดค่าของ Supabase ที่จะทำงานด้วย-------------------------
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xfrfcsgsnlrvxtejfdss.supabase.co',
    publishableKey: 'sb_publishable_Lg-h531rGkoh1EV-OEIABw_jMpgMq2I',
  );

  runApp(const FlutterFoodTracker());
}

class FlutterFoodTracker extends StatefulWidget {
  const FlutterFoodTracker({super.key});

  @override
  State<FlutterFoodTracker> createState() => _FlutterFoodTrackerState();
}

class _FlutterFoodTrackerState extends State<FlutterFoodTracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: GoogleFonts.kanit().fontFamily,
              fontFamilyFallback: GoogleFonts.kanit().fontFamilyFallback,
            ),
      ),
    );
  }
}
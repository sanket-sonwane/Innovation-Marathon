import 'package:flutter/material.dart';
// Local theme (inlined to avoid import issues)

import 'package:smart_mobility_app/features/home/home_screen.dart';
import 'package:smart_mobility_app/features/locate/locate_screen.dart';
import 'package:smart_mobility_app/features/navigation/voice_navigation_screen.dart';
import 'package:smart_mobility_app/features/walk_mode/walk_mode_screen.dart';
import 'package:smart_mobility_app/features/transport/transport_screen.dart';
import 'package:smart_mobility_app/features/emergency/emergency_screen.dart';
import 'package:smart_mobility_app/features/settings/settings_screen.dart';

void main() {
  runApp(const SmartMobilityApp());
}

class SmartMobilityApp extends StatelessWidget {
  const SmartMobilityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smart Mobility Assistant",
      theme: AppTheme.darkTheme,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.locate: (_) => const LocateScreen(),
        AppRoutes.navigation: (_) => const VoiceNavigationScreen(),
        AppRoutes.walkMode: (_) => const WalkModeScreen(),
        AppRoutes.transport: (_) => const TransportScreen(),
        AppRoutes.emergency: (_) => const EmergencyScreen(),
        AppRoutes.settings: (_) => const SettingsScreen(),
      },
    );
  }
}

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF2E8BFF),
    scaffoldBackgroundColor: const Color(0xFF121212),
    useMaterial3: true,
    textTheme: const TextTheme(
      titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16),
    ),
  );
}

class AppRoutes {
  static const home = "/";
  static const locate = "/locate";
  static const navigation = "/navigation";
  static const walkMode = "/walk-mode";
  static const transport = "/transport";
  static const emergency = "/emergency";
  static const settings = "/settings";
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Mobility Assistant"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            _NavButton(label: "Locate Me", route: AppRoutes.locate, icon: Icons.my_location),
            _NavButton(label: "Go to Location (Voice Navigation)", route: AppRoutes.navigation, icon: Icons.mic),
            _NavButton(label: "Start Walk Mode", route: AppRoutes.walkMode, icon: Icons.visibility),
            _NavButton(label: "Find Nearest Public Transport Stop", route: AppRoutes.transport, icon: Icons.directions_bus),
            _NavButton(label: "Emergency Help", route: AppRoutes.emergency, icon: Icons.warning),
            _NavButton(label: "Settings", route: AppRoutes.settings, icon: Icons.settings),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String label;
  final String route;
  final IconData icon;
  const _NavButton({required this.label, required this.route, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () => Navigator.pushNamed(context, route),
        icon: Icon(icon, size: 28),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Text(label, style: const TextStyle(fontSize: 18)),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

class LocateScreen extends StatelessWidget {
  const LocateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Locate Me')),
      body: const Center(child: Text('Locate feature coming soon')),
    );
  }
}

class VoiceNavigationScreen extends StatelessWidget {
  const VoiceNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Navigation')),
      body: const Center(child: Text('Voice navigation feature coming soon')),
    );
  }
}

class WalkModeScreen extends StatelessWidget {
  const WalkModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Walk Mode')),
      body: const Center(child: Text('Walk mode feature coming soon')),
    );
  }
}

class TransportScreen extends StatelessWidget {
  const TransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transport')),
      body: const Center(child: Text('Transport feature coming soon')),
    );
  }
}

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Emergency')),
      body: const Center(child: Text('Emergency feature coming soon')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings feature coming soon')),
    );
  }
}

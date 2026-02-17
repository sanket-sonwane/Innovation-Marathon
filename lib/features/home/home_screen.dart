import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../widgets/accessible_button.dart';

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
          children: [

            AccessibleButton(
              label: "Locate Me",
              icon: Icons.my_location,
              onTap: () => Navigator.pushNamed(context, AppRoutes.locate),
            ),

            AccessibleButton(
              label: "Go to Location (Voice Navigation)",
              icon: Icons.mic,
              onTap: () => Navigator.pushNamed(context, AppRoutes.navigation),
            ),

            AccessibleButton(
              label: "Start Walk Mode",
              icon: Icons.visibility,
              onTap: () => Navigator.pushNamed(context, AppRoutes.walkMode),
            ),

            AccessibleButton(
              label: "Find Nearest Public Transport Stop",
              icon: Icons.directions_bus,
              onTap: () => Navigator.pushNamed(context, AppRoutes.transport),
            ),

            AccessibleButton(
              label: "Emergency Help",
              icon: Icons.warning,
              onTap: () => Navigator.pushNamed(context, AppRoutes.emergency),
            ),

            AccessibleButton(
              label: "Settings",
              icon: Icons.settings,
              onTap: () => Navigator.pushNamed(context, AppRoutes.settings),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'explorer_tool.dart';
import 'motion_tracker.dart';
import 'light_meter.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sensor Lab - Menu"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _menuButton(
              context,
              title: "Thực hành 1\nMotion Tracker",
              icon: Icons.vibration,
              page: const MotionTracker(),
            ),
            const SizedBox(height: 20),
            _menuButton(
              context,
              title: "Thực hành 2\nExplorer Tool (GPS + Compass)",
              icon: Icons.explore,
              page: const ExplorerTool(),
            ),
            const SizedBox(height: 20),
            _menuButton(
              context,
              title: "Thực hành 3\nLight Meter",
              icon: Icons.lightbulb,
              page: const LightMeter(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Widget page,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 30),
        label: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => page),
          );
        },
      ),
    );
  }
}

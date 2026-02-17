import 'package:flutter/material.dart';

class AccessibleButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final IconData icon;

  const AccessibleButton({
    super.key,
    required this.label,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ElevatedButton.icon(
          onPressed: onTap,
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
      ),
    );
  }
}

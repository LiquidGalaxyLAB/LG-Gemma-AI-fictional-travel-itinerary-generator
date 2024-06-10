import 'package:flutter/material.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
class HomeSuggestionTab extends StatelessWidget {
  const HomeSuggestionTab({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: GlassContainer(

        opacity: 0.3,
        child: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: child)),
      ),
    );
  }
}
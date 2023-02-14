import 'package:flutter/material.dart';

class Unfocus extends StatelessWidget {
  final Widget child;

  const Unfocus({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
  }
}

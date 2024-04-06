import 'package:flutter/material.dart';

class CustomExpanded extends StatelessWidget {
  final int flex;
  const CustomExpanded({super.key, required this.flex});

  @override
  Widget build(BuildContext context) {
    return  Expanded (flex: flex, child: const SizedBox());
  }
}
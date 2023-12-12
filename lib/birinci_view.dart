import 'package:flutter/material.dart';

class BirinciView extends StatelessWidget {
  const BirinciView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 500,
      color: Colors.yellow,
      child: const Center(child: Text("Birinci View")));
  }
}

import 'package:flutter/material.dart';

class IkinciView extends StatelessWidget {
  const IkinciView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 800,
      width: 500,
      color: Colors.orange[50],
      child: const Center(child: Text("İkinci View")));
  }
}

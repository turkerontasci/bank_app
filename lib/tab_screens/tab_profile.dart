import 'package:flutter/material.dart';

class TabProfileScreen extends StatefulWidget {
  const TabProfileScreen({super.key});

  @override
  State<TabProfileScreen> createState() => _TabProfileScreenState();
}

class _TabProfileScreenState extends State<TabProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 300.0,
      width: MediaQuery.sizeOf(context).width,
    );
  }
}

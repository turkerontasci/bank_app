import 'package:flutter/material.dart';

class TabExpenseScreen extends StatefulWidget {
  const TabExpenseScreen({super.key});

  @override
  State<TabExpenseScreen> createState() => _TabExpenseScreenState();
}

class _TabExpenseScreenState extends State<TabExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 300.0,
      width: MediaQuery.sizeOf(context).width,
    );
  }
}

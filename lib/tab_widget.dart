import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    required this.onTapped1,
    required this.onTapped2,
    required this.onTapped3,
    super.key,
  });

  final onTapped1;
  final onTapped2;
  final onTapped3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: onTapped1,
            child: Material(
              elevation: 0.2,
              type: MaterialType.card,
              color: Colors.grey.shade300,
              child: SizedBox(
                height: 50.0,
                width: MediaQuery.sizeOf(context).width / 3,
                child: const Center(
                  child: Text(
                    "Kampanyalar",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTapped2,
            child: Material(
              elevation: 0.2,
              type: MaterialType.card,
              color: Colors.grey.shade300,
              child: SizedBox(
                height: 50.0,
                width: MediaQuery.sizeOf(context).width / 3,
                child: const Center(
                  child: Text(
                    "Harcamalar",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTapped3,
            child: Material(
              elevation: 0.2,
              type: MaterialType.card,
              color: Colors.grey.shade300,
              child: SizedBox(
                height: 50.0,
                width: MediaQuery.sizeOf(context).width / 3,
                child: const Center(
                  child: Text(
                    "Sizin İçin",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bank_app/components/dummy_text.dart';
import 'package:bank_app/dummy_screens/summary_screen.dart';

class TabMainScreen extends StatefulWidget {
  const TabMainScreen({super.key});

  @override
  State<TabMainScreen> createState() => _TabMainScreenState();
}

class _TabMainScreenState extends State<TabMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.purple,
      ),
      height: 200.0,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: MediaQuery.sizeOf(context).width,
            child: CarouselSlider(
              items: List.generate(
                dummyText.length,
                (index) => Text(
                  "${dummyText[index]["dummy"]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                  ),
                ),
              ),
              options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SummaryScreen(),
              ),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Diğer ayrıcalıkları görüntüleyin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.white,
                  size: 40.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

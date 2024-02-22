import 'package:flutter/material.dart';
import '../components/account_widget.dart';
import '../components/dummy_widgets.dart';
import '../components/carousel_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        leadingWidth: MediaQuery.sizeOf(context).width,
        leading: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Merhaba Müşteri Adı",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            UserAvatar(),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        clipBehavior: Clip.none,
        child: Column(
          children: <Widget>[
            CarouselWidget(),
            AccountsWidget(),
            AccountsWidget(),
          ],
        ),
      ),
    );
  }
}

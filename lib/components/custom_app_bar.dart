import 'package:bank_app/components/account_widget.dart';
import 'package:bank_app/components/carousel_widget.dart';
import 'package:flutter/material.dart';

class CustomScrollAppBar extends StatelessWidget {
  const CustomScrollAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        // Add the app bar to the CustomScrollView.
        SliverAppBar(
          // Provide a standard title.
          title: const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Merhaba Müşteri Adı",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // Allows the user to reveal the app bar if they begin scrolling
          // back up the list of items.
          floating: true,
          // Display a placeholder widget to visualize the shrinking size.
          flexibleSpace: Container(
            color: Colors.purple,
          ),
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 40,
        ),
        // Next, create a SliverList
        SliverList(
          // Use a delegate to build items as they're scrolled on screen.
          delegate: SliverChildBuilderDelegate(
            // The builder function returns a ListTile with a title that
            // displays the index of the current item.
            (context, index) => const Column(
              children: [
                CarouselWidget(),
                AccountsWidget(),
              ],
            ),
            // Builds 1000 ListTiles
            childCount: 1,
          ),
        ),
      ],
    );
  }
}

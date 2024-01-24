import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class MoneyTransferWidget extends StatelessWidget {
  const MoneyTransferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text("TRANSFERLER"),
                  GestureDetector(
                    child: const Text(
                      "TÜMÜ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.purple,
                        color: Colors.purple,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(10.0),
                child: const SizedBox(
                  height: 60.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        CupertinoIcons.arrow_right_arrow_left,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Text(
                        "Hesaplarım Arasında",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(10.0),
                child: const SizedBox(
                  height: 60.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        FontAwesomeIcons.peopleArrows,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Para Gönder (Havale/EFT)",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(10.0),
                child: const SizedBox(
                  height: 60.0,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        CupertinoIcons.globe,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "SWIFT / WU",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class PaymentOptionsWidget extends StatelessWidget {
  const PaymentOptionsWidget({super.key});

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
                  const Text("ÖDEMELER"),
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
                        CupertinoIcons.creditcard,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Kredi Kartı Ödeme",
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
                        FontAwesomeIcons.buildingColumns,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Fatura ve Kurum Ödeme",
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
                        Icons.timer_outlined,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Kredi Ödeme",
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

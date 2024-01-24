import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class MoneyTransactionsWidget extends StatelessWidget {
  const MoneyTransactionsWidget({super.key});

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
                  const Text("PARA YÜKLEME İŞLEMLERİ"),
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
                        FontAwesomeIcons.dice,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Şans Oyunları",
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
                        FontAwesomeIcons.mobileScreenButton,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "GSM TL/Paket Yükle",
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
                        CupertinoIcons.bitcoin_circle,
                        size: 30.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "Kripto Platform İşlemleri",
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

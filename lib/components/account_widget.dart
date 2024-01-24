import 'package:flutter/material.dart';

import 'dummy_widgets.dart';

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              right: 5.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("HESAPLAR VE KARTLAR"),
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
          const AccountBox(),
          const CreditCardBox(),
        ],
      ),
    );
  }
}

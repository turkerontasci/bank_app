import 'package:bank_app/components/money_transactions.dart';
import 'package:bank_app/components/payment_options_widget.dart';
import 'package:flutter/material.dart';

import '../components/money_transfer_widget.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          "Transfer ve ödemeler",
          style: TextStyle(
            letterSpacing: 1.2,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            MoneyTransferWidget(),
            PaymentOptionsWidget(),
            MoneyTransactionsWidget(),
          ],
        ),
      ),
    );
  }
}

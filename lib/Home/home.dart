import 'package:flutter/material.dart';

import 'widget/balanceCard.dart';
import 'widget/transactionList.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyan),
                  child: Column(
                    children: [Icon(Icons.person), Text("Jayanta Mahato")],
                  )),
              const ListTile(
                title: Text("data"),
              )
            ],
          )),
      appBar: AppBar(
        title: Text("Soft Wallet"),
      ),
      body: Container(
        alignment: Alignment.center,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 20), BalanceCard(), TransactionList()],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[50],
                  border: Border.all(color: Colors.green, width: 2)),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_downward_rounded,
                    color: Colors.green,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(" Income"),
                ],
              ),
            ),
            Container(
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red[50],
                  border: Border.all(color: Colors.red, width: 2)),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_upward_rounded,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(" Expenses"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

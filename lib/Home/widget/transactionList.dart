import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Type",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Date",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Amount",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: 350,
            color: Colors.cyan[50],
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.cyan),
                      color: Colors.white),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

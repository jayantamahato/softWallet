import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.wallet_rounded,
              size: 120,
            ),
            Text(
              "Soft Wallet",
              style: GoogleFonts.firaSans(color: Colors.cyan, fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}

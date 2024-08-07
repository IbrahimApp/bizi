import 'package:flutter/material.dart';
import 'package:bizi/components/common/text_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          SizedBox(height: 10),
          // Categories(),
          // SizedBox(height: 10),
          TextCard(),
          //SizedBox(height: 10),
          // ProductsTab(),
        ],
      ),
    );
  }
}

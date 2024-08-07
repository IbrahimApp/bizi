import 'package:bizi/components/constants/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColor.appGreen,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Créer un compte",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryDark,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Créez un compte et réservez, en moins de 2 minutes, l'un de nos magnifiques appartements.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: AppColor.primaryDark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

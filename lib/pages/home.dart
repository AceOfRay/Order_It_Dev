import 'package:flutter/material.dart';
import 'package:order_it_dev/components/homePageSections.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetCookingSection(),
        PastRecipesSection(),
      ],
    );
  }
}
   
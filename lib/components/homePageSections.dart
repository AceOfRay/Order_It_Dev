import 'package:flutter/material.dart';
import 'package:order_it_dev/components/forwardingWidget.dart';
import 'package:order_it_dev/components/recipeWidget.dart';
import 'package:order_it_dev/components/sectionTitle.dart';
import 'package:order_it_dev/pages/devPage.dart';

class GetCookingSection extends StatelessWidget {
  const GetCookingSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SectionTitle(title: "Get Cooking", padding: 8.0),
            Row(
              children: [
                
                ForwardingWidget(
                  text: "Recipe",
                  destination:
                      DevPage(text: "From Home page to Create recipe page"),
                ),
                ForwardingWidget(
                    text: "Kitchen",
                    destination:
                        DevPage(text: "From Home Page to Create Kitchen page")),
                ForwardingWidget(
                    text: "Session",
                    destination: DevPage(
                        text: "From Home Page to Start a Cook Session Page"))
              ],
            ),
          ],
        ));
  }
}

class PastRecipesSection extends StatelessWidget {
  const PastRecipesSection({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SectionTitle(title: "Past Recipes", padding: 8.0),
      RecipeWidget(recipeName: "Mac & Cheese", recipeChef: "Ray"),
      RecipeWidget(recipeName: "Microwaved Bagel", recipeChef: "Eliska"),
      RecipeWidget(recipeName: "Hot Dog", recipeChef: "Bee"),
    ]);
  }
}

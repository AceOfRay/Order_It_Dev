import 'package:flutter/material.dart';

class RecipeWidget extends StatelessWidget {
  final String recipeName;
  final String recipeChef;
  const RecipeWidget(
      {super.key, required this.recipeName, required this.recipeChef});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 120,
        width: 392,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                recipeName,
                style: const TextStyle(fontSize: 20),
              ),
              Text(recipeChef, style: const TextStyle(fontSize: 15)),
            ],
          ),
          )
        ),
      ),
    );
  }
}

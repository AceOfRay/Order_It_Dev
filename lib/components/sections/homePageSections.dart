import 'package:flutter/material.dart';
import 'package:order_it_dev/components/forwardingWidget.dart';
import 'package:order_it_dev/pages/devPage.dart';

class GetCookingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ForwardingWidget(
              text: "Recipe",
              destination:
                  DevPage(text: "From Home page to Create recipe page"),
            ),
            ForwardingWidget(
                text: "Kitchen",
                destination:
                    DevPage(text: "From Home Pge to Create Kitchen page")),
            ForwardingWidget(
                text: "Start a Cook Session",
                destination: DevPage(
                    text: "From Home Page to Start a Cook Session Page"))
          ],
        ));
  }
}

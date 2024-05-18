import '../../../../core/widgets/text_widget.dart';
import '../widgets/clicks_widget.dart';
import 'package:flutter/material.dart';

class ClickViewsListScreen extends StatelessWidget {
  const ClickViewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(width: 0.5)),
          title: const TextWidget(
            text: "Clicks/Views",
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: List.generate(
                4,
                (index) => GestureDetector(
                      onTap: () {
                        // Navigator.pushNamed(context,
                        //     Routes.rejectedCompletedServiceDetailsScreen);
                      },
                      child: const ClicksItemWidget(
                        date: "5 Nov, 2023 ",
                        title: "Omega Stores",
                        image: "assets/images/service_img.png",
                        subtitle: "5 Clicks/ 10 Views",
                      ),
                    )),
          ),
        ));
  }
}

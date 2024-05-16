import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/rejected_sold_widget_item.dart';
import 'package:flutter/material.dart';

class RejectedSoldListScreen extends StatelessWidget {
  const RejectedSoldListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const Border(bottom: BorderSide(width: 0.5)),
          title: const TextWidget(
            text: "Rejected/Sold",
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
                      child: const RejectedSoldWidgetItem(
                        trailing: "sold ",
                        title: "Omega Stores",
                        image: "assets/images/service_img.png",
                        subtitle: "5 Nov, 2023 ",
                      ),
                    )),
          ),
        ));
  }
}

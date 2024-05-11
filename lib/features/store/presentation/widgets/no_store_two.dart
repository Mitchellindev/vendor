import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/orange_data_row_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/profile_details_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/store_details_widget.dart';
import 'package:flutter/material.dart';

class NoStoreWidgetTwo extends StatefulWidget {
  const NoStoreWidgetTwo({super.key, required this.ontTap});
  final VoidCallback ontTap;
  @override
  State<NoStoreWidgetTwo> createState() => _NoStoreWidgetTwoState();
}

class _NoStoreWidgetTwoState extends State<NoStoreWidgetTwo> {
  List<Map<String, dynamic>> data = [
    {
      "label": "Total Earnings",
      "amount": "12.00",
    },
    {
      "label": "Total Sales",
      "amount": "12.00",
    },
    {
      "label": "Wallet Balance",
      "amount": "12.00",
    },
    {
      "label": "This Week Sales",
      "amount": "12.00",
    },
    {
      "label": "Payout",
      "amount": "12.00",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/profile_pic.png",
                width: 60,
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: "Hello,",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  TextWidget(text: "Sanni Kayinsola", fontSize: 16)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(
                data.length,
                (index) => ProfileDetails(
                      label: data[index]["label"],
                      amount: data[index]["amount"],
                    )),
          ),
          const SizedBox(
            height: 20,
          ),
          PrimaryButton(
              label: "Create Your Store/Service",
              onPressed: widget.ontTap,
              isEnabled: true),
          const SizedBox(
            height: 20,
          ),
          const StoreDetailsWidget(
            header: "Store",
            dataRows: [
              OrangeDataRow(label: "Total store:", value: "1"),
              OrangeDataRow(label: "Free store left:", value: "1")
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const StoreDetailsWidget(
            header: "Service",
            dataRows: [
              OrangeDataRow(label: "Total service:", value: "0"),
              OrangeDataRow(label: "Free service left:", value: "2")
            ],
          ),
        ],
      ),
    );
  }
}

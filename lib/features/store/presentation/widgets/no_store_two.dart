import 'package:broadcaadvendor/app/widgets/primary_button.dart';
import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/orange_data_row_widget.dart';
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
            height: 15,
          ),
          Row(
            children: [
              const TextWidget(
                text: "Overview",
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.visibility_outlined))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsGridBlock(
                label: "Wallet Balance",
                value: "2000.00",
                margin: EdgeInsets.only(right: 10),
              ),
              DetailsGridBlock(
                margin: EdgeInsets.only(left: 10),
                label: "Total Earnings",
                value: "2000.00",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsGridBlock(
                label: "Total Sales",
                value: "2000.00",
                margin: EdgeInsets.only(right: 10),
              ),
              DetailsGridBlock(
                margin: EdgeInsets.only(left: 10),
                label: "Weekly sales",
                value: "2000.00",
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DetailsGridBlock(
                flex: 1,
                label: "Payout",
                value: "2000.00",
                margin: EdgeInsets.only(right: 10),
              ),
              Expanded(child: SizedBox())
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.myStores);
            },
            child: const StoreDetailsWidget(
              header: "Store",
              dataRows: [
                OrangeDataRow(label: "Total store:", value: "1"),
                OrangeDataRow(label: "Free store left:", value: "1")
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.myServices);
            },
            child: const StoreDetailsWidget(
              header: "Service",
              dataRows: [
                OrangeDataRow(label: "Total service:", value: "0"),
                OrangeDataRow(label: "Free service left:", value: "2")
              ],
            ),
          ),
          PrimaryButton(
              label: "Create Your Store/Service",
              onPressed: widget.ontTap,
              isEnabled: true),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class DetailsGridBlock extends StatelessWidget {
  const DetailsGridBlock({
    super.key,
    required this.margin,
    required this.label,
    required this.value,
    this.flex = 1,
  });
  final EdgeInsetsGeometry margin;
  final String label;
  final String value;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: margin,
        height: 120,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ).copyWith(left: 20),
        width: 134,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              text: label,
              color: Theme.of(context).colorScheme.secondary,
            ),
            TextWidget(
              text: "$value NGN",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            )
          ],
        ),
      ),
    );
  }
}

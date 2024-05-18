import '../../../../core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class BookedServiceItem extends StatelessWidget {
  const BookedServiceItem(
      {super.key,
      required this.image,
      required this.name,
      required this.location,
      required this.status,
      required this.details,
      required this.onTap});
  final String image;
  final String name;
  final String location;
  final String details;
  final String status;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(15, 3, 14, 79),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 60,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  color: Theme.of(context).colorScheme.primary,
                  text: name,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                TextWidget(
                  text: location,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
                TextWidget(
                  text: details,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
            TextWidget(
              text: status,
              color: status == "Pending"
                  ? const Color(0xffF03D3E)
                  : Theme.of(context).colorScheme.primary,
            )
          ],
        ),
      ),
    );
  }
}

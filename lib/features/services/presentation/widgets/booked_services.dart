import 'booked_service_item.dart';
import 'package:flutter/material.dart';

class BookedServices extends StatelessWidget {
  const BookedServices({
    super.key,
    required this.bookedServices,
  });
  final List<Map<String, dynamic>> bookedServices;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: List.generate(
            bookedServices.length,
            (index) => BookedServiceItem(
                onTap: bookedServices[index]["onTap"]!,
                image: bookedServices[index]["image"]!,
                name: bookedServices[index]["name"]!,
                location: bookedServices[index]["location"]!,
                status: bookedServices[index]["status"]!,
                details: bookedServices[index]["details"]!)),
      ),
    );
  }
}

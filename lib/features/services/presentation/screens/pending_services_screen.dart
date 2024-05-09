import 'package:broadcaadvendor/config/router/routes.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/booked_services.dart';
import 'package:broadcaadvendor/features/services/presentation/widgets/no_booked_service.dart';
import 'package:flutter/material.dart';

class PendingServicesScreen extends StatefulWidget {
  const PendingServicesScreen({super.key});

  @override
  State<PendingServicesScreen> createState() => _PendingServicesScreenState();
}

class _PendingServicesScreenState extends State<PendingServicesScreen> {
  PageController controller = PageController(viewportFraction: .9);
  int value = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> bookedServices = [
      {
        "image": "assets/images/profile_pic.png",
        "onTap": () {
          Navigator.pushNamed(context, Routes.pendingServicesDetials);
        },
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Pending"
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Pending",
        "onTap": () {},
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Pending",
        "onTap": () {},
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Pending",
        "onTap": () {},
      }
    ];
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Pending Service ",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: bookedServices.isEmpty
          ? const NoBookedService()
          : BookedServices(bookedServices: bookedServices),
    );
  }
}

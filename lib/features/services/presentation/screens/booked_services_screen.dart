import '../../../../config/router/routes.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/booked_services.dart';
import '../widgets/no_booked_service.dart';
import 'package:flutter/material.dart';

class BookedServicesScreen extends StatefulWidget {
  const BookedServicesScreen({super.key});

  @override
  State<BookedServicesScreen> createState() => _BookedServicesScreenState();
}

class _BookedServicesScreenState extends State<BookedServicesScreen> {
  PageController controller = PageController(viewportFraction: .9);
  int value = 0;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> bookedServices = [
      {
        "image": "assets/images/profile_pic.png",
        "onTap": () {
          Navigator.pushNamed(context, Routes.bookedServicesDetails);
        },
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Completed"
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Completed",
        "onTap": () {},
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Completed",
        "onTap": () {},
      },
      {
        "image": "assets/images/profile_pic.png",
        "name": "Sanni Kayinsola",
        "location": "Ikoyi, Lagos state",
        "details": "Wed 1 Nov 2023 9am- 10am",
        "status": "Completed",
        "onTap": () {},
      }
    ];
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Booked Service ",
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

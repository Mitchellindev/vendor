import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EditPhotosPopUp extends StatefulWidget {
  const EditPhotosPopUp({
    super.key,
    required this.isCancelled,
  });
  final VoidCallback isCancelled;
  @override
  State<EditPhotosPopUp> createState() => _TimePopupWidgetState();
}

class _TimePopupWidgetState extends State<EditPhotosPopUp> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(0),
      backgroundColor: Colors.white,
      content: Container(
        height: 150,
        width: 390,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Change Cover Photo",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(
              height: 30,
            ),
            TextWidget(
              onTap: () {
                Navigator.pop(context);
              },
              text: "Change Cover Photo",
              fontSize: 21,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}

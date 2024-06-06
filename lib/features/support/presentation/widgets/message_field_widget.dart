import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:flutter/material.dart';

class MessageField extends StatelessWidget {
  const MessageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          child: Image.asset(
            "assets/images/camera.png",
            width: 24,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: Image.asset(
            "assets/images/gallery.png",
            width: 21,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Transform.translate(
            offset: const Offset(0, -10),
            child: InputFieldWidget(
                labelPadding: const EdgeInsets.all(0),
                enabledBorderRadius: 10,
                hintColor: Theme.of(context).primaryColor,
                hintText: "Type your concern",
                onChanged: (val) {}),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          mini: true,
          onPressed: () {},
          child: Image.asset(
            "assets/images/send.png",
            width: 20,
          ),
        )
      ],
    );
  }
}

import 'package:broadcaadvendor/core/utils/app_constraints.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: TextWidget(
          text: "Delete Account",
          fontSize: 21.width,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextWidget(
                text:
                    'Are you sure you want to delete your account? Once you confirm, your data would be gone.',
                fontWeight: FontWeight.w500,
                fontSize: 21.width,
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Radio<int>(
                        value: 1,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: TextWidget(
                      text: 'I don’t get paid',
                      fontSize: 18.width,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Radio<int>(
                        value: 2,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: TextWidget(
                      text: 'I am not interested anymore',
                      fontSize: 18.width,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Radio<int>(
                        value: 3,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: TextWidget(
                      text: 'I get bored',
                      fontSize: 18.width,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: Transform.scale(
                      scale: 1.2,
                      child: Radio<int>(
                        value: 4,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-10, 0),
                    child: TextWidget(
                      text: 'Other reasons',
                      fontSize: 18.width,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: "Delete Account",
                        color: Colors.red,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

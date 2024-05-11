import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({
    super.key,
    required this.label,
    required this.amount,
  });
  final String label;
  final String amount;

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: widget.label),
          Transform.translate(
            offset: const Offset(0, -5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: isHidden ? "*****" : "NGN: ${widget.amount}",
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    Switch(
                        trackOutlineColor: isHidden
                            ? MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.primary)
                            : MaterialStatePropertyAll(
                                Theme.of(context).colorScheme.tertiary),
                        inactiveThumbColor:
                            Theme.of(context).colorScheme.tertiary,
                        activeTrackColor: Theme.of(context).colorScheme.primary,
                        value: isHidden,
                        onChanged: (val) {
                          setState(() {
                            isHidden = val;
                          });
                        }),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 70,
                      child: TextWidget(
                        textAlign: TextAlign.center,
                        text: isHidden ? "Show" : "Hide",
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

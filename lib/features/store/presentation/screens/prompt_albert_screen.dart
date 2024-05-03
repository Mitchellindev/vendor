import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
import 'package:broadcaadvendor/features/store/presentation/widgets/fab_icon_button.dart';
import 'package:flutter/material.dart';

class PromptAlbertScreen extends StatefulWidget {
  const PromptAlbertScreen({super.key, required this.isMicrophoneEnabled});
  final bool isMicrophoneEnabled;

  @override
  State<PromptAlbertScreen> createState() => _PromptAlbertScreenState();
}

class _PromptAlbertScreenState extends State<PromptAlbertScreen> {
  late GlobalKey<FormFieldState> vendorNameKey;
  @override
  void initState() {
    vendorNameKey = GlobalKey<FormFieldState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Ask Albert",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!widget.isMicrophoneEnabled)
              InputFieldWidget(
                  hintColor: colorScheme.primary,
                  validator: (p0) {
                    return null;
                  },
                  enabledBorderRadius: 5,
                  hintSize: 18,
                  hintText: "Ask Albert to create your store...........",
                  onChanged: (val) {},
                  textFieldkey: vendorNameKey),
          ],
        ),
      ),
      floatingActionButton: widget.isMicrophoneEnabled
          ? FabIconButton(
              borderRadius: 20,
              icon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/images/mic.png",
                ),
              ))
          : null,
    );
  }
}

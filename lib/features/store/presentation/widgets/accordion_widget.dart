import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AccordionWidget extends StatefulWidget {
  const AccordionWidget({
    super.key,
    required this.colorScheme,
    required this.widgetList,
    required this.label,
  });

  final ColorScheme colorScheme;
  final List<Widget> widgetList;
  final String label;
  @override
  State<AccordionWidget> createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: 1.055,
      child: Accordion(
        paddingListTop: 20,
        paddingListBottom: 0,
        headerBorderColor: widget.colorScheme.primary,
        headerBorderColorOpened: widget.colorScheme.primary,
        headerBorderWidth: 0.5,
        headerBorderRadius: 5,
        rightIcon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.black,
        ),
        headerBackgroundColorOpened: const Color.fromARGB(255, 255, 255, 255),
        contentBackgroundColor: Colors.white,
        contentBorderWidth: 0,
        contentHorizontalPadding: 20,
        headerBackgroundColor: Colors.white,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        headerPadding: const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: [
          AccordionSection(
            isOpen: false,
            header: TextWidget(
              text: widget.label,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: widget.colorScheme.primary,
            ),
            contentHorizontalPadding: 0,
            paddingBetweenClosedSections: 0,
            paddingBetweenOpenSections: 0,
            content: SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                child: ListView(children: widget.widgetList)),
          ),
        ],
      ),
    );
  }
}

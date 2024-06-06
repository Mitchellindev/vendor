import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/support/presentation/widgets/message_field_widget.dart';
import 'package:broadcaadvendor/features/support/presentation/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({super.key});

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  List<Map<String, dynamic>> messages = [
    {
      "sender": "Vendor",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {
      "sender": "me",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {
      "sender": "Vendor",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {"sender": "me", "time": "00:27 AM", "message": "Hello Sanni, today?"},
    {
      "sender": "me",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {
      "sender": "Vendor",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {
      "sender": "me",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    },
    {
      "sender": "Vendor",
      "time": "00:27 AM",
      "message": "Hello Sanni, how can i help you today?"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(width: 0.5)),
        title: const TextWidget(
          text: "Vendor Service",
          fontSize: 21,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) => MessageWidget(
                        message: messages[index]["message"],
                        image: messages[index]["message"],
                        time: messages[index]["message"],
                        isMe: messages[index]["sender"] == "me"))),
            const MessageField()
          ],
        ),
      ),
    );
  }
}

import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:broadcaadvendor/features/auth/presentation/widgets/input_field_widget.dart';
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

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    super.key,
    required this.image,
    required this.message,
    required this.time,
    required this.isMe,
  });
  final String image;
  final String message;
  final String time;
  final bool isMe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: isMe ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Image.asset(
            isMe
                ? "assets/images/profile_pic.png"
                : "assets/images/chatbot.png",
            width: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 270,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isMe
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).primaryColor),
                  padding: const EdgeInsets.all(20),
                  child: TextWidget(
                    color: isMe
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                    text: "Hello Sanni, how can i help you today?s",
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 270,
                child: Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: const [
                    TextWidget(text: "00:27 AM"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

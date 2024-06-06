import 'package:broadcaadvendor/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

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

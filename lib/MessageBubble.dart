import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';
class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe; // لو true يبقى رسالة رايحة، لو false يبقى جاية

  const MessageBubble({super.key, required this.text, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      // 1. المحاذاة (شمال أو يمين)
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        // 2. المسافات والحدود
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        constraints: const BoxConstraints(maxWidth: 280), // عشان الرسالة متاخدش الشاشة كلها

        // 3. الشكل واللون والزوايا
        decoration: BoxDecoration(
          color: isMe ? const Color(0xff232D36) : const Color(0xff168C4B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isMe ? 16 : 0), // لو جاية يبقى فوق شمال مربع
            topRight: Radius.circular(isMe ? 0 : 16), // لو رايحة يبقى فوق يمين مربع
            bottomLeft: const Radius.circular(16),
            bottomRight: const Radius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'screenchat.dart';
import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';
class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: const Color(0xff181818),
      child: Row(
        children: [
          // 1. حقل الكتابة
          Expanded(
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Type a message...",
                hintStyle: const TextStyle(color: Colors.white54, fontSize: 12),

                // أيقونة الكاميرا
                prefixIcon: const Icon(Icons.camera_alt, color: Colors.white54),

                // أيقونة الإرسال
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send, color: Color(0xff168C4B)),
                  onPressed: () {},
                ),

                contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                filled: true,
                fillColor: const Color(0xff232D36),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xff168C4B), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xff168C4B), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xff168C4B), width: 1),
                ),
              ),
            ),
          ),

          const SizedBox(width: 8),

          // 2. زرار المايك
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff168C4B),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(14),
            ),
            child: const Icon(Icons.mic, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
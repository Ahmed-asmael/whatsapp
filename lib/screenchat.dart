import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'MessageBubble.dart';
import 'bottomNavigationBar.dart';
class ScreenChat extends StatelessWidget {
  const ScreenChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff168C4B),
        toolbarHeight:70,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.white),
        ),
        leadingWidth: 40,

        title: Row( mainAxisSize: MainAxisSize.min,
          children: [
             CircleAvatar(
               radius: 22,
                 backgroundColor: Colors.white,
                 backgroundImage: AssetImage('assets/imeges/Rectangle 2.png')

             ) ,
            SizedBox(width: 8,)
            ,Text("Ahmed ",style: TextStyle(fontSize: 22,fontWeight: .bold),)


          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.call ,color: Colors.white,) )
          ,IconButton(onPressed: (){}, icon:Icon(Icons.videocam ,color: Colors.white,) )
          ,IconButton(onPressed: (){}, icon:Icon(Icons.more_vert ,color: Colors.white,) )

        ],

      ),

      // ... (جوه الـ build بتاع ScreenChat)
      body: Stack(
        children: [
          // 1. صورة الخلفية (تحت كل حاجة)
          Positioned.fill(
            child: Image.asset(
              "assets/imeges/back ground screen.png",
              fit: BoxFit.cover,
            ),
          ),

          // 2. قائمة الرسايل (فوق الصورة)
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: ListView(
                // عشان الشات يبدأ من تحت (اختياري، بس بيدي إحساس حلو)
                reverse: false,
                children: const [
                  MessageBubble(
                    text: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories?",
                    isMe: false,
                  ),
                  MessageBubble(
                    text: "It’s like the universe loves to surprise us when we least expect it!",
                    isMe: true,
                  ),
                  MessageBubble(text: "Absolutely! I totally agree with you.", isMe: false),
                  MessageBubble(text: "What are you doing right now?", isMe: true),
                  MessageBubble(text: "Just chilling, listening to some music.", isMe: false),
                  MessageBubble(text: "Nice! What are you listening to?", isMe: true),
                  MessageBubble(text: "Some Lo-Fi beats, it helps me focus.", isMe: false),
                  MessageBubble(text: "Send me the playlist link later!", isMe: true),
                  MessageBubble(text: "Sure thing! I'll send it in a bit.", isMe: false),
                  MessageBubble(text: "Thanks! You're the best.", isMe: true),
                  MessageBubble(text: "Haha, no problem at all.", isMe: false),
                  MessageBubble(text: "Talk to you later then!", isMe: true),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ChatInputBar(),
    );
  }
}

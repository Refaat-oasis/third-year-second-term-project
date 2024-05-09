import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'chats_detiels_screen.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waslla'),
      ),
      body: ConditionalBuilder(
        condition: true, // Replace with condition to check if chats exist
        builder: (context) => ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildChatItem(context),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 5, // Replace with actual number of chats
        ),
        fallback: (context) => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget buildChatItem(BuildContext context) => ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatsDetailsScreen(),
            ),
          );
        },
        leading: const CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(
              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg'), // Replace with your image URL
        ),
        title: const Text(
          'Afnan',
          style: TextStyle(
            height: 1.4,
          ),
        ),
        subtitle: const Text(
          'Last message preview', // Replace with actual message preview
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        trailing: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '12:34 PM', // Replace with actual message time
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5.0),
            // Add unread message count indicator here
          ],
        ),
      );
}

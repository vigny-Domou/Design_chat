import 'package:chat_design/section/FavoriteSection.dart';
import 'package:chat_design/section/MenuSection.dart';
import 'package:chat_design/main.dart';
import 'package:chat_design/section/MessageSection.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: dWhite,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: dWhite,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
         MenuSection(),
           FavoriteSection(),
          Expanded(
           child: Messagesection()
             ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}

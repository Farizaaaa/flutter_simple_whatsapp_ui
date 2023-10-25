
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/WhatsappCalls.dart';
import 'package:whatsapp_ui_clone/screens/WhatsappChats.dart';
import 'package:whatsapp_ui_clone/screens/WhatsappStatus.dart';
import 'package:whatsapp_ui_clone/screens/constants.dart';


class WhatsappUi extends StatelessWidget {
  const WhatsappUi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            automaticallyImplyLeading: false,
            elevation: 0,
            title: const Text(
              "WhatsApp",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
              SizedBox(
                width: 4,
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            // SizedBox(
            //   width: 4,
            // ),
            bottom: const TabBar(
              indicatorColor: tabIndicatorColor,
              indicatorWeight: 4,
              labelColor: tabIndicatorColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                )
              ],
            ),
          ),
          body: const TabBarView(
            children: [WhatsappChat(), WhatsappStatus(), WhatsappCalls()],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.message),
            backgroundColor: tabIndicatorColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            onPressed: () {},
          ),
        ));
  }
}

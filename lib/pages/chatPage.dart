import 'package:flutter/material.dart';
import 'package:perplex_clone/widgets/side_bar.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  /*
  StreamBuilder(
                  stream: ChatWebService().contentStream,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    fullRespose += snapshot.data?['data'] ?? '';
                    return Text(fullRespose);
                  },
                ),*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
        ],
      ),
    );
  }
}

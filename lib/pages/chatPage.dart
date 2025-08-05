import 'package:flutter/material.dart';
import 'package:perplex_clone/widgets/asnwer_section.dart';
import 'package:perplex_clone/widgets/side_bar.dart';
import 'package:perplex_clone/widgets/sources_section.dart';

class Chatpage extends StatelessWidget {
  final String question;
  const Chatpage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBar(),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 24,
                ),
                // sources
                SourcesSection(),
                SizedBox(
                  height: 24,
                ),
                // answer collection
                AsnwerSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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

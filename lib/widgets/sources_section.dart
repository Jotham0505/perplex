import 'package:flutter/material.dart';
import 'package:perplex_clone/services/chat_web_service.dart';
import 'package:perplex_clone/theme/colors.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  List<Map<String, dynamic>> searchResults = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().searchResultStream.listen((data) {
      setState(() {
        searchResults.add(data['data']);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.source_outlined,
              color: AppColors.whiteColor,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Sources",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            ...searchResults.map((res) {
              return Container(
                width: 175,
                height: 115,
                decoration: BoxDecoration(
                  color: AppColors.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        res['title'],
                        style: TextStyle(fontWeight: FontWeight.w500),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        res['url'],
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplex_clone/services/chat_web_service.dart';
import 'package:perplex_clone/theme/colors.dart';

class AsnwerSection extends StatefulWidget {
  const AsnwerSection({super.key});

  @override
  State<AsnwerSection> createState() => _AsnwerSectionState();
}

class _AsnwerSectionState extends State<AsnwerSection> {
  String fullResponse = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().contentStream.listen((data) {
      setState(() {
        fullResponse += data['data'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Perplexity",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Markdown(
          data: fullResponse,
          shrinkWrap: true,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            codeblockDecoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            code: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplex_clone/services/chat_web_service.dart';
import 'package:perplex_clone/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AsnwerSection extends StatefulWidget {
  const AsnwerSection({super.key});

  @override
  State<AsnwerSection> createState() => _AsnwerSectionState();
}

class _AsnwerSectionState extends State<AsnwerSection> {
  bool isLoading = true;
  String fullResponse = '''
The purple fox danced across the sky while humming an ancient melody only the stars could understand. 
Beneath the glittering trees, marbles rolled uphill and whispers filled the air with stories of forgotten moons and peanut butter robots. 
Everyone agreed that Tuesdays smelled like cinnamon when reality took a lunch break.

The purple fox danced across the sky while humming an ancient melody only the stars could understand. 
Beneath the glittering trees, marbles rolled uphill and whispers filled the air with stories of forgotten moons and peanut butter robots. 
Everyone agreed that Tuesdays smelled like cinnamon when reality took a lunch break.

The purple fox danced across the sky while humming an ancient melody only the stars could understand. 
Beneath the glittering trees, marbles rolled uphill and whispers filled the air with stories of forgotten moons and peanut butter robots. 
Everyone agreed that Tuesdays smelled like cinnamon when reality took a lunch break.
''';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChatWebService().contentStream.listen((data) {
      if (isLoading) {
        fullResponse = "";
      }
      setState(() {
        fullResponse += data['data'];
        isLoading = false;
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
        Skeletonizer(
          enabled: isLoading,
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet:
                MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              code: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

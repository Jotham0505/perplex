import 'package:flutter/material.dart';

class AsnwerSection extends StatelessWidget {
  const AsnwerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Perplexity",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

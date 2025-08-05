import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:perplex_clone/theme/colors.dart';

class AsnwerSection extends StatefulWidget {
  const AsnwerSection({super.key});

  @override
  State<AsnwerSection> createState() => _AsnwerSectionState();
}

class _AsnwerSectionState extends State<AsnwerSection> {
  String fullResponse = """
  Here are detailed highlights and key moments from the ICC Champions Trophy 2025 1st Semi-Final between India and Australia:

**Match Overview**
- **Venue:** Dubai International Stadium, Dubai
- **Date:** March 4, 2025
- **Result:** India beat Australia by 4 wickets, chasing down 265 in 48.1 overs (267/6)[1][2][3].

### Australia Innings
- **Total:** 264 all out in 49.3 overs
- **Top Scorers:**
  - Steve Smith: 73 off 96 balls
  - Josh Inglis: 61 off 57 balls
  - Travis Head: 39 off 33 balls
- **Notable Bowling (India):**
  - Mohammed Shami: 3/48 (10 overs)
  - Varun Chakravarthy: 2/40 (8 overs)
  - Ravindra Jadeja: 2/44 (10 overs)
- **Fall of wickets:** 1-4 (Connolly), 2-54 (Head), 3-110 (Labuschagne), 4-144 (Inglis), 5-198 (Smith), 6-205 (Maxwell), 7-239 (Dwarshuis), 8-249 (Carey), 9-262 (Ellis), 10-264 (Zampa)[2][1].

### India Innings
- **Total:** 267/6 in 48.1 overs
- **Top Scorers:**
  - Virat Kohli: 84 off 98 balls
  - Shreyas Iyer: 45 off 62 balls
  - KL Rahul: 42* off 34 balls
  - Hardik Pandya: 28 off 29 balls
- **Bowling Highlights (Australia):**
  - Adam Zampa: 2 wickets
- **Key Partnerships:**
  - Kohli and Iyer stabilized the chase with a 91-run partnership.
  - KL Rahul and the lower order ensured a calm finish[1][4][3].

### Defining Moments & Stats
- Australia won the toss and batted first.
- Indias bowlers kept the run rate in check and took wickets at crucial intervals, with Shami leading the attack.
- Virat Kohli anchored the chase with his composed 84, earning Player of the Match.
- India maintained a steady required run rate, mixing caution with aggression—never letting the chase slip out of control.
- With this win, India advanced to the Champions Trophy final. Rohit Sharma became the first captain to reach the final of every ICC tournament as a skipper[4].

### Noteworthy Records & Achievements
- **Virat Kohli** became the second-highest catcher in ODI history as a fielder.
- **India's spinners** were pivotal throughout the tournament, and contributed notably in this match.
- India now holds a 3-0 record against Australia in Champions Trophy knockout matches[4][5].

**Summary:**  
India successfully chased Australias 264, with key performances from Virat Kohli, Shreyas Iyer, and the Indian pace-spin combination. This win demonstrated India’s experience and composure in high-pressure games, securing another ICC final appearance for skipper Rohit Sharma[1][4][2][3].

[1] https://indianexpress.com/section/sports/cricket/live-score/india-vs-australia-1st-semi-final-odi-live-score-full-scorecard-highlights-icc-champions-trophy-2025-inau03042025255195/
[2] https://www.espncricinfo.com/series/icc-champions-trophy-2024-25-1459031/australia-vs-india-1st-semi-final-1466426/full-scorecard
[3] https://www.cricbuzz.com/live-cricket-scores/112462/ind-vs-aus-1st-semi-final-a1-v-b2-icc-champions-trophy-2025
[4] https://www.jagranjosh.com/general-knowledge/india-vs-australia-stats-and-records-broken-and-created-1741099962-1
[5] https://sports.ndtv.com/icc-champions-trophy-2025/india-vs-australia-ct-2025-semi-final-key-insights-strengths-and-weaknesses-7842441
[6] https://www.icc-cricket.com/tournaments/champions-trophy-2025/matches/255195/india-vs-australia
[7] https://www.espn.com/cricket/series/8081/scorecard/1466426/australia-vs-india-1st-semi-final-icc-champions-trophy-2024-25
[8] https://www.firstpost.com/firstcricket/india-vs-australia-semi-final-biggest-turning-points-champions-trophy-2025-13868781.html
[9] https://www.aljazeera.com/sports/liveblog/2025/3/4/live-india-vs-australia-icc-champions-trophy-2025-first-semifinal
[10] https://timesofindia.indiatimes.com/sports/cricket/icc-champions-trophy-2025/india-vs-australia-semi-final-champions-trophy-2025-dubai-weather-and-pitch-update/articleshow/118682700.cms
  """;
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

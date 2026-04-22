import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:godparticle2/theme/colors.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse = """
Based on my research across multiple sources, there is no **India vs Australia** cricket match currently live or ongoing as of **April 22, 2026**. Recent searches highlight past encounters from late **2025**, primarily part of Australia's **3-match ODI series** win over India (2-1) and other limited-overs games, but nothing active today. [sports.ndtv](https://sports.ndtv.com/cricket/ind-vs-aus-scorecard-live-cricket-score-australia-in-india-3-odi-series-2020-2nd-odi-inau01172020190941)

1. **Overview**  
   The most recent notable **IND vs AUS** results include:  
   - **1st ODI** (October 2025, Perth/Brisbane area): Australia took a 1-0 lead. [espncricinfo](https://www.espncricinfo.com/series/india-in-australia-2025-26-1478882/australia-vs-india-1st-odi-1478904/ball-by-ball-commentary)
   - **2nd ODI** (Adelaide, ~October 22, 2025): Australia won the toss, bowled first; India struggled early with dismissals of **Shubman Gill**, **Virat Kohli** (duck), and others. Full result not detailed in snippets, but series context points to Australia's dominance. [youtube](https://www.youtube.com/watch?v=Cv4DOgLrttY)
   - **3rd ODI** (Sydney, ~October 24, 2025): Australia sealed the series 2-0 (or 3-0 whitewash avoided narrowly); India posted **237/1** (Rohit Sharma 121, Virat Kohli 74) chasing Australia's **236** in one report, though outcomes varied by source. [indianexpress](https://indianexpress.com/section/sports/cricket/live-score/australia-vs-india-3rd-odi-live-score-full-scorecard-highlights-india-in-australia-3-odi-series-2025-auin10252025258925/)
   Earlier T20Is (e.g., 5th T20I, November 2025, Brisbane) were abandoned due to rain, with India winning the series 2-1. Older matches like the **2020 2nd ODI** (India won by 36 runs: IND 340/6 vs AUS 304/10) appear in results but are irrelevant. [hindustantimes](https://www.hindustantimes.com/cricket/india-vs-australia-live-score-ind-vs-aus-5th-t20i-scorecard-today-cricket-match-latest-updates-november-8-brisbane-101762579665679.html)

2. **Key Details**  
   No live scores or schedules match today's date. Potential contexts like **India A vs Australia A** unofficial Tests (September 2025) or Border-Gavaskar Trophy Tests (e.g., Perth 2024) are historical. Check official sites like **ESPNcricinfo** or **Cricket Australia** for any unindexed updates. [cricket.com](https://www.cricket.com.au/matches/series/CA:2638/australia-a-v-india-a-men)

## Key Takeaways  
- No active **IND vs AUS** match today—likely between series.  
- Last major series: Australia won ODIs 2-1 (or better) in 2025 down under. [espncricinfo](https://www.espncricinfo.com/series/india-in-australia-2025-26-1478882/australia-vs-india-1st-odi-1478904/ball-by-ball-commentary)
Hope this helps! Let me know if you have any other questions!
""";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Perplexity',
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
            code: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}

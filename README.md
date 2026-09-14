La Liga Match Analysis: What Predicts a Win?

A data analysis case study exploring which in-game factors are most associated with winning a football match in La Liga, built to help a sports betting company set more accurate odds.

Tools: SQL (BigQuery) · Tableau · Google Sheets Data: 1,140 matches across 3 seasons (2023/24, 2024/25, 2025/26)

Business Task

Analyze historical La Liga match data to identify which factors are most associated with winning, in order to help a sports betting company set more accurate odds.

The Data
Source: football-data.co.uk (PDDL license)
Scope: 3 seasons, 1,140 matches
Cleaning: Combined 3 season files into one dataset, added a Season column, removed the empty Referee column, and verified there were zero missing values.
Analysis

Using SQL in BigQuery, I compared the average of each match statistic across the three possible outcomes (home win, draw, away win) to see which factors separate winners from losers.

Key Findings
Factor	Predictive Value
Shots on target	Strong — winners average far more
Home advantage	Strong — home teams win 45.8% of matches
Total shots	Moderate — accuracy matters more than volume
Red cards	Negative factor — teams that get one tend to lose
Corners	Not predictive
Fouls	Not predictive
Yellow cards	Not predictive

Main insight: Accuracy beats volume. Shots on target rise ~50% when a team wins, while total shots rise only ~15%. It's not about shooting a lot — it's about shooting on target.

Recommendation

For setting odds, the betting company should focus on home advantage and each team's historical average of shots on target. Corners, fouls, and yellow cards add no predictive value and should not weigh into the calculation.

Note: Red cards show a small absolute difference because they are rare events, but their relative impact is high — teams that receive one lose about 3x more often.

Dashboard

[🔗 **[View the interactive dashboard on Tableau Public](https://public.tableau.com/views/LaLigaMatchAnalysis-WhatPredictsaWin/Dashboard1)**](https://public.tableau.com/app/profile/samuel.alfaro/viz/LaLigaMatchAnalysis-WhatPredictsaWin/Dashboard1)

Files in this repo
LA_LIGA_PROJECT_EN.pdf — full case study write-up
queries.sql — all SQL queries used in the analysis
laliga_combined.csv — the cleaned dataset (1,140 matches)

Built by Samuel Alfaro Ramirez — aspiring Data Analyst focused on sports & business analytics.

-- La Liga Match Analysis: What Predicts a Win?
-- SQL queries run in BigQuery on a combined dataset of 1,140 La Liga matches (3 seasons)

-- Verify the data loaded correctly
SELECT COUNT(*) AS total_matches
FROM `laliga-proyect.Laliga.La Liga`;


-- Query 1: Home advantage — how often does each outcome happen?
SELECT
  FTR,
  COUNT(*) AS count,
  ROUND(COUNT(*) * 100.0 / 1140, 1) AS percentage
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY count DESC;


-- Query 2: Shots on target by outcome
SELECT
  FTR,
  ROUND(AVG(HST), 2) AS avg_shots_on_target_home,
  ROUND(AVG(AST), 2) AS avg_shots_on_target_away
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY FTR;


-- Query 3: Total shots by outcome (to compare quantity vs accuracy)
SELECT
  FTR,
  ROUND(AVG(HS), 2) AS avg_shots_home,
  ROUND(AVG(`AS`), 2) AS avg_shots_away
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY FTR;


-- Query 4: Corners by outcome
SELECT
  FTR,
  ROUND(AVG(HC), 2) AS avg_corners_home,
  ROUND(AVG(AC), 2) AS avg_corners_away
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY FTR;


-- Query 5: Fouls by outcome
SELECT
  FTR,
  ROUND(AVG(HF), 2) AS avg_fouls_home,
  ROUND(AVG(AF), 2) AS avg_fouls_away
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY FTR;


-- Query 6: Cards by outcome (red and yellow)
SELECT
  FTR,
  ROUND(AVG(HR), 2) AS avg_red_home,
  ROUND(AVG(AR), 2) AS avg_red_away,
  ROUND(AVG(HY), 2) AS avg_yellow_home,
  ROUND(AVG(AY), 2) AS avg_yellow_away
FROM `laliga-proyect.Laliga.La Liga`
GROUP BY FTR
ORDER BY FTR;

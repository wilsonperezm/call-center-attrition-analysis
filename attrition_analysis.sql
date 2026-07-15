-- ================================================
-- CALL CENTER ATTRITION ANALYSIS
-- Analyst: Wilson Pérez
-- Tool: SQLite
-- Description: Analysis of agent attrition rate 
-- in a bilingual call center in Bogotá, Colombia
-- ================================================

-- TABLE CREATION
CREATE TABLE call_center_agents (
    agent_id INTEGER PRIMARY KEY,
    age INTEGER,
    age_group TEXT,
    campaign_type TEXT,
    stress_level TEXT,
    shift TEXT,
    performance_score TEXT,
    tenure_days INTEGER,
    resigned TEXT,
    resignation_reason TEXT,
    training_cost_usd INTEGER
);

-- ================================================
-- QUESTION 1: How many agents resigned and what 
-- was the total financial loss in USD?
-- ================================================
SELECT resigned, 
       COUNT(*) AS total_agents, 
       SUM(training_cost_usd) AS total_loss_usd
FROM call_center_agents
WHERE resigned = 'yes'
GROUP BY resigned;

-- ================================================
-- QUESTION 2: What factors are most associated 
-- with early resignations?
-- ================================================
SELECT campaign_type, 
       shift, 
       resignation_reason, 
       stress_level, 
       COUNT(*) AS total
FROM call_center_agents
WHERE resignation_reason IS NOT NULL
GROUP BY campaign_type, shift, resignation_reason, stress_level
ORDER BY total DESC;

-- ================================================
-- QUESTION 3: What is the profile of the agent 
-- most likely to resign?
-- ================================================
SELECT age, 
       age_group, 
       performance_score, 
       COUNT(*) AS total
FROM call_center_agents
WHERE resignation_reason IS NOT NULL
GROUP BY age, age_group, performance_score
ORDER BY total DESC;

-- ================================================
-- QUESTION 4: How long do agents last before 
-- resigning, by campaign type?
-- ================================================
SELECT campaign_type, 
       AVG(tenure_days) AS avg_days_before_resignation
FROM call_center_agents
WHERE resigned = 'yes'
GROUP BY campaign_type
ORDER BY avg_days_before_resignation DESC;
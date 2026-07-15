# call-center-attrition-analysis

## Overview
SQL-based analysis of agent attrition in a bilingual call center in Bogotá, Colombia. 
This project identifies the key factors driving early resignations and quantifies 
the financial impact in USD for the operation.

## Business Problem
A bilingual call center was experiencing high agent turnover, with 52% of agents 
resigning within the first 90 days — before recovering the $3,000 USD training investment per agent.

**Key questions answered:**
- How many agents resigned and what was the total financial loss?
- What factors are most associated with early resignations?
- What is the profile of the agent most likely to resign?
- How long do agents last before resigning, by campaign type?

## Tools Used
- SQL (SQLite)
- DB Browser for SQLite

## Key Findings
- **26 out of 50 agents resigned**, representing a loss of **$78,000 USD**
- **Burnout** was the #1 resignation reason (17 out of 26 agents)
- **100%** of resignations came from the **18-24 age group** with below-average performance
- **Tech Service** agents lasted an average of **49 days** before resigning
- **Support** agents lasted an average of **38 days** before resigning
- Both campaign types are well below the **90-day investment recovery threshold**
- **Sales campaign had zero resignations**

## Recommendations
1. Implement stricter hiring filters for the 18-24 age group to assess commitment
2. Create incentive plans and additional breaks for high-stress campaigns
3. Review training materials to close knowledge gaps
4. Consider a **$500 USD retention bonus** paid after 90 days — projected savings of $32,500 USD vs current losses

## Dataset
- 50 agents
- Variables: age, campaign type, stress level, shift, performance score, tenure days, resignation reason
- Training cost: $3,000 USD per agent (industry standard for bilingual call centers in Bogotá)
- Data based on real industry benchmarks provided by an active Operations Manager

## Author
**Wilson Pérez** | Aspiring Data Analyst  
Trilingual: Spanish (native) | English (C2) | Portuguese (B1)  
[LinkedIn](https://www.linkedin.com/in/wilson-p%C3%A9rez-1631b713a/)

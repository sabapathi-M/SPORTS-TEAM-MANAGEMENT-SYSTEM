# SPORTS-TEAM-MANAGEMENT-SYSTEM

# Kabaddi Sports Team Management System

## Overview
The **Kabaddi Sports Team Management System** is a relational database project designed to manage data for kabaddi sports teams, players, matches, and leagues. This database system supports efficient data management, querying, and analysis of team performance and match outcomes.

## Features
- Manage teams, players, and coaches.
- Track match schedules, results, and scores.
- Organize leagues and seasons.
- Query player statistics and team performance.
- Perform complex data analysis with SQL queries.

## Database Schema
### Tables
1. **Teams**
   - Stores information about kabaddi teams, their founding year, and coaches.

  
2. **Players**
   - Stores details about players, including their position, date of birth, and performance statistics.


3. **Leagues**
   - Stores details of leagues, including season and duration.


4. **Matches**
   - Stores match details, including participating teams, venue, and winner.


5. **Scores**
   - Stores scores for each team in a match.


## Sample Data
### Teams
| Team ID | Team Name          | City       | Founded Year | Coach Name             |
|---------|--------------------|------------|--------------|------------------------|
| t001    | Patna Pirates      | Patna      | 2014         | Narender Redu          |
| t002    | Tamil Thalaivas    | Chennai    | 2017         | Udaya Kumar            |
| t003    | Jaipur Pink Panthers | Jaipur  | 2014         | Sanjeev Baliyan        |
| t004    | Dabang Delhi       | Delhi      | 2014         | Joginder Narwal        |
| t005    | Bengaluru Bulls    | Bengaluru  | 2013         | Randhir Singh Sehrawat |

### Players
| Player ID | Player Name | Team ID | Position          | DOB        | Matches Played | Total Points | Points/Game |
|-----------|-------------|---------|-------------------|------------|----------------|--------------|-------------|
| p0001     | Ankit       | t001    | All Rounder       | 1999-07-20 | 10             | 35           | 3.5         |
| p0002     | Devan       | t001    | Raider            | 2000-04-01 | 10             | 140          | 14.0        |
| ...       | ...         | ...     | ...               | ...        | ...            | ...          | ...         |



## Contributing
Contributions are welcome! Please fork this repository, make your changes, and submit a pull request.





     

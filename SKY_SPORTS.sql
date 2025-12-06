create database Sky_Sports;
show databases;
use Sky_Sports;

select * from sql_project;


#1: Write an sql query to show all the UNIQUE team names
select distinct(team) from sql_project;

#2: Write an SQL query to show name of team which has rank 1 from group 7
select team from sql_project
where 'rank' = 1 and 'group' =7;

#3: Write an sql query to show count of all teams
select count(team) from sql_project;

#4: Write an SQL query to show matches_played by each team
select team, matches_played from sql_project
order by matches_played desc;

#5: Write an SQL query to show team, percent of wins with respect to matches_played by each team and name the resulting column as wins_percent
select team, 100.0*(wins/matches_played) as wins_percent from sql_project
order by wins_percent desc;

#6: Write an SQL query to show which team has maximum goals_scored and their count
select team, goals_scored from sql_project
where goals_scored = (select max(goals_scored) from sql_project);

#7: Write an SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select team, round(100.0*(draws/matches_played), 2) as matches_played from sql_project
order by matches_played desc;

#8: Write an SQL query to show which team has minimum goals_scored and their count
select team, goals_scored from sql_project
where goals_scored = (select min(goals_scored) from sql_project);

#9: Write an SQL query to show percent of losses with respect to
#matches_played by each team in ascending order by losses and name the resulting column as losses_percent
select team, 100.0*(losses/matches_played) as losses_percent from sql_project
order by losses_percent asc;

#10: Write an SQL query to show the average goal_difference
select avg(goal_difference) from sql_project;

#11: Write an SQL query to show name of the team where points are 0
select team, points from sql_project
where points = 0;

#12: Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from sql_project
where expected_goal_scored < exp_goal_conceded;

#13: Write an SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from sql_project
where exp_goal_difference between -0.5 and 0.5;

#14: Write an SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from sql_project
order by exp_goal_difference_per_90;

#15: Write an SQL query to show team which has maximum number of players_used
select team, players_used from sql_project
where players_used = (select max(players_used) from sql_project);

#16: Write an SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age from sql_project
order by avg_age;

#17: Write an sql query to show average possession of teams
select avg(possession) from sql_project;

#18: Write a SQL query to show team which has played atleast 5 games
select team, games from sql_project
where games>=5;

#19: Write an SQL query to show all data for which minutes is greater than 600
select * from sql_project
where minutes>600;

#20: Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from sql_project
order by goals asc;

#21: Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from sql_project
order by pens_made;

#22: Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red from sql_project
where cards_red = 1
order by cards_yellow;

#23: Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90
select team, goals_per90, assists_per90, goals_assists_per90 from sql_project
order by goals_assists_per90 desc;

#24: Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90
select team, goals_pens_per90, goals_assists_pens_per90 from sql_project
order by goals_assists_per90;

#25: Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct
#where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct
select team, shots, shots_on_target, shots_on_target_pct from sql_project
where shots_on_target_pct>30
order by shots_on_target_pct;

#26: Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 from sql_project
where team = "Belgium";

#27: Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in
#descending order by average_shot_distance
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from sql_project
order by average_shot_distance;

#28: Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches from sql_project
where errors = 0 and touches<1500;

#29: Write an SQL query to show team, fouls which has maximum number of fouls
select team, fouls from sql_project
where fouls = (select max(fouls) from sql_project);

#30: Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offisdes from sql_project
where offisdes<10 or offisdes>20;

#31: Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct
select team, aerials_won, aerials_lost, aerials_won_pct from sql_project
order by aerials_won_pct desc;

#32: Write an SQL query to show number of teams each group has
select "group", count(team) from sql_project
group by "group";

#33: Write a SQL query to show team names group 6 has
select "group" from sql_project
where "group"=6;

#34: Write an SQL query to show Australia belongs to which group
select "group" from sql_project
where team = "Australia";

#35: Write an SQL query to show group, average wins by each group
select "group", avg("group")from sql_project
group by "group";

#36: Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select "group", max(expected_goal_scored) from sql_project
order by expected_goal_scored;

#37: Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded
select "group", min(exp_goal_conceded) from sql_project
order by exp_goal_conceded desc;

#38: Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90
select "group", avg(exp_goal_difference_per_90) from sql_project
order by exp_goal_difference_per_90;

#39: Write an SQL query to show which team has equal number of goals_scored and goals_against
select team, goals_scored, goals_against from sql_project
where goals_scored = goals_against;

#40: Write an SQL query to show which team has maximum players_used
select team, players_used from sql_project
where players_used = (select max(players_used) from sql_project);

#41: Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200
select team, players_used, avg_age, games, minutes from sql_project
where minutes<500 and minutes>200;

#42:Write an SQL query to show all data of group_stats in ascending order BY points
select * from sql_project
order by points;






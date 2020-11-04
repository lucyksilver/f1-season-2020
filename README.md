Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
# F1 Season 2020

## Launching the program 
My program was built with Ruby on Rails (version 6.0.3.4). To launch the program type either run ```rails s``` in the terminal or view on Heroku here: https://f1-season-2020.herokuapp.com/.


## The program
My data, points and final positioning are based on the three races that were in the instructions (race one, two and three). However, my data does include all 21 drivers and all 10 teams even if they did not finish in the top 10 of the three races. 


## Drivers Standings & Constructor Standings 
There are two tables - the first showing the drivers' standings, which displays the position, driver's name, constructor and total points. The second table is for the constructors' standings, which displays the position, constructor name, the team members and total points.

Their order is determined by points, then alphabetically with the Williams drivers and constructor highlighted.


## Positioning
Unfortunately, in the time that I had I was unable to achieve the desired positioning where if we had two drivers tied in first position then the next position would be 3. I have written pseudo code in the overall_position method on the driver model to show my thinking. 


## Updating Data
My program will allow for data to be updated throughout the season. The race_result model is made up of a race, a driver and his position for that specific race. This allows for drivers to be easily swapped in for different races. I did not include an interface for this program - changes can be made in the seed.


## Deducting & rewarding extra points
- Although I have not deducted any points, my program does allow for it. There is a penalty column on the race_results table, which is taken into consideration when the points are calculated for that driver. The penalty is default to 0 unless changed or updated for a particular race.
- Similarly, the fastest_lap is a column on race_results, which defaults to false. When a driver has the fastest lap and is set to true, then an extra point is awarded.
- If 75 per cent of the race distance has not been completed and the race cannot be resumed, half points are awarded. By default the completion is set to 100, but if updated to less than 75, the points for that race will be halved.




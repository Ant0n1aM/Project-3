% Calculating the average & on base percentage for each player
% Define user inputs 
numPlayers = input("How many players do you want to enter?:");

% Use a for loop to ask for the information and create each object
% of the player class
for i = 1:numPlayers
    name = input("Enter the name of the baseball player: ",'s');
    team = input("Enter the name of the team they play on: ",'s');
    hits = input("Enter their number of hits: ");
    atBats = input("Enter their number of at bats: ");
    walks = input("Enter their number of walks: ");
    players(i) = player(name, team, hits, walks, atBats);
end
%The output of the program
% A list of all players, with their team name, with batting averages greater than 0.300
fprintf('\nThe players with a batting average higher than 0.300 are:\n')
for i = 1:numPlayers
    if players(i).average > 0.300
        fprintf('\n%s:\nTeam:%s\nAverage:\t\t\t%.3f\nOn Base Percentage:\t%.3f\n\n', ...
            players(i).name,players(i).team,players(i).average,players(i).onBasepercent)
    end
end
% A list of all players ,with their team name, with on-base percentages greater than 0.350
fprintf('\nThe players with an on-base percentage higher than 0.350 are:\n')
for i = 1:numPlayers
    if players(i).onBasepercent > 0.350
        fprintf('\n%s:\nTeam:%s\nAverage:\t\t\t%.3f\nOn Base Percentage:\t%.3f\n', ...
            players(i).name,players(i).team,players(i).average,players(i).onBasepercent)
    end
end
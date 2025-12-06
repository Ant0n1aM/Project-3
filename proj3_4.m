% Calculating the average & on base percentage for each player
% Define user inputs 
numPlayers = input("How many players do you want to enter?\n");

% Use a for loop to ask for the information and create each object
% of the player class
for i = 1:numPlayers
    name = input("\nEnter the name of the baseball player: ",'s');
    team = input("Enter the name of the team they play on: ",'s');
    hits = input("Enter their number of hits: ");
    atBats = input("Enter their number of at bats: ");
    walks = input("Enter their number of walks: ");
    players(i) = player(name, team, hits, walks, atBats);
end
% Determine and display players who had a batting average above 0.300
fprintf('\n\n\nThe players with a batting average higher than 0.300 are:\n\n')
for i = 1:numPlayers
    if players(i).average > 0.300
        fprintf('%s:\nTeam: %s\nAverage:\t\t\t%.3f\nOn-Base Percentage:\t%.3f\n\n', ...
            players(i).name,players(i).team,players(i).average,players(i).onBasepercent)
    end
end
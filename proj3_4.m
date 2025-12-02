% Calculating the average & on base percentage for each player
% Define user inputs 
numPlayers = input("How many players do you want to enter? ");

% Use a for loop to ask for the information and create each object
% of the player class
for i = 1:numPlayers
    name = input("Enter the name of the baseball player: ",'s');
    team = input("Enter the name of the team they play on: ");
    hits = input("Enter their number of hits: ");
    atBats = input("Enter their number of at bats: ");
    walks = input("Enter their number of walks: ");
end

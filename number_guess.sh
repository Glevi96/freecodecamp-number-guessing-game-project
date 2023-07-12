#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#genereate random number within 1 and 1000
RANDOM_NUM=$((1 + $RANDOM % 1000))
STEPS=0
echo "Enter your username:"
read USERNAME
SELECT_USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE user_name LIKE '$USERNAME'")
if [[ -z $SELECT_USER_ID_RESULT ]]
then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
else
  #SELECT USER
  SELECT_USER_DATA=$($PSQL "SELECT user_name,number_of_games,number_of_guesses FROM users LEFT JOIN games ON users.best_game_id=games.game_id WHERE user_id=$SELECT_USER_ID_RESULT")
  echo "$SELECT_USER_DATA" | while IFS="|" read USERNAME GAMES_PLAYED BEST_GAME
  do
    echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi
echo -e "Guess the secret number between 1 and 1000:"
read GUESS_NUM
STEP_COUNTER(){
  STEPS=$((STEPS + 1))
}
while [[ $RANDOM_NUM != $GUESS_NUM ]]
  do
    if [[ ! $GUESS_NUM =~ ^[0-9]+$ ]]
      then
        echo -e "That is not an integer, guess again:"
      else
        if [[ $GUESS_NUM -gt $RANDOM_NUM ]]
          then
            echo -e "It's lower than that, guess again:"
            STEP_COUNTER
          else 
            echo -e "It's higher than that, guess again:"
            STEP_COUNTER
      fi
    fi
    read GUESS_NUM 
done
  STEP_COUNTER
  #insert new user
  #register new game
  INSERT_NEW_GAME=$($PSQL "INSERT INTO games(number_of_guesses) VALUES($STEPS)")
  #get the id of the new game
  NEW_GAME_ID=$($PSQL "SELECT MAX(game_id) FROM games")
  if  [[ -z $SELECT_USER_ID_RESULT ]]
    then
      #insert new user with last game
      INSERT_NEW_USER=$($PSQL "INSERT INTO users(user_name) VALUES('$USERNAME')")
      INSERT_THE_GAME_TO_USER=$($PSQL "UPDATE users SET best_game_id = $NEW_GAME_ID WHERE user_name='$USERNAME'")
    else
      #compare this game to users lastgame
      CURRENT_MAX=$($PSQL "SELECT number_of_guesses FROM games RIGHT JOIN users ON games.game_id=users.best_game_id WHERE user_name='$USERNAME'")
      if [[ $STEPS -lt $CURRENT_MAX ]]
        then
        UPDATE_MAX=$($PSQL "UPDATE users SET best_game_id=$NEW_GAME_ID WHERE user_name='$USERNAME'")
      fi
      #update new game to 
  fi
  #if not insert
  INCREMENT_NUMBER_OF_GAMES=$($PSQL "UPDATE users SET number_of_games=number_of_games+1 WHERE user_name='$USERNAME'")
  #if not new user, update
  echo -e "You guessed it in $STEPS tries. The secret number was $RANDOM_NUM. Nice job!"

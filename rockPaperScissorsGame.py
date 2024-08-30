Rock = """
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
"""

Paper = """
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)
"""

Scissors = """
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
"""


import random

game_images = [Rock,Paper, Scissors]

#user choose 
user_select = int(input("Please Select 0 for Rock, 2 Paper or 3 Scissor\n"))
print(game_images[user_select])

comp_select = random.randint(0,2)
print("Computer Chose: ")
print(game_images[comp_select])

#input options mapping out integers to rock paper and scissors
if user_select and comp_select == 0:
    print(Rock)
elif user_select == 1:
    print(Paper)
elif user_select == 2:
    print(Scissors)
else:
    print('invalid input')

# Rock paper scissors logic
if user_select >= 4 or user_select < 1:
    print("invalid number")
elif user_select == comp_select:
    print("tie")

elif user_select == 1 and comp_select == 3:
    print("You win")

elif comp_select == 1 and user_select == 3:
    print("You lose")

#
elif comp_select > user_select:
    print("you lose")

elif user_select > comp_select:
    print("you win")




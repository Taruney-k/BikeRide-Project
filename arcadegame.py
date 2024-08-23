print("""
                                   __,...__
                               _,-'::::::::`-.
                             ,'::,----._::::::`.
                           ,'::,' /\,-. \:::::::`.
                          /::::| ;    | |:::::::::`.
                          |:::::`._   \ |:::::::::::\
                        __\,:--''--`_--':::::::::::::\
                      `'--::__:::::::`-:_:::::::::::::\
                          /--.`'--:_:::::`-::::::::::::\
                         /,-_.'    _`-:_::::`:::::::::::\
                         / /o\|   ,-_`-.`--:::`::::::::::)
                        || \_/|  / /o\\         `:,'''-:'
                      (#__`-_/   | \_/|        /##|  ,-.\
                     ,''     `-. `.__/       ,'###| /   ||
                    /           \      ,    (##### /    ||
                    |           |___,-##\     /##/ \__,'/
                    \          /########)    |#,'|__..-'
                     `-..__..-'######)          /
                         \`.###'`""'           /
                          \\\__//            ,'
                           \`--'         _,-'
                            `-..___..--''
""")


print("Welcome to the arcade.")
print("You are at a cross road. Where do you want to go?")

direction = input("Type 'left' or 'right' \n").lower
if direction == 'left':
    print("You have come to the arcade.\n")
else:
    print("game over")

play = input("Would you like to 'play' or 'pass' \n").lower
if play == 'play':
    print('please choose the your arcade machine\n')
elif play == 'pass':   
    print('GAME OVER')

color = input("Choose arcade machine: yellow, red, blue \n").lower
if color == 'yellow':
    print("you win")
elif color == 'red':
    print("arcade machine is on FIRE!!")
elif color == 'blue':
       print("arcade machine is broken")
else: 
    print("GAME OVER")
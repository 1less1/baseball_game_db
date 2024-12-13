import os
import platform
import time

# Ascii Art --------------------------------------------------

baseball_art_large = r"""                                                                                       
                                                                                                                   ____ 
    ______ ___     _   __ ______ ___    _______  __    ____   ___    _____  ______ ____   ___     __     __      .'    '.
   / ____//   |   / | / //_  __//   |  / ___/\ \/ /   / __ ) /   |  / ___/ / ____// __ ) /   |   / /    / /     /'-....-'\ 
  / /_   / /| |  /  |/ /  / /  / /| |  \__ \  \  /   / __  |/ /| |  \__ \ / __/  / __  |/ /| |  / /    / /      |        | 
 / __/  / ___ | / /|  /  / /  / ___ | ___/ /  / /   / /_/ // ___ | ___/ // /___ / /_/ // ___ | / /___ / /___    \.-''''-./        
/_/    /_/  |_|/_/ |_/  /_/  /_/  |_|/____/  /_/   /_____//_/  |_|/____//_____//_____//_/  |_|/_____//_____/     '.____.' 
                                                                                                                
"""


baseball_art_small = r"""
   _______   _  ___________   _____  __  ___  ___   ___________  ___   __   __ 
  / __/ _ | / |/ /_  __/ _ | / __| \/ / / _ )/ _ | / __/ __/ _ )/ _ | / /  / / 
 / _// __ |/    / / / / __ |_\ \  \  / / _  / __ |_\ \/ _// _  / __ |/ /__/ /__
/_/ /_/ |_/_/|_/ /_/ /_/ |_/___/  /_/ /____/_/ |_/___/___/____/_/ |_/____/____/

"""

baseball_player_art = r"""

                                        _--_     dMb
                                    __(._  )   d0P
                                        <  (D)  .MP
                                    .~ \ /~```M-.
                                    .~    V    Mo_ \

    -------============((((}{)      (   (___. {:)-./
                                    ~._____.(:}
                                    /     .M\
                                    /      "" \
                                    |    /\   |
                                    /   /  \   \
                                    /   /    \   \
                                    \__/      \__/
                                    / /        | |
                                .^V^.      .^V^.
                                    +-+        +-+

"""

# Utilities --------------------------------------------------

def clear_screen():
    if platform.system() == "Windows":
        os.system("cls")
    else:
        os.system("clear")

def transition():
    clear_screen()
    print(baseball_art_small)
    print()

# Modular UI Methods --------------------------------------------------

def print_fantasy_baseball_art(size):
    if size.lower() == "large":
        print(baseball_art_large)
    elif size.lower() == "small":
        print(baseball_art_small)

def print_player_art():
    print(baseball_player_art)

def print_header(title, size):
    print('Use "Ctrl + C" to quit\n')
    print_fantasy_baseball_art(size)
    print()
    print(str(title))
    print("-" * 80)
    print()

def print_small_header(title):
    print(title)
    print("-" * 40)
    print()

def print_options(title, options, go_back):
    print(str(title))
    if options:
        for index, option in enumerate(options, start=1):
            print(f"[{index}] {option}")
    if go_back == True:
        print("[0] Go Back")

def invalid_choice():
    print("Invalid choice. Try again.")
    time.sleep(1)
    clear_screen()
import random

# Data initialization
FLEET = [
    "Adventurer", "Omen", "The Jellyfish", "Saber", "Hellhound",
    "SC Providence", "CS Shade", "BS Khan", "SS Andromeda", "BS Nuria"
]

PLANET = [
    "ticcoclite", "ninriecarro", "odruna", "itrolla", "eabos",
    "legantu", "bratinides", "craculara", "trilles 992", "cone YK3P"
]

STAR = [
    "ezlaoct", "sroi", "otaeks", "poaph", "ameag",
    "naithef", "ekuasims", "sehle", "ikreglault", "baeccays"
]


def initialize_tramlines():
    """Generate random tramline connections between star systems."""
    ext = {}
    for i in range(10):
        ext[i] = []
        for t in range(3):
            e = random.randint(0, 9)
            # Ensure the tramline doesn't point to the same star
            while e == i:
                e = random.randint(0, 9)
            ext[i].append(e)
    return ext


def show_instructions():
    """Display game instructions."""
    print("Your are commanding a rescue ship that is tasked")
    print("with finding a ship that has crashed in a remote system.")
    print("Each star sytem has at least 3 tramlines to other star systems.")
    print("Your job is to pilot your ship until you can reach the")
    print("lost ship.")
    print("                   Good luck.")
    print()


    """Main game loop."""
# Initialize tramline connections
ext = initialize_tramlines()
    
# Ask if player needs instructions
print("Do you need instructions? (y/n)")
print()
ans = input().lower()
    
if ans == "y":
    show_instructions()
    
# Get captain's name
print("Welcome Captain. Please sign in with your name.")
capt = input()
    
print(f"Captain {capt} we're reviewing ships available.")
    
# Assign player ship and enemy ship
asn = random.randint(0, 9)
enm = random.randint(0, 9)
while enm == asn:
    enm = random.randint(0, 9)


# Assign starting and ending stars
str_star = random.randint(0, 9)
estr = random.randint(0, 9)
while estr == str_star:
    estr = random.randint(0, 9)

# Display mission briefing
print(f"You are now in command of {FLEET[asn]}.")
print(f"Your mission is to travel from {STAR[str_star]} to {STAR[estr]}")
print(f"where the target ship {FLEET[enm]} is reported to be")
print(f"crashed on {PLANET[estr]}.")
print()

# Pilot loop
while str_star != estr:
    print("Current tramline exits are:")
    print("--------------------------------")
    for t in range(3):
        destination_index = ext[str_star][t]
        print(f"{t + 1}: {STAR[destination_index]}")
    print()
    
    print("Choose your tramline")
    try:
        tramline_choice = int(input()) - 1
        
        # Validate input
        if tramline_choice < 0 or tramline_choice > 2:
            print("Invalid choice. Please choose 1, 2, or 3.")
            continue
        
        str_star = ext[str_star][tramline_choice]
    except ValueError:
        print("Please enter a valid number.")
        continue
     # Victory message
print(f"Congratulations! You have rescued {FLEET[enm]}!")




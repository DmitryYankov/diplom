# Task #1:
# 1. Write an if statement to test whether the alien’s color is green.
# If it is, print a message that the player just earned 5 points.
alien_color = "green"

if alien_color == "green":
    print("the player just earned 5 points")
# 2. Write one version of this program that passes the if test and another that fails.
# (The version that fails will have no output.)
alien_color = "yellow"

if alien_color == "green":
    print("the player just earned 5 points")
# Task #2:
# Choose a color for an alien as you did in Exercise 1, and write an if-else chain.
# 1. If the alien’s color is green, print a statement that the player just earned 5 points for shooting the alien.
# 2. If the alien’s color isn’t green, print a statement that the player just earned 10 points.
# 3. Write one version of this program that runs the if block and another that runs the else block.

alien_color = "green"

if alien_color == "green":
    print("the player just earned 5 points")
else:
    print("the player just earned 10 points")

alien_color = "green"

if alien_color == "red":
    print("the player just earned 5 points")
else:
    print("the player just earned 10 points")

# Task #3:

# Alien Colors #3: Turn your if-else chain from Exercise 2 into an if-elif-else chain.
# 1. If the alien is green, print a message that the player earned 5 points.
# 2. If the alien is yellow, print a message that the player earned 10 points.
# 3. If the alien is red, print a message that the player earned 15 points.
# 4. Write three versions of this program, making sure each message is printed for the appropriate color alien.

alien_color = "red"

if alien_color == "green":
    print("the player just earned 5 points")
elif alien_color == "yellow":
    print("the player just earned 10 points")
else:
    print("the player just earned 15 points")

alien_color = "yellow"

if alien_color == "green":
    print("the player just earned 5 points")
elif alien_color == "yellow":
    print("the player just earned 10 points")
else:
    print("the player just earned 15 points")

# Task #4:

# Write an if-elif-else chain that determines a person’s stage of life. Set a value for the variable age, and then:
# 1. If the person is less than 2 years old, print a message that the person is a baby.
# 2. If the person is at least 2 years old but less than 4, print a message that the person is a toddler.
# 3. If the person is at least 4 years old but less than 13, print a message that the person is a kid.
# 4. If the person is at least 13 years old but less than 20, print a message that the person is a teenager.
# 5. If the person is at least 20 years old but less than 65, print a message that the person is an adult.
# 6. If the person is age 65 or older, print a message that the person is an elder.

age = 26

if age < 2:
    print("the person is a baby")
elif age < 4:
    print("the person is a toddler")
elif age < 13:
    print("the person is a kid")
elif age < 20:
    print("the person is a teenager")
elif age < 65:
    print("the person is a adult")
else:
    print("the person is a elder")



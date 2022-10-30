# ###12
# import random
#
#
# #step 1: fill 5 randomly the list
# def get_5_rand_int():
#     loto = []
#     while len(loto) < 5:
#         x = random.randint(2, 49)
#         if x not in loto:
#             loto.append(x)
#     return loto
#
# guesses = list()
# loto = get_5_rand_int()
# while loto:
#     guess = int(input("Enter your next guess (2<number<50) You got more {} tries: ".format(20-len(guesses))))
#     if guess < 2 or guess > 49:
#         print ("This guess don't count -   guess numbers 2-49")
#         continue
#     if guess in guesses:
#         print("the guess alerady used ",guess)
#         break
#     guesses.append(guess)
#     if guess in loto:
#         loto.remove(guess)
#     if len(guesses) == 20 and len(loto) != 0:
#         print ("You didn't guess the 5 numbers in 20 tries \n Starting all over again !!!")
#         loto = get_5_rand_int()
#         guesses = list()
#
#
# if len(loto) == 0:
#     print ("Congatiolation you guess all 5 numbers in {} tries".format(len(guesses)))
# else:
#     print ("Nevermind next time")
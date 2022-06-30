from random import choices


def fruit():
    fruits = ["apple", "cherry", "strawberry"]
    return choices(fruits)[0]


def meal(beverage):
    my_fruit = fruit()
    print(f"Your fruit is {my_fruit} and your beverage is {beverage}")
    if my_fruit == "cherry":
        complete_meal = f"Your meal is a {beverage} and {my_fruit}"
        return complete_meal
    alternate_meal = f"Your meal is a {beverage} and a steak"
    return alternate_meal

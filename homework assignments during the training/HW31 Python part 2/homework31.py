# Task #2:
from functools import wraps


def task2(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        print('The args of function is:')
        if args:  # If args is not empty.
            print(args)
        if kwargs:  # If kwargs is not empty.
            print(kwargs)
        return func(*args, **kwargs)

    return wrapper


@task2
def mult(num1, num2):
    answer = num1 * num2
    return answer


x = mult(2, 5)
print(x)

# Task #3:
users = ['Dmitry', 'Artur', 'Roma', 'Ira', 'Vladimir']


def task3(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        filter_users = list(filter(lambda user: len(user) > 5, *args))
        func(filter_users)

    return wrapper


@task3
def print_users(list3):
    print(list3)


print_users(users)

# Task #4:

MEMO = {}


def task4(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        key_dict = func.__name__ + str(args) + str(kwargs)
        if MEMO.get(key_dict) is not None:
            print(f"Result from cache: {MEMO.get(key_dict)}")
            return MEMO.get(key_dict)
        else:
            result_function = func(*args, **kwargs)
            MEMO[key_dict] = result_function
            print(f"Result from func: {result_function}")
            return result_function

    return wrapper


@task4
def mult(x, y):
    return x * y


@task4
def devide(x, y):
    return x / y


mult(2, 3)
mult(2, 3)
mult(3, 3)

devide(20, 2)
devide(20, 2)
devide(30, 2)

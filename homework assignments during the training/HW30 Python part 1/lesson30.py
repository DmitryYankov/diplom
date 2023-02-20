# processed_users = ["Anthony", "Nicholas", "Frank", "Courtney"]
#
# processed_users.append("Nick")
#
# print(processed_users)
#
# processed_users_2 = ["Alisa", "Rob", "Rick"]
# processed_users.extend(processed_users_2)
# print(processed_users)
# print(processed_users.pop(1))
# print(processed_users)
# del processed_users[2]
# print(processed_users)
#
# count_of_retries = {"i-dam32dwk123": 3, "i-wnelfrn23l4jn": 12, "i-fsnlkjrl32jnl": 0}
# print(count_of_retries)
# count_of_retries["i-wnelfrn23l4jn"] = 40
# print(count_of_retries)
# count_of_retries.update({"i-dam32dwk123": 50})
# print(count_of_retries)
# print(count_of_retries.keys())
# print(count_of_retries.values())

# print(int(True))
# print(bool("True"))
# print(bool(""))

#1
#    Создать 5 переменных , две типа int , две типа str и 
#    одну типа list, list должен содержать минимум 5 значений.
int1 = 2
int2 = 3
str1 = ["Hello"]
str2 = ["World"]
list1 = [5, 10, 15, 20, 25]
#2
#     объявить новую переменную типа int и присвоить ей результат
#     операции сложения первых двух переменных.
#     Сделать тоже самое для остальных операций , возведение в степень,
#     нахождение остатка, умножение, деление и деление без остатка
sum1 = (int1 + int2)
print(sum1)
mult1 = (int1 * int2)
print(mult1)
degree1 = (int1 ** int2)
print(degree1)
division1 = (int1 / int2)
print(division1)
division2 = (int2 // int1)
print(division2)
division3 = (int2 % int1)
print(division3)
#3
#     объявить новую переменную и инициализировать ее значением 
#     списка созданного в первом задании , но с использованием среза
#     с 1-ого индекса по 4-ый (инициализация - просто присвоение значения,
#     типа age = 29)
list2 = list1[1:4]
print(list2)
#4
#     инциализировать новую переменную результатом сложения (конкатинации)
#     двух переменных типа str созданных на первом этапе так , чтобы 
#     при вызове функции print() с этой переменной вывод происходил с пробелом
#     между ними. Пример name = 'Valerij' last_name = 'Zhuk' 
#     print(full_name) >>> 'Valerij Zhuk'
full_text = str1 + str2
print(full_text)
#5
#     Инициализировать переменную 
#     just_dict = {"name": "это замените вашим именем", age: 20}
#     поменять значение переменной just_dict по ключу name 
#     и присвоить туда любое новое имя
#     После чего создать переменную age и записать в нее значение
#     ключа age из just_dict
just_dict = {"name": "Dmitry", "age": 20}
print(just_dict)
just_dict["name"] = "Roman"
print(just_dict)
age = just_dict["age"]
print(age)
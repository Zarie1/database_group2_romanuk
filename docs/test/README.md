# Тестування працездатності системи

*В цьому розділі вказуються засоби тестування, наводяться вихідні коди тестів та результати тестування.*  
*Тестування виконується за допомогою Postman*

## Запуск сервера

![](./photos/server_start.png)

## Тестування GET

### Отримати всіх користувачів

#### Запит:
![](./photos/get all roles.png)

#### Результат:
![](./photos/get all roles result.png)

### Отримати користувача по id

#### Запит:
![](./photos/get role id.png)

#### Результат:
![](./photos/get role id result.png)

## Тестування POST

### Додати користувача

#### Запит:
![](./photos/add role.png)

#### Результат:
![](./photos/add role result.png)

#### Перевірка за допомогою GET:
![](./photos/get role id5.png)

![](./photos/get role id5 result.png)

## Тестування PUT

### Змінити користувача по id

#### Запит:
![](./photos/update role.png)

#### Результат:
![](./photos/update role result.png)

#### Перевірка за допомогою GET:
![](./photos/get role id5.png)

![](./photos/get role id5 result.png)

## Тестування DELETE

### Видалити користувача по id

#### Запит:
![](./photos/delete role.png)

#### Результат:
![](./photos/delete role result.png)

#### Перевірка за допомогою GET:
![](./photos/get all roles after delete.png)

![](./photos/get all roles after delete result.png)
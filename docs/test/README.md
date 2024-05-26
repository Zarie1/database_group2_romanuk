# Тестування працездатності системи

*В цьому розділі вказуються засоби тестування, наводяться вихідні коди тестів та результати тестування.*  
*Тестування виконується за допомогою Postman*

## Запуск сервера

![](./photos/server_start.png)

## Тестування GET

### Отримати всіх користувачів

#### Запит:
![](./photos/get_all_roles.png)

#### Результат:
![](./photos/get_all_roles_result.png)

### Отримати користувача по id

#### Запит:
![](./photos/get_role_id.png)

#### Результат:
![](./photos/get_role_id_result.png)

## Тестування POST

### Додати користувача

#### Запит:
![](./photos/add_role.png)

#### Результат:
![](./photos/add_role_result.png)

#### Перевірка за допомогою GET:
![](./photos/get_role_id5.png)

![](./photos/get_role_id5_result.png)

## Тестування PUT

### Змінити користувача по id

#### Запит:
![](./photos/update_role.png)

#### Результат:
![](./photos/update_role_result.png)

#### Перевірка за допомогою GET:
![](./photos/get_role_id5.png)

![](./photos/get_role_id5_result.png)

## Тестування DELETE

### Видалити користувача по id

#### Запит:
![](./photos/delete_role.png)

#### Результат:
![](./photos/delete_role_result.png)

#### Перевірка за допомогою GET:
![](./photos/get_all_roles_after_delete.png)

![](./photos/get_all_roles_after_delete_result.png)
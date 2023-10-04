# NESTRO_Challenge

## Бекенд часть

Все взаимодействие происходит через контроллер ```FormulsController```

### ```/api/formulas/{nameTable}```

По пути ```/api/formulas/{nameTable}``` мы указываем название таблицы ```nameTable``` и обновляем данные из данной таблицы.
Для обновления таблиц мы передаем соответствующие параметры в теле запроса. Внутри контроллер уже через ```sql``` запросы добавляет в таблицы значения

### ```/api/formulas/{idEnterprise}```
Путь ```/api/formulas/{idEnterprise}``` позволяет по номеру месторождения ```(idEnterprise)``` получить всю информацию о нем.
Пример полученных данных:
```agsl
{
    "resultStationaryFuelBurn": [
        {
            "id": 1,
            "fuel_consumption": 0.1,
            "fuel_emissions": 74.1,
            "oxi_coef": 1.0,
            "trans_coef": 42.5,
            "result": 314.925,
            "enterprise_id": 1
        },
        {
            "id": 2,
            "fuel_consumption": 2.0,
            "fuel_emissions": 74.1,
            "oxi_coef": 1.0,
            "trans_coef": 42.5,
            "result": 6298.5,
            "enterprise_id": 1
        },
        {
            "id": 3,
            "fuel_consumption": 3.0,
            "fuel_emissions": 74.1,
            "oxi_coef": 1.0,
            "trans_coef": 42.5,
            "result": 9447.75,
            "enterprise_id": 1
        },
```

Где префикс ```result{text}``` означает данные из таблицы ```text```

### ```/api/enterprise```
Путь ```/api/enterprise``` позволяет получить данные о всех месторождениях


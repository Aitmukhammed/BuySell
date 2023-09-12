<#--<!doctype html>-->
<#--<html lang="en">-->
<#--<head>-->
<#--&lt;#&ndash;    <meta charset="UTF-8">&ndash;&gt;-->
<#--&lt;#&ndash;    <meta name="viewport"&ndash;&gt;-->
<#--&lt;#&ndash;          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">&ndash;&gt;-->
<#--&lt;#&ndash;    <meta http-equiv="X-UA-Compatible" content="ie=edge">&ndash;&gt;-->
<#--    <title>Buy Sell</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1>BUY SELL</h1>-->
<#--<h4>Товары со всего Казахстана</h4>-->
<#--<#list products as product>-->
<#--    <div>-->
<#--        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подронее о товаре...</a> </p>-->
<#--    </div>-->
<#--</#list>-->
<#--<hr>-->
<#--<h3>Создать новый товар</h3>-->
<#--<form action="/product/create" method="post"><br>-->
<#--    Название объявления: <input type="text" name="title"><br>-->
<#--    Описание объявления: <input type="text" name="description"><br>-->
<#--    Цена: <input type="number" name="price"><br>-->
<#--    Город: <input type="text" name="city"><br>-->
<#--    Имя: <input type="text" name="author"><br>-->
<#--    <input type="submit" value="Добавить товар">-->
<#--</form>-->
<#--</body>-->
<#--</html>-->

<!doctype html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
<h1>Buy Sell</h1>
<h4>Товары со всего Казахстана</h4>
<form action="/" method="get">
    Поиск по названию объявления <input type="text" name="title">
    <input type="submit" value="Поиск">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data"><br>
    Название объявления: <input type="text" name="title"><br>
    Описание объявления: <input type="text" name="description"><br>
    Цена: <input type="number" name="price"><br><br>
    Город: <input type="text" name="city"><br><br>
    Имя: <input type="text" name="author"><br><br>
    <br>
    <input type="file" name="file1"><br><br>
    <input type="file" name="file2"><br><br>
    <input type="file" name="file3"><br><br>
    <input type="submit" value="Добавить товар">
</form>
</body>
</html>
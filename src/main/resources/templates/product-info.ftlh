<!doctype html>
<html lang="en">
<head>
    <#--    <meta charset="UTF-8">-->
    <#--    <meta name="viewport"-->
    <#--          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">-->
    <#--    <meta http-equiv="X-UA-Compatible" content="ie=edge">-->
    <title>Buy Sell</title>
</head>
<body>
<h1>BUY SELL</h1>
<h4>Подробная информация о товаре</h4><br>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название товара: ${product.title}</b><br>
<b>Описание товара: ${product.description}</b><br>
<b>Цена: ${product.price}</b><br>
<b>Город: ${product.city}</b><br>
<b>Автор: ${product.author}</b><br>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар">
</form>
</body>
</html>
<!DOCTYPE html>
<html lang="ru">
<head>
    <base href="[[++site_url]]" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="[[*Keywords]]">
    <meta name="description" content="[[*Description:default=`[[*pagetitle]]`]]">
    [[BabelLinks?
    &showCurrent=`1`
    &tpl=`tpl.babelLink`
    ]]

    <link rel="icon" href="img/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="32x32" href="https://odessa.gayka.com.ua/static/ondevice/images/favicon32.png">
    <link rel="icon" type="image/x-icon" href="https://odessa.gayka.com.ua/static/ondevice/images/favicon.png">

    <link rel="stylesheet" href="assets/production/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/production/libs/slick/slick.css">
    <link rel="stylesheet" href="assets/production/css/style.css?{''|date:'U'}">

    <title>[[*Title:default=`[[*pagetitle]]`]]</title>

    <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement":
            [
                [[!schemaBreadList]]
            ]
        }
    </script>

</head>
<body>

<div class="page-wrap">
    <div class="page-content">

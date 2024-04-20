<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Strona Startowa</title>
    <link rel="stylesheet" href="/bootstrap/bootstrap.min.css" />
    <link rel="stylesheet" href="/bootstrap/branding.css" />
</head>
<body>
<#include "navbar.ftl" />

<!-- Main content area -->
<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <h1>Witaj na stronie startowej, ${user}!</h1>
            <p>Aktualna data: ${currentDate}</p>
            <p>To jest przykładowa strona startowa.</p>
        </div>
    </div>
</div>

<#include "footer.ftl" />

<script src="/bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>

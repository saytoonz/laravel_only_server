<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="{{ url('img/favicon.jpg') }}">
    <link rel="canonical" href="{{ url('/') }}" />

    <title>Bad Request | DLN</title>
    <link type="text/css" rel="stylesheet" href="{{url('css/404.css')}}" />
</head>

<body>
    <div id="notfound">
        <div class="notfound">
            <div class="notfound-404">
                <h1>:(</h1>
            </div>
            <h2>Error 401 - Unauthorized</h2>
            <p>The 401 (Unauthorized) status code indicates that the request has not been applied because it lacks valid authentication credentials for the target resource.</p>
            <a href="{{ url('/') }}">home page</a>
        </div>
    </div>


</body>

</html>

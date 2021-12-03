
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>INICIAR SESSION</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">
        <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

 

        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
            html,
            body {
                height: 100%;
            }

            body {
                display: flex;
                align-items: center;
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #f5f5f5;
            }

            .form-signin {
                width: 100%;
                max-width: 330px;
                padding: 15px;
                margin: auto;
            }

            .form-signin .checkbox {
                font-weight: 400;
            }

            .form-signin .form-floating:focus-within {
                z-index: 2;
            }

            .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }

            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>

        <link href="signin.css" rel="stylesheet">
    </head>
    <body class="text-center">

        <main class="form-signin">
            <form action="Login" method="post">
                <img class="mb-4" src="data:image/jpeg;base64,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" alt="" width="300" height="200">
                <h1 class="h3 mb-3 fw-normal">Iniciar Session</h1>

                <div class="form-floating">
                    <input type="email" name="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Correo Electronico</label>
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Contraseña</label>
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Recuerdame
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Ingresar</button>
                <p class="mt-4 mb-2 text-muted">&copy; 2021–2022</p>
            </form>
        </main>



    </body>
</html>

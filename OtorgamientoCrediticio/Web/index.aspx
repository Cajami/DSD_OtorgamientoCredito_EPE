<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Otorgamiento Crediticio - EPE</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Sans-serif;
            background: #2c3e50;
        }

        .login {
            position: relative;
            width: 350px;
        }

        .arrow-up {
            width: 0;
            height: 0;
            border-left: 20px solid transparent;
            border-right: 20px solid transparent;
            border-bottom: 15px solid #ECF0F1;
            left: 10%;
            position: absolute;
            top: -10px;
        }

        .formholder {
            background: #ecf0f1;
            width: 350px;
            border-radius: 5px;
            padding-top: 5px;
        }

        .randompad {
            padding: 10px;
        }

        fieldset {
            border: none;
        }

        .formholder input[type="text"], .formholder input[type="password"] {
            padding: 7px 5px;
            margin: 10px 0;
            width: 96%;
            display: block;
            font-size: 18px;
            border-radius: 5px;
            border: none;
            -webkit-transition: 0.3s linear;
            -moz-transition: 0.3s linear;
            -o-transition: 0.3s linear;
            transition: 0.3s linear;
        }

        .formholder input[type="button"] {
            background: #1abc9c;
            padding: 10px;
            font-size: 20px;
            display: block;
            width: 100%;
            border: none;
            color: #fff;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <div class="login" style="margin: 0 auto; margin-top: 15%;">
        <div class="arrow-up"></div>
        <div class="formholder">
            <div class="randompad">
                <fieldset>
                    <label>Usuario</label>
                    <input type="text" autofocus id="txtUsuario" />
                    <label>Password</label>
                    <input type="password" id="txtPassword" />
                    <input value="Login" id="btnIngresar" type="button" />
                </fieldset>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('btnIngresar').addEventListener('click', function () {
            window.location.href = "./pages/Main.aspx";
        })
    </script>
</body>
</html>

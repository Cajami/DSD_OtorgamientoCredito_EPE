<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="pages_Main" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Otorgamiento Crediticio - EPE</title>
    <link href="../css/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../css/estilos.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,700');
        @import url('//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css');

        body {
            /*color: #5D5F63;
            background: #293949;*/
            font-family: 'Open Sans', sans-serif;
            padding: 0;
            margin: 0;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
        }

        .sidebar-toggle {
            /*margin-left: -240px;*/
        }

        .sidebar {
            width: 240px;
            height: 85%;
            background: #293949;
            position: absolute;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
            z-index: 100;
            margin-left: 5px;
        }

            .sidebar #leftside-navigation ul,
            .sidebar #leftside-navigation ul ul {
                margin: -2px 0 0;
                padding: 0;
            }

                .sidebar #leftside-navigation ul li {
                    list-style-type: none;
                    border-bottom: 1px solid rgba(255, 255, 255, 0.05);
                }

                    .sidebar #leftside-navigation ul li.active > a {
                        color: #1abc9c;
                    }

                    .sidebar #leftside-navigation ul li.active ul {
                        display: block;
                    }

                    .sidebar #leftside-navigation ul li a {
                        color: #aeb2b7;
                        text-decoration: none;
                        display: block;
                        padding: 18px 0 18px 25px;
                        font-size: 12px;
                        outline: 0;
                        -webkit-transition: all 200ms ease-in;
                        -moz-transition: all 200ms ease-in;
                        -o-transition: all 200ms ease-in;
                        -ms-transition: all 200ms ease-in;
                        transition: all 200ms ease-in;
                    }

                        .sidebar #leftside-navigation ul li a:hover {
                            color: #1abc9c;
                        }

                        .sidebar #leftside-navigation ul li a span {
                            display: inline-block;
                        }

                        .sidebar #leftside-navigation ul li a i {
                            width: 20px;
                        }

                            .sidebar #leftside-navigation ul li a i .fa-angle-left,
                            .sidebar #leftside-navigation ul li a i .fa-angle-right {
                                padding-top: 3px;
                            }

                .sidebar #leftside-navigation ul ul {
                    display: none;
                }

                    .sidebar #leftside-navigation ul ul li {
                        background: #23313f;
                        margin-bottom: 0;
                        margin-left: 0;
                        margin-right: 0;
                        border-bottom: none;
                    }

                        .sidebar #leftside-navigation ul ul li a {
                            font-size: 12px;
                            padding-top: 13px;
                            padding-bottom: 13px;
                            color: #aeb2b7;
                        }

        .divBody {
            margin-left: 250px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo-header">
                        <a href="Index"></a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Usuario Logeado
                        </a></li>
                        <li><a href="#">
                            <i class="fa fa-hand-o-right" aria-hidden="true"></i>Sair</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <aside class="sidebar">
        <div id="leftside-navigation" class="nano">
            <ul class="nano-content">
                <li>
                    <a href="index.html"><i class="fa fa-dashboard"></i><span>Home</span></a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:void(0);"><i class="fa fa-cogs"></i><span>Maestros</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                    <ul>

                        <li><a href="#" id="linkClientes">Clientes</a>
                        </li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:void(0);"><i class="fa fa-table"></i><span>Otorgamiento Crediticio</span><i class="arrow fa fa-angle-right pull-right"></i></a>
                    <ul>
                        <li><a href="tables-basic.html">Solicitud</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <div class="divBody" id="DivContenedorPaginas">
    </div>


    <script src="../js/jquery.min.js"></script>

    <script>
        $("#leftside-navigation .sub-menu > a").click(function (e) {
            $("#leftside-navigation ul ul").slideUp(), $(this).next().is(":visible") || $(this).next().slideDown(),
            e.stopPropagation()
        });

        $('#linkClientes').on('click', function () {
            $('#DivContenedorPaginas').load('./Maestros/DatosCliente.html');
        });
    </script>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CuestionarioAWS.aspx.vb" Inherits="Ej1_CuestionarioAWS.CuestionarioAWS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicio 1 - Cuestionario AWS</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            box-sizing: inherit;
            min-height: 90vh;
            min-width: 100vw;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
        }

        input {
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #1836df;
            color: white;
            margin-top: 20px;
        }

        input:hover {
            cursor: pointer;
            background-color: #0f1f8d;
        }

        input:disabled {
            background-color: #a0a0a0;
        }
    </style>
</head>
<body>
    <div style="max-width: 600px;">
        <h1 style="text-align: center;">¿Qué tanto conoces de AWS?</h1>
        <p style="text-align: center;">
            Pon a prueba tus conocimientos sobre AWS y descubre si eres un experto en la nube,
            para esto solo debes responder las siguientes preguntas.
        </p>
        <form runat="server">
            <asp:Label ID="LblMensaje" runat="server" Visible="false" style="color: white; border-radius: 5px; font-weight: bold; text-align: center; padding: 20px; background-color: crimson; display: block;">Para finalizar el formulario debe responder todas las preguntas.</asp:Label>
            <asp:MultiView ID="MvAWSCuestionario" runat="server" ActiveViewIndex="0">
                <asp:View ID="VPregunta1" runat="server">
                    <h2>1. ¿Qué significa AWS y cuál es su función principal?</h2>
                    <asp:RadioButtonList ID="RBLPregunta1" runat="server">
                        <asp:ListItem Value="a">a) Amazon Web Services; ofrecer servicios de almacenamiento en la nube</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon Web Services; ofrecer servicios de streaming de video</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon Web Services; ofrecer servicios de mensajería instantánea</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon Web Services; ofrecer servicios de música en línea</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta2" runat="server">
                    <h2>2. ¿Cuál es el servicio de almacenamiento de archivos de AWS?</h2>
                    <asp:RadioButtonList ID="RBLPregunta2" runat="server">
                        <asp:ListItem Value="a">a) Amazon RDS</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon EBS</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon EC2</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon S3</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta3" runat="server">
                    <h2>3. ¿Qué es Amazon EC2 y para qué se utiliza?</h2>
                    <asp:RadioButtonList ID="RBLPregunta3" runat="server">
                        <asp:ListItem Value="a">a) Es un servicio de almacenamiento en la nube y se utiliza para almacenar archivos</asp:ListItem>
                        <asp:ListItem Value="b">b) Es un servicio de bases de datos y se utiliza para almacenar información</asp:ListItem>
                        <asp:ListItem Value="c">c) Es un servicio de cómputo en la nube y se utiliza para ejecutar aplicaciones</asp:ListItem>
                        <asp:ListItem Value="d">d) Es un servicio de redes y se utiliza para conectar dispositivos</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta4" runat="server">
                    <h2>4. ¿Qué es Amazon S3 y cómo se diferencia de Amazon EBS?</h2>
                    <asp:RadioButtonList ID="RBLPregunta4" runat="server">
                        <asp:ListItem Value="a">a) Amazon S3 es un servicio de cómputo en la nube mientras que Amazon EBS es un servicio de almacenamiento en la nube</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon S3 es un servicio de almacenamiento en la nube mientras que Amazon EBS es un servicio de bases de datos en la nube</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon S3 es un servicio de almacenamiento en la nube para archivos estáticos mientras que Amazon EBS es un servicio de almacenamiento en la nube para archivos dinámicos</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon S3 es un servicio de almacenamiento en la nube para archivos grandes mientras que Amazon EBS es un servicio de almacenamiento en la nube para archivos pequeños</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta5" runat="server">
                    <h2>5. ¿Cuál es la función de Amazon RDS y cuál es su principal ventaja?</h2>
                    <asp:RadioButtonList ID="RBLPregunta5" runat="server">
                        <asp:ListItem Value="a">a) Ofrece servicios de almacenamiento en la nube y su principal ventaja es la seguridad</asp:ListItem>
                        <asp:ListItem Value="b">b) Ofrece servicios de redes y su principal ventaja es la velocidad</asp:ListItem>
                        <asp:ListItem Value="c">c) Ofrece servicios de bases de datos en la nube y su principal ventaja es la escalabilidad y facilidad de uso</asp:ListItem>
                        <asp:ListItem Value="d">d) Ofrece servicios de cómputo en la nube y su principal ventaja es la flexibilidad</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VResumen" runat="server">
                    <h2>Resultados del exámen</h2>
                    <p>Puntuación: <asp:Label ID="LblPuntuacion" runat="server" Text="5/5" /></p>
                    <p>Mensaje: <asp:Label ID="LblMensajeFInal" runat="server" Text="..." /></p>
                    <div>
                        <h3>1. ¿Qué significa AWS y cuál es su función principal?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta1" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta1Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>2. ¿Cuál es el servicio de almacenamiento de archivos de AWS?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta2" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta2Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>3. ¿Qué es Amazon EC2 y para qué se utiliza?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta3" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta3Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>4. ¿Qué es Amazon S3 y cómo se diferencia de Amazon EBS?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta4" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta4Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>5. ¿Cuál es la función de Amazon RDS y cuál es su principal ventaja?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta5" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta5Etiqueta" Text="Correcto" />
                    </div>
                </asp:View>
            </asp:MultiView>
            <div>
                <asp:Button runat="server" Enabled="false" Text="Pregunta anterior" ID="BtnAnteriorPregunta" OnClick="BtnAnteriorPregunta_Click" />
                <asp:Button runat="server" Text="Siguiente pregunta" ID="BtnSiguientePregunta" OnClick="BtnSiguientePregunta_Click" />
                <asp:Button runat="server" Text="Finalizar cuestionario" ID="BtnFinalizar" OnClick="BtnFinalizar_Click" />
                <asp:Button runat="server" Visible="false" Text="Repetir cuestionario" ID="BntRepetir" OnClick="BntRepetir_Click" />            
            </div>
        </form>
    </div>
</body>
</html>

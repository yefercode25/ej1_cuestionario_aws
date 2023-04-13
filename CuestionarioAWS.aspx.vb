Public Class CuestionarioAWS
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnAnteriorPregunta_Click(sender As Object, e As EventArgs)
        If MvAWSCuestionario.ActiveViewIndex > 0 Then
            MvAWSCuestionario.ActiveViewIndex -= 1
        End If

        If MvAWSCuestionario.ActiveViewIndex = 0 Then
            BtnAnteriorPregunta.Enabled = False
        End If

        If MvAWSCuestionario.ActiveViewIndex < 4 Then
            BtnSiguientePregunta.Enabled = True
        End If
    End Sub

    Protected Sub BtnSiguientePregunta_Click(sender As Object, e As EventArgs)
        If MvAWSCuestionario.ActiveViewIndex >= 0 Then
            BtnAnteriorPregunta.Enabled = True
        End If

        If MvAWSCuestionario.ActiveViewIndex < 4 Then
            MvAWSCuestionario.ActiveViewIndex += 1
        End If

        If MvAWSCuestionario.ActiveViewIndex = 4 Then
            BtnSiguientePregunta.Enabled = False
        End If
    End Sub

    Protected Sub BtnFinalizar_Click(sender As Object, e As EventArgs)
        If String.IsNullOrEmpty(RBLPregunta1.SelectedValue) Or String.IsNullOrEmpty(RBLPregunta2.SelectedValue) Or String.IsNullOrEmpty(RBLPregunta3.SelectedValue) Or String.IsNullOrEmpty(RBLPregunta4.SelectedValue) Or String.IsNullOrEmpty(RBLPregunta5.SelectedValue) Then
            LblMensaje.Visible = True
        Else
            Dim puntuacion As Integer = 0

            MvAWSCuestionario.ActiveViewIndex = 5
            LblMensaje.Visible = False
            BtnAnteriorPregunta.Visible = False
            BtnSiguientePregunta.Visible = False
            BtnFinalizar.Visible = False

            Dim Pregunta1Item As ListItem = RBLPregunta1.SelectedItem
            Dim Pregunta2Item As ListItem = RBLPregunta2.SelectedItem
            Dim Pregunta3Item As ListItem = RBLPregunta3.SelectedItem
            Dim Pregunta4Item As ListItem = RBLPregunta4.SelectedItem
            Dim Pregunta5Item As ListItem = RBLPregunta5.SelectedItem

            LblRespuesta1.Text = Pregunta1Item.Text
            LblRespuesta2.Text = Pregunta2Item.Text
            LblRespuesta3.Text = Pregunta3Item.Text
            LblRespuesta4.Text = Pregunta4Item.Text
            LblRespuesta5.Text = Pregunta5Item.Text

            If Pregunta1Item.Value = "a" Then
                puntuacion += 1
                LblRespuesta1Etiqueta.Text = "Has respondido correctamente"
            Else
                LblRespuesta1Etiqueta.Text = "Has respondido incorrectamente"
            End If

            If Pregunta2Item.Value = "c" Then
                puntuacion += 1
                LblRespuesta2Etiqueta.Text = "Has respondido correctamente"
            Else
                LblRespuesta2Etiqueta.Text = "Has respondido incorrectamente"
            End If

            If Pregunta3Item.Value = "c" Then
                puntuacion += 1
                LblRespuesta3Etiqueta.Text = "Has respondido correctamente"
            Else
                LblRespuesta3Etiqueta.Text = "Has respondido incorrectamente"
            End If

            If Pregunta4Item.Value = "a" Then
                puntuacion += 1
                LblRespuesta4Etiqueta.Text = "Has respondido correctamente"
            Else
                LblRespuesta4Etiqueta.Text = "Has respondido incorrectamente"
            End If

            If Pregunta5Item.Value = "c" Then
                puntuacion += 1
                LblRespuesta5Etiqueta.Text = "Has respondido correctamente"
            Else
                LblRespuesta5Etiqueta.Text = "Has respondido incorrectamente"
            End If

            LblPuntuacion.Text = puntuacion.ToString() + "/5"
            If puntuacion >= 3 Then
                LblMensajeFInal.Text = "Felicitaciones, has aprobado el cuestionario"
                BntRepetir.Visible = False
            Else
                LblMensajeFInal.Text = "Lo sentimos pero has reprobado el cuestionario, debes repetirlo"
                BntRepetir.Visible = True
            End If
        End If
    End Sub

    Protected Sub BntRepetir_Click(sender As Object, e As EventArgs)
        MvAWSCuestionario.ActiveViewIndex = 0
        BtnAnteriorPregunta.Visible = True
        BtnSiguientePregunta.Visible = True
        BtnFinalizar.Visible = True
        BtnAnteriorPregunta.Enabled = False
        BtnSiguientePregunta.Enabled = True
        BntRepetir.Visible = False
        RBLPregunta1.ClearSelection()
        RBLPregunta2.ClearSelection()
        RBLPregunta3.ClearSelection()
        RBLPregunta4.ClearSelection()
        RBLPregunta5.ClearSelection()
    End Sub
End Class
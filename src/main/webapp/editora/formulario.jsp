<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Livraria Virtual</title>
</head>

<body>
<div align="center">
    <h1>Gerenciamento de Editoras</h1>
    <h2>
        <a href="lista">Lista de Editoras</a>
    </h2>
</div>
<div align="center">
    <c:choose>
    <c:when test="${editora != null}">
    <form action="atualizacao" method="post">
        <input type="hidden" name="id" value="${editora.id}" />
        </c:when>
        <c:otherwise>
        <form action="insercao" method="post">
            </c:otherwise>
            </c:choose>

            <table border="1">
                <caption>
                    <c:choose>
                        <c:when test="${editora != null}">
                            Edição
                        </c:when>
                        <c:otherwise>
                            Cadastro
                        </c:otherwise>
                    </c:choose>
                </caption>

                <tr>
                    <td><label for="cnpj">CNPJ</label></td>
                    <td><input type="text" id="cnpj" name="cnpj" required
                               value="${editora.cnpj}" /></td>
                </tr>

                <tr>
                    <td><label for="nome">Nome</label></td>
                    <td><input type="text" id="nome" name="nome" required
                               value="${editora.nome}" /></td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Salvar" />
                    </td>
                </tr>
            </table>

        </form>
</div>
</body>
</html>
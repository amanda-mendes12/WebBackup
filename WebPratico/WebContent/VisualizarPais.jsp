<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Visualizar Pais</title>
		
		<link href="CSS/bootstrap.min.css" rel="stylesheet">
		<link href="CSS/style.css" rel="stylesheet">
	</head>
	
	<body>
		<!-- Modal -->
        <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                        	<span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="modalLabel">Excluir Cliente</h4>
                    </div>
                    <div class="modal-body">
                        Deseja realmente excluir este cliente?
                    </div>
                    <div class="modal-footer">
                        <form action="Controller.do" method="post">
                            <input type="hidden" name="id" value="${cliente.id }" />
                            <button type="submit" class="btn btn-primary" name="command" value="ExcluirPais">Sim</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal -->
		<!-- Barra superior com os menus de navegacao -->
		<c:import url="Menu.jsp"/>
		
		<!-- Container Principal -->
		<div id="main" class="container">
        	<h3 class="page-header">Visualizar Pais #${pais.id}</h3>
			
			<div class="row">
				<div class="col-md-12">
					<p><strong>Nome</strong></p>
					<p>${pais.nome}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<p><strong>Populacao</strong></p>
					<p>${pais.populacao}</p>
				</div>
				<div class="col-md-6">
					<p><strong>Área</strong></p>
					<p>${pais.area}</p>
				</div>
			</div>
			
			<hr/>
			
			<div id="actions" class="row">
				<div class="col-md-12">
					<a href="Controller.do?command=EditarPais&id=${pais.id}" class="btn btn-primary">Editar</a>
					<a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delet-modal">Excluir</a>
					<a href="ListarPaises.jsp" class="btn btn-dafault">Voltar</a>
				</div>
			</div>
		</div>
		
		<script src="JS/jquery.min.js"></script>
   		<script src="JS/bootstrap.min.js"></script>
	</body>
</html>
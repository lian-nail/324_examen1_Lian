<h1 class="nombre-pagina">Agregar Usuario</h1>

<?php 
    include_once __DIR__ . '/../templates/barra.php' ;
    include_once __DIR__ . '/../templates/alertas.php';  
?>

<form method="POST" class="formulario" action="/admin/agregarUs">
    <?php include_once __DIR__ . '/formulario.php'; ?>

    <input type="submit" class="boton" value="Guadar Cambios">
</form>
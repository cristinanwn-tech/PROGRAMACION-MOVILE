<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscripción Torneo de Ajedrez</title>
</head>
<body>

    <h1>FORMULARIOS</h1>
    <h2>Inscripción al Torneo de Ajedrez</h2>

    <form action="#" method="POST">
        
        <label for="nombre">Nombre Completo:</label>
        <input type="text" id="nombre" name="nombre" placeholder="Nombre del usuario" required>
        
        <label for="edad">Edad:</label>
        <input type="number" id="edad" name="edad" min="5" max="100" placeholder="Ej. 25" required>
        
        <label for="email">Correo Electrónico:</label>
        <input type="email" id="email" name="email" placeholder="correo@ejemplo.com" required>

        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" name="telefono" pattern="[0-9]{9}" placeholder="987654321" required>

        <br><br>

        <label for="fecha">Fecha Nacimiento:</label>
        <input type="date" id="fecha" name="fecha" required>

        <label for="comprobante">Comprobante (DNI/Pago):</label>
        <input type="file" id="comprobante" name="comprobante" accept=".pdf,.png,.jpg" required>

        <br><br>

        <label for="categoria">Categoría:</label>
        <select id="categoria" name="categoria" required>
            <option value="">-- Seleccionar --</option>
            <option value="sub12">Sub-12</option>
            <option value="sub18">Sub-18</option>
            <option value="libre">Libre</option>
            <option value="senior">Sénior</option>
        </select>

    

       

        <label for="presencial">Presencial:</label>
<input type="radio" id="presencial" name="modalidad" value="presencial" checked required>

<label for="virtual">Virtual:</label>
<input type="radio" id="virtual" name="modalidad" value="virtual" required>
     
        <br><br>

        
    
        <input type="submit" value="Enviar">

    </form>

</body>
</html>
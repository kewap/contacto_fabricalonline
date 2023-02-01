<?php 
include('config.php');
date_default_timezone_set('America/Santiago');
$fecha = date("Y-m-d H:i:s");
switch($_POST['opcion'])
{
    case 1:
        $inputNombreApellido = $_POST['inputNombreApellido'];
        $inputDescripcion = $_POST['inputDescripcion'];
        $inputOpcionContacto = $_POST['inputOpcionContacto'];
        $inputContacto = $_POST['inputContacto'];

        if (empty($_FILES["inputArchivo"]["name"])) {
            $sql = "INSERT INTO tbl_form_1 (nombre, descripcion, archivo, contacto_opcion, contacto_valor, fecha)
            VALUES ('$inputNombreApellido', '$inputDescripcion', 'none', '$inputOpcionContacto', '$inputContacto', '$fecha')";

            if (mysqli_query($conn, $sql)) {
                echo "New record created successfully";

                $message = "Nombre:".$inputNombreApellido."\r\nDescripcion".$inputDescripcion."\r\n¿como quieres que te contactemos?:".$inputOpcionContacto."\r\n<a href='www.google.cl' target='_blank'>archivo</a>";

                //$message = "Line 1\r\nLine 2\r\nLine 3";
                $message = wordwrap($message, 70, "\r\n");
                mail('omarclaudev@gmail.com', 'My Subject', $message);



            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            mysqli_close($conn);

        } else {
            $target_dir = "../storage/";
            $target_name = time()."_".basename($_FILES["inputArchivo"]["name"]);
            $target_file = $target_dir.$target_name;
            $ubicacion_archivo = "storage/".$target_name;
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
            
            if (move_uploaded_file($_FILES["inputArchivo"]["tmp_name"], $target_file)) {
            //    echo "The file ". htmlspecialchars( basename( $_FILES["inputArchivo"]["name"])). " has been uploaded.<br>";
            //    echo $target_file;
            //    echo "<br>";
            //    echo $ubicacion_archivo;
                $sql = "INSERT INTO tbl_form_1 (nombre, descripcion, archivo, contacto_opcion, contacto_valor, fecha)
                VALUES ('$inputNombreApellido', '$inputDescripcion', '$ubicacion_archivo', '$inputOpcionContacto', '$inputContacto', '$fecha')";

                if (mysqli_query($conn, $sql)) {
                    echo "New record created successfully";
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                }
                mysqli_close($conn);

            } else {
                echo "Sorry, there was an error uploading your file.<br>";
            }
        }

    break;

    case 2:
        $inputNombreApellido = $_POST['inputNombreApellido'];
        $inputDescripcion = $_POST['inputDescripcion'];
        //$inputArchivo = $_POST['inputArchivo'];
        $inputOpcionContacto = $_POST['inputOpcionContacto'];
        $inputContacto = $_POST['inputContacto'];

        $sql = "INSERT INTO tbl_form_2 (nombre, descripcion, archivo, contacto_opcion, contacto_valor, fecha)
        VALUES ('$inputNombreApellido', '$inputDescripcion', '0', '$inputOpcionContacto', '$inputContacto', '$fecha')";

        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        mysqli_close($conn);
    break;

    case 3:
        $inputNombreApellido = $_POST['inputNombreApellido'];
        //echo $inputArchivo = $_POST['inputArchivo'];
        $inputMaterial = $_POST['inputMaterial'];
        $inputRelleno = $_POST['inputRelleno'];
        $inputDescripcion = $_POST['inputDescripcion'];
        $inputOpcionContacto = $_POST['inputOpcionContacto'];
        $inputContacto = $_POST['inputContacto'];

        $sql = "INSERT INTO tbl_form_3 (nombre, archivo, material, relleno, descripcion, contacto_opcion, contacto_valor, fecha)
        VALUES ('$inputNombreApellido', '0', '$inputMaterial', '$inputRelleno', '$inputDescripcion', '$inputOpcionContacto', '$inputContacto', '$fecha')";

        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }

        mysqli_close($conn);
    break;
}

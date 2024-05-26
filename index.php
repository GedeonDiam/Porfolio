<?php
require_once 'config/config.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./src/public/styles/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <title></title>
</head>

<body>
    <div>
        <?php include("./src/includes/header.php"); ?>
    </div>

    <div>

        <?php
        //$page = isset($_GET['page']) ? $_GET['page'] : 'accueil';
        $page = isset($_GET['page']);
        if ($page) {
            $page = $_GET['page'];
        } else {
            $page = 'accueil';
        }

        switch ($page) {
            case 'accueil':
                include("./views/accueil.php");
                break;
            case 'projet':
                include("./views/projets.php");
                break;
            case 'bts':
                include("./views/bts.php");
                break;
            case 'propos':
                include("./views/propos.php");
                break;
            case 'contact':
                include("./views/contact.php");
                break;
            case 'cv':
                include("./views/cv.php");
                break;
            case 'epreuve':
                include("./views/epreuve.php");
                break;
            case 'ecole':
                include("./views/ecole.php");
                break;
            case 'stages':
                include("./views/stages.php");
                break;
            case 'veille':
                include("./views/veille.php");
                break;
            default:
                include("./views/error.php");
                break;
        }

        ?>
    </div>

    <div>
        <?php include("./src/includes/footer.php"); ?>
    </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
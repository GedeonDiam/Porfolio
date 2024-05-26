<?php
    $projets = $unController->getProjets();
?>
<div class="text-center">
    <div class="container pb-5" style="background-color: #7F82BB">
    <h1 class="mt-5" style=" font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Mes Projets</h1>
    <div class="container mt-5">
        <p>Vous y retrouverez l'ensemble de mes projets que j'ai pu réaliser depuis le debut de ma formation.</p>
    </div><br>
    <a href="index.php?page=propos"><button type="button" class="btn btn-outline-info">Mes Compétences</button></a>
    </div>
    <hr><br><br>

    <h2 style=" font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">Découvrez mes projets de deuxième année</h2>

    <div class="container mt-5">
        <div class="row">
            <?php foreach ($projets as $projet) { 
            echo '
            <div class="col-4">
                <div class="card card-custom mb-4" style="width: 20rem; border-radius:10px">
                    <img src="'.$projet['image_projet'].'" style="border-radius:10px ; width: auto">
                    <div class="card-body"
                        style="background-color: #0F0F0F; margin-top: 100px;  border-bottom-left-radius:10px;  border-bottom-right-radius:10px">
                        <h5 class="card-title" style="color:#419BCD">'.$projet["nom"].'</h5>
                        <p class="card-text" style="font-size: small; color:azure">'.$projet["description"].'</p>
                        <a href="'.$projet['lien_github'].'" class="code btn btn-outline-info "><span>Voir
                                le code</span></a>
                    </div>
                </div>
            </div>';
            }
            ?>
        </div>

    </div>
</div>
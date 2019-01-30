<h1> Voici quelques traces de la conception du site.</h1> <!--Les statistiques ne marchent pas-->
<p>Le diagramme Entité/Association
<a href="img/DiagrammeEA.png"> <img src="img/DiagrammeEA_miniature.png" title="Cliquez pour agrandir"/></a>
</p>
<p>Une image du site à ses débuts
<a href="img/LeSiteAuDebut.png"> <img src="img/LeSiteAuDebut_miniature.png" title="Cliquez pour agrandir"/></a>
</p>
<p>Le logo, avant qu'on le rende transparent
<a href="img/logo.png"> <img src="img/logo_miniature.png" title="Cliquez pour agrandir"/></a>
</p>
<h2><p>Quelques statistiques sur la base de donnée du site </h2>
<?php 
session_start();
$sql_count = mysqli_query($connexion,'SELECT COUNT(titre) AS nb_nombre FROM recette') or exit(mysql_error());
$donnee = mysqli_fetch_array($sql_count);
$nb_nombre = $donnee['nb_nombre'];

$sql_count2 = mysqli_query($connexion,'SELECT COUNT(NomIngredient) AS nb_nombre2 FROM ingredient') or exit(mysql_error());
$donnee2 = mysqli_fetch_array($sql_count2);
$nb_nombre2 = $donnee2['nb_nombre2'];

$sql_count3 = mysqli_query($connexion,'SELECT COUNT(email) AS nb_nombre3 FROM utilisatrice') or exit(mysql_error());
$donnee3 = mysqli_fetch_array($sql_count3);
$nb_nombre3 = $donnee3['nb_nombre3'];
 

/*$ingredients_produits=mysqli_query($connexion, 'SELECT COUNT (nomIngredient) FROM ingredient' + 'SELECT COUNT
						(nomProduit) FROM produit');*/
/*$utilisateurs=mysqli_query($connexion, 'SELECT COUNT (email) FROM utilisatrice');*/

if(file_exists('compteur_visites.txt'))
{
        $compteur_f = fopen('compteur_visites.txt', 'r+');
        $compte = fgets($compteur_f);
}
else
{
        $compteur_f = fopen('compteur_visites.txt', 'a+');
        $compte = 0;
}
if(!isset($_SESSION['compteur_de_visite']))
{
        $_SESSION['compteur_de_visite'] = 'visite';
        $compte++;
        fseek($compteur_f, 0);
        fputs($compteur_f, $compte);
}
fclose($compteur_f);	

echo "<p>Nombre total de recettes sur le site : ".$nb_nombre."</p>";
echo "<p>Nombre total de produits/ingrédients sur le site : ".$nb_nombre2."</p>";
echo "<p>Nombre total d'utilisateurs du site : ".$nb_nombre3."</p>";
echo '<strong>'.$compte.'</strong> visites sur le site.';
?>
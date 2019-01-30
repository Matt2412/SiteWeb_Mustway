<h1> Cherchez un sandwich qui vous correspond !</h1><!-- Ca affiche la liste, mais on n'a pas reussi a afficher les etapes-->
<p>Tu en as marre de manger des pâtes tous les soirs ?
Tu aimerais te changer les idées avec un delicieux
sandwich ?
Alors tu es sur le bon site ! </p>
<p>Mustway te propose une sélection de sandwichs de qualité,
conçue par nos spécialistes en la matière !
Alors n'hésite plus, clique ici !</p>

<h1>Liste des recettes</h1>

<?php
// création d'une variable contenant une requête SQL
$requete = 'SELECT * FROM recette ;';
// envoi de la requete au SGBD
$resultat = mysqli_query($connexion, $requete);

if($resultat == FALSE) {
	printf("<p style='font-color: red;'>Erreur : problème d'exécution de la requête.</p>");
}
else {
	if(mysqli_num_rows($resultat) == 0) { // aucun résultat
		echo "<p>Il n'y a aucune recette dans la base.</p>";
	}
	else { // au moins un résultat
		echo "<p><table style='width:100%' id='table' ><tr><td id='td'>Titre</td><td id='td'>Catégorie</td><td id='td'>Description</td><td id='td'>Nombre de personnes</td><td id='td'>Date de proposition</td><td id='td'>Utilisatrice</td><td id='td'>Etapes</td></tr>" ;
		while ($row = mysqli_fetch_assoc($resultat)) { // boucle sur chaque n-uplet
			echo "<tr><td id='td'>".$row['titre']."</td><td id='td'>".$row['categorieRecette']."</td><td id='td'>".$row['descriptionRecette']."</td><td id='td'>".$row['nbPers']."</td><td id='td'>".$row['DateProposition']."</td><td id='td'>".$row['email']."</td></tr>";
			
		}
		echo "</table></p>";
	}
}
?>


<h1>Liste des ingrédients</h1>
<?php
// création d'une variable contenant une requête SQL
$requete = 'SELECT * FROM Ingredient;';
// envoi de la requete au SGBD
$resultat = mysqli_query($connexion, $requete);
if($resultat == FALSE) {
	printf("<p style='font-color: red;'>Erreur : problème d'exécution de la requête.</p>");
}
else {
	if(mysqli_num_rows($resultat) == 0) { // aucun résultat
		echo "<p>Il n'y a aucun ingrédient dans la base.</p>";
	}
	else { // au moins un résultat
		echo "<p><table style='width:100%' id='table' ><tr><td id='td'>Nom de l'ingrédient</td><td id='td'>Catégorie</td></tr>" ;
		while ($row = mysqli_fetch_assoc($resultat)) { // boucle sur chaque n-uplet
			echo "<tr><td id='td'>".$row['NomIngredient']."</td><td id='td'>".$row['CategorieIngredient']."</td></tr>";
		}
		echo "</table></p>";
	}
}
?>

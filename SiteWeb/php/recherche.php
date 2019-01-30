<h1>Recherche dans la base</h1><!-- supprimer -->
<?php
$formulaireValide = FALSE;
if(isset($_POST['bRechercher'])) {
	if(isset($_POST['valeur']) && trim($_POST['valeur']) != '' && isset($_POST['champRech'])) {
		$valeur = mysqli_real_escape_string($connexion,$_POST['valeur']);
		$table	= mysqli_real_escape_string($connexion,$_POST['champRech']);

		// construction de la requete
		if($_POST['champRech'] == 'Ingredient') {
			$requete = 'SELECT * FROM '.$table.' WHERE NomIngredient LIKE \'%'.$valeur.'%\'';
			$formulaireValide = TRUE;
		}
		else if($_POST['champRech'] == 'Categorie') {
			$requete = 'SELECT * FROM '.$table.' WHERE CategorieIngredient LIKE \'%'.$valeur.'%\'';
			$formulaireValide = TRUE;
		}

		if($formulaireValide) {
			//envoi de la requete
			$resultat = mysqli_query($connexion, $requete);
			if($resultat == FALSE || mysqli_num_rows($resultat) == 0) {
				echo '<p>Aucun résultat pour '.$valeur.' !</p>';
			}
			else {
				// affichage des résultats (utilisation de mysqli_field_count pour connaitre le nombre de champs du résultat)
				echo '<p>Résultat(s) de la recherche pour : '.$valeur.'</p>';
				$nbChamps = mysqli_field_count($connexion);
				while ($row = mysqli_fetch_array($resultat, MYSQLI_NUM)) {
					for($i=0; $i<$nbChamps; $i++)
						echo $row[$i].' ';
					echo '<br/>';
				}
			}
		}
	}
}
if(!$formulaireValide) {
?>
	<fieldset style="border:solid 1px black; padding:20px; width:60%;">
	<!-- <legend style="font-size:11; font-weight:bold;"> Recherche </legend> -->
		<form name="formRecherche" method="post" action="index.php?page=recherche.php">
		<table width="100%">
		<tr>
			<td><label style="font-weight:bold" for="idChamp">Rechercher dans</label></td>
			<td>
			<select name="champRech" id="idChamp">
				<option value="NomIngredient">Nom de l'ingrédient</option>
				<option value="CategorieIngredient">Catégorie de l'ingrédient</option>
			</select>
			</td>
			<td><label style="font-weight:bold" for="idValeur">la valeur</label></td>
			<td><input type="text" name="valeur" id="idValeur" /></td>
		</tr>
		<tr style="text-align:center;">
			<td colspan=2><br/><br/><input type="submit" style="font-variant: small-caps;" name="bRechercher" value="Rechercher"></td>
		</tr></table>
		</form>
	</fieldset>
<?php
}
?>


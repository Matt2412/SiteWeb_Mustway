<h1>Ajout d'un ingrédient</h1>
<p>
Complétez le formulaire suivant pour ajouter un ingrédient.
<br></p>
<?php
$formulaireValide = FALSE;
if(isset($_POST['bValider'])) {
	if(isset($_POST['NomIngredient']) && trim($_POST['NomIngredient']) != '') {//"trim" supprime les espaces
		$NomIngredient = mysqli_real_escape_string($connexion, $_POST['NomIngredient']);		
		// requete select activite
		$resultat = mysqli_query($connexion, 'SELECT NomIngredient FROM Ingredient WHERE NomIngredient=\''.$NomIngredient.'\';');
		if($resultat == TRUE && mysqli_num_rows($resultat) != 0) {
			echo '<p>Cet ingrédient existe déja dans la base !</p>';
		}
		else {
			// requete insertion
			$CategorieIngredient = mysqli_real_escape_string($connexion, $_POST['CategorieIngredient']);
			$requete = 'INSERT INTO Ingredient VALUES(\'' .$NomIngredient. '\' ,\''.$CategorieIngredient.'\', NULL );';
			$resInsert = mysqli_query($connexion, $requete);
			if($resInsert == FALSE) {
			    echo '<p>Erreur lors de l\'insertion de l\'ingrédient !</p>';
			    exit();
			}
			echo "<p>Confirmation de l'ajout de l'ingrédient : ".$NomIngredient."</p>";
			$formulaireValide = TRUE;
		}
	}
}
if(!$formulaireValide) {
?>
	<fieldset style="border:solid 1px black; padding:20px; width:40%;">
	<legend style="font-size:11; font-weight:bold;"> Ajout ingrédient </legend>
		<form name="ajoutIngredient" method="post" action="index.php?page=ajout_ingredient.php">
		<table width="100%">
		<tr>
			<td><label style="font-weight:bold" for="IdNomIngredient">Nom de l'ingrédient : </label></td>
			<td><input type="text" name="NomIngredient" id="IdNomIngredient" required/></td> <!--name:nom ingrédient entré-->
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdCategorieIngredient">Catégorie de l'ingrédient : </label></td>
			<td><select id="choix_categorie" name="CategorieIngredient">
				<option VALUE="animal">animal</option>
				<option VALUE="cereale">céréale</option>
				<option VALUE="assaisonnement">épice</option>
				<option VALUE="liquide">liquide</option>
				<option VALUE="plante">plante</option>
				<option VALUE="ingBase">autre</option>
			</select>
		</tr>
		<tr style="text-align:center;">
			<td colspan=2><br/><br/><input type="submit" style="font-variant: small-caps;" name="bValider" value="Valider"></td>
		</tr></table>
		</form>
	</fieldset>
<?php
}
?>


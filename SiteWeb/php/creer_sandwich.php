<h1> Créez votre sandwich ! </h1> <!-- Ca marche -->
<p>Tu as visité tous les restaurants de la région pour 
chercher un repas qui te convenait, mais tu n'as rien
trouvé ? </p>
<p>Tu as passé plus de trois heures consécutives 
sur la liste des sandwichs de notre site en vain ? </p>
<p>Alors tu es sur la bonne page ! Ici, tu peux
créer ton propre sandwich, au gré de tes envies. 
Tu trouveras une myriade d'ingrédients et de 
produits à ta disposition, pour manger le meilleur 
plat de ta vie !</p>

<?php
$formulaireValide = FALSE;
if(isset($_POST['bValider'])) {	
	if(isset($_POST['titre']) && trim($_POST['titre']) != '') {//"trim" supprime les espaces
		$titre = mysqli_real_escape_string($connexion, $_POST['titre']);
		$resultat = mysqli_query($connexion, 'SELECT titre FROM recette WHERE titre=\''.$titre.'\';');
		if($resultat == TRUE && mysqli_num_rows($resultat) != 0) {
			echo '<p>Cette recette existe déja dans la base !</p>';
		}
		else {
			// requete insertion
			$CategorieRecette = mysqli_real_escape_string($connexion, $_POST['categorieRecette']);
			$DescriptionRecette = mysqli_real_escape_string($connexion , $_POST['descriptionRecette']);
			$nbPers = mysqli_real_escape_string($connexion , $_POST['nbPers']);
			$DateProposition = date("Y-m-d");
			$email = mysqli_real_escape_string($connexion , $_POST['email']);
			$requete = 'INSERT INTO recette VALUES(\''.$titre.'\' , \''.$CategorieRecette.'\' , \'' .$DescriptionRecette.'\' , \'' .$nbPers. '\' ,\'' .$DateProposition.'\' , \'' .$email. '\');';
			//echo "<br>".$requete."<br>";
			$resInsert = mysqli_query($connexion, $requete);
			if($resInsert == FALSE) {
			    echo '<p>Erreur lors de l\'insertion de la recette !</p>';
			    exit();
			}
			echo "<p>Confirmation de l'ajout de la recette * $titre * de notre fidèle utilisateur(trice)  $email <br/></p>";
			$formulaireValide = TRUE;
		}
	}
}
if(!$formulaireValide) {
?>
	<fieldset style="border:solid 1px black; padding:20px; width:40%;"><!--bordure du formulaire-->
	<legend style="font-size:11; font-weight:bold;"> Ajout recette</legend>
		<form name="ajoutrecette" method="post" action="index.php?page=creer_sandwich.php">
		<table width="100%">
		<tr>
			<td><label style="font-weight:bold" for="Idtitre">Nom de la recette : </label></td>
			<td><input type="text" name="titre" id="Idtitre" required/></td> <!--name:nom recette entré-->
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdCategorieRecette">Catégorie de la recette : </label></td>
			<td><select id="choix_categorie2" name="categorieRecette">
				<option VALUE="aperitif">aperitif</option>
				<option VALUE="boisson">boisson</option>
				<option VALUE="dessert">dessert</option>
				<option VALUE="plat">sandwich</option>
			</select>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdDescriptionRecette">Description de la recette : </label></td>
			<td><input type="text" name="descriptionRecette" id="IdDescriptionRecette" /></td> <!--name:nom recette entré-->
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdnbPers">Nombre de personnes : </label></td>
			<td><input type="text" name="nbPers" id="IdnbPers" required/></td> <!--name:nom recette entré-->
		</tr>
		
		<tr>
			<td><label style="font-weight:bold" for="Idemail">Votre email : </label></td>
			<td><input type="text" name="email" id="Idemail" required/></td> <!--name:nom recette entré-->
		</tr>
		
		<tr style="text-align:center;">
			<td colspan=2><br/><br/><input type="submit" style="font-variant: small-caps;" name="bValider" value="Valider"></td>
		</tr></table>
		</form>
	</fieldset>
<?php
}
?>
<h1> Ajouter vos étapes !</h1>
<p>Maintenant que tu as créé ta recette, il ne te reste plus qu'à faire ses étapes ! (sinon on va pas aller bien loin ...)
Nous t'invitons donc à cliquer ici pour partager tes connaissances culinaires en complétant ta recette !</p>
<a href="index.php?page=ajout_etape.php"> Ajouter des étapes </a>

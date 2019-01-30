<h1>Créez votre compte !</h1><!--Il y a un probleme avec les idLieu -->
<p>Pour créer un compte, il te suffit de remplir le formulaire ci-dessous, et tu
auras accès à notre immense communauté !</p>

<?php
$formulaireValide = FALSE;
if(isset($_POST['bValider'])) {	
	if(isset($_POST['email']) && trim($_POST['email']) != '') {//"trim" supprime les espaces
		$email = mysqli_real_escape_string($connexion, $_POST['email']);
		$resultat = mysqli_query($connexion, 'SELECT email FROM utilisatrice WHERE email=\''.$email.'\';');
		if($resultat == TRUE && mysqli_num_rows($resultat) != 0) {
			echo '<p>Vous n\'avez pas besoin de créer plusieurs comptes pour nous témoigner de votre fidélité.</p>';
		}
		else {
			// requete insertion
			$prenomUtilisatrice = mysqli_real_escape_string($connexion, $_POST['prenomUtilisatrice']);	
			$nomUtilisatrice = mysqli_real_escape_string($connexion, $_POST['nomUtilisatrice']);
			$DateNaissance = mysqli_real_escape_string($connexion, $_POST['DateNaissance']);
			$genre = mysqli_real_escape_string($connexion, $_POST['genre']);
			$DateInscription = date("Y-m-d"); 
			$ville = mysqli_real_escape_string($connexion, $_POST['ville']);
			$CodePostal = mysqli_real_escape_string($connexion, $_POST['CodePostal']);
			$Voie = mysqli_real_escape_string($connexion, $_POST['Voie']);
			$NumeroDeVoie = mysqli_real_escape_string($connexion, $_POST['NumeroDeVoie']);
			$PaysA = mysqli_real_escape_string($connexion, $_POST['PaysA']);
			
			$requete = 'INSERT INTO utilisatrice VALUES(\''.$prenomUtilisatrice.'\' , \''.$nomUtilisatrice.'\' , \'' .$DateNaissance.'\' , \'' .$genre. '\' ,\'' .$email.'\' , \'' .$DateInscription. '\' , DEFAULT);';
			$requete2 = 'INSERT INTO lieu VALUES(DEFAULT,NULL,NULL)';
			$requete3 = 'INSERT INTO adresse VALUES(\'' .$ville. '\' , \'' .$CodePostal. '\',\''.$Voie.'\',\''.$NumeroDeVoie.'\',\''.$PaysA.'\',DEFAULT)';
			$requete4 = 'INSERT INTO Zone_geographique VALUES (NULL,NULL,DEFAULT)';
			
			//echo "<br>".$requete."<br>";
			$resInsert = mysqli_query($connexion, $requete);
			$resInsert2 = mysqli_query($connexion, $requete2);
			$resInsert3 = mysqli_query($connexion, $requete3);
			$resInsert4 = mysqli_query($connexion, $requete4);
			
			if (($resInsert == FALSE)or($resInsert2 == FALSE)or($resInsert3 == FALSE)or($resInsert4 == FALSE)) {
			    echo '<p>Erreur lors de votre inscription !</p>';
			    exit();
			}
			echo "<p>Confirmation de l'inscription de notre nouvel(le) ami(e) ".$prenomUtilisatrice." </p>";
			$formulaireValide = TRUE;
		}
	}
}
if(!$formulaireValide) {
?>
	<fieldset style="border:solid 1px black; padding:20px; width:40%;">
	<legend style="font-size:11; font-weight:bold;">Inscription utilisatrice</legend>
		<form name="ajoututilisatrice" method="post" action="index.php?page=creer_compte.php">
		<table width="100%">
		<tr>
			<td><label style="font-weight:bold" for="IdprenomUtilisatrice">Votre prénom :</label></td>
			<td><input type="text" name="prenomUtilisatrice" id="IdprenomUtilisatrice" required/></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdnomUtilisatrice">Votre nom :</label></td>
			<td><input type="text" name="nomUtilisatrice" id="IdnomUtilisatrice" required/></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdDateNaissance">Votre date de naissance (au format AAAA-MM-JJ) :</label></td>
			<td><input type="text" name="DateNaissance" id="IdDateNaissance" required/></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="Idgenre">Votre genre : </label></td>
			<td><select id="choix_categorie3" name="genre">
				<option VALUE=0>Homme</option>
				<option VALUE=1>Femme</option>
			</select>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="Idemail">Votre email : </label></td>
			<td><input type="text" name="email" id="Idemail" /></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="Idville">Votre ville : </label></td>
			<td><input type="text" name="ville" id="Idville" /></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdCodePostal">Votre code postal : </label></td>
			<td><input type="text" name="CodePostal" id="IdCodePostal" /></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdVoie">L'intitulé de votre adresse : </label></td>
			<td><input type="text" name="Voie" id="IdVoie" /></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdNumeroDeVoie">Votre numéro de voie : </label></td>
			<td><input type="text" name="NumeroDeVoie" id="IdNumeroDeVoie" /></td>
		</tr>
		<tr>
			<td><label style="font-weight:bold" for="IdPaysA">Votre pays de résidence : </label></td>
			<td><input type="text" name="PaysA" id="IdPaysA" /></td>
		</tr>
		<tr style="text-align:center;">
			<td colspan=2><br/><br/><input type="submit" style="font-variant: small-caps;" name="bValider" value="Valider"></td>
		</tr></table>
		</form>
	</fieldset>
<?php
}
?>
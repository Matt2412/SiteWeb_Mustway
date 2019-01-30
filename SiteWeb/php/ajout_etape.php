<h1>Ajout d'une étape</h1> <!--La bd n'enregistre pas ce qu'entrent les utilisateurs. Par contre ca marche sur phpmyadmin-->
<p>
Complétez le formulaire suivant pour ajouter une étape
<br></p>
<?php
$formulaireValide = FALSE; 
if(isset($_POST['bValider'])) {
		$titre = mysqli_query($connexion, $_POST['titre']);
		$Instruction = mysqli_query($connexion, $_POST['Instruction']);		
		$Numero = mysqli_query($connexion, $_POST['Numero']);
		$requete1 = 'INSERT INTO etape VALUES(DEFAULT,\''.$Instruction.'\', \''.$Numero. '\' );' ;
		$requete2 = 'INSERT INTO elaborer VALUES (\'' .$titre.'\', DEFAULT);';
		$resInsert1 = mysqli_real_escape_string($connexion, $requete1);
		$resInsert2 = mysqli_real_escape_string($connexion, $requete2);
		if (($resInsert1 == FALSE) or($resInsert2 == FALSE)) {
			echo '<p>Erreur lors de l\'insertion de l\'etape !</p>';
			    exit();
			}
		echo "<p>Confirmation de l'ajout de l'étape ".$Numero."</p>";
		?><a href="index.php?page=ajout_etape.php"> Clique ici pour ajouter une nouvelle étape à ta recette </a><?php
		$formulaireValide = TRUE;
}
if(!$formulaireValide) {
?>
	<fieldset style="border:solid 1px black; padding:20px; width:40%;">
	<legend style="font-size:11; font-weight:bold;"> Ajout étape </legend>
		<form name="ajoutEtape" method="post" action="index.php?page=ajout_etape.php">
		<table width="100%">
		<tr>
			<td><label style="font-weight:bold" for="Idtitre">Nom de la recette </label></td>
			<td><input type="text" name="titre" id="Idtitre" required/></td>
		<tr>
		<tr>
			<td><label style="font-weight:bold" for="IdNumero">Etape numero : </label></td>
			<td><input type="text" name="Numero" id="IdNumero" required/></td>
		<tr>
			<td><label style="font-weight:bold" for="IdInstruction">Instructions de l'étape : </label></td>
			<td><input type="text" name="Instruction" id="IdInstruction" required/></td> 
		</tr>
		<tr style="text-align:center;">
			<td colspan=2><br/><br/><input type="submit" style="font-variant: small-caps;" name="bValider" value="Valider"></td>
		</tr></table>
		</form>
	</fieldset>
<?php
}
?>
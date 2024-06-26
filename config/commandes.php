<?php
    // fonction pour ajouter un produit a la base de données
    function ajouter($type_id,$modele, $desc, $taille, $prix, $image)
    {
        // verifie la connexion a la base
        if(require("connexion.php"))
        {
            // commande avec les differentes valeur a ajouter
            $req = $access->prepare("INSERT INTO produits (id_type, modele, description, id_taille, prix, image) VALUES (?,?,?,?,?,?)");

            // on execute la commande avec les variables a rentrer dans la commande
            $req -> execute(array($type_id,$modele, $desc, $taille, $prix, $image));

            $req -> closeCursor();
        }
    }
    
    // fonction qui renvoie tous les produits par date d'ajout decroissant
    function afficher()
    {
        if(require("connexion.php"))
        {
            $req = $access -> prepare("SELECT * FROM produits ORDER BY id DESC");

            $req -> execute();

            $data = $req -> fetchAll(PDO::FETCH_OBJ);

            return $data;
            
            $req -> closeCursor();
        }
    }

    // fonction qui affiche les produits selon le prix croissant
    function afficherprix()
    {
        if(require("connexion.php"))
        {
            $req = $access -> prepare("SELECT * FROM produits ORDER BY prix ");

            $req -> execute();

            $data = $req -> fetchAll(PDO::FETCH_OBJ);

            return $data;
            
            $req -> closeCursor();
        }
    }

    // fonction qui affiche les produits selon la taille
    function afficherTailleb($id)
    {
        if(require("connexion.php"))
        {
            $req = $access -> prepare("SELECT * FROM produits WHERE id_taille=$id ");

            $req -> execute();

            $data = $req -> fetchAll(PDO::FETCH_OBJ);

            return $data;
            
            $req -> closeCursor();
        }
    }

    // fonction qui affiche les produits selon une catégorie
    function afficherCategorie($id)
    {
        if(require("connexion.php"))
        {
            $req = $access -> prepare("SELECT * FROM produits WHERE id_type=$id ");

            $req -> execute();

            $data = $req -> fetchAll(PDO::FETCH_OBJ);

            return $data;
            
            $req -> closeCursor();
        }
    }

   // fonction qui renvoie toutes les commandes par date d'anciennete croissante
   function afficherCommande()
   {
       if(require("connexion.php"))
       {
           $req = $access -> prepare("SELECT * FROM commande ORDER BY date");

           $req -> execute();

           $data = $req -> fetchAll(PDO::FETCH_OBJ);

           return $data;
           
           $req -> closeCursor();
       }
   }

   function afficherCommandeId($id_user)
   {
        if(require("connexion.php"))
        {
            $req = $access -> prepare("SELECT * FROM commande WHERE id_compte = ?");

            $req -> execute(array($id_user));
 
            $data = $req -> fetchAll(PDO::FETCH_OBJ);
 
            return $data;
            
            $req -> closeCursor();
        }
   }

   // affiche l'image du produit de la commande
   function afficherImageCommande($id)
   {
       if(require("connexion.php"))
       {
           $req=$access->prepare("SELECT image FROM produits WHERE id=?");

           $req->execute(array($id));
           
           $data = $req->fetch();

           return $data['image'];

           $req->closeCursor();
       }
   }


    // fonction qui renvoie toutes les donnees d'un produit
    function afficherProduit($id)
    {
        if(require("connexion.php"))
        {
            // on affiche le produit selon son identifiant
            $req=$access->prepare("SELECT * FROM produits WHERE id=?");

            $req->execute(array($id));

            $data = $req->fetchAll(PDO::FETCH_OBJ);

            return $data;

            $req->closeCursor();
        }
    }

    // fonction qui renvoie le prix d'un produit
    function afficherPrixProduit($id)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT prix FROM produits WHERE id=?");

            $req->execute(array($id));
            
            $data = $req->fetch();

            return $data;

            $req->closeCursor();
        }
    }


    // fonction pour modifier un produit
    function modifier($modele, $desc, $taille, $prix, $image, $id)
    {
        if(require("connexion.php"))
        {
            // modification du produit
            $req = $access->prepare("UPDATE produits SET modele=?, description=?, taille=?, prix=?, image=? WHERE id=?");

            $req->execute(array($modele, $desc, $taille, $prix, $image, $id));

            $req->closeCursor();
        }
    }


    // fonction qui renvoie les types de vetements
    function afficherType()
    {
        if(require("connexion.php"))
        {
            // on affiche tous par ordre d'identifiant 
            $req = $access -> prepare("SELECT * FROM type_vetement ORDER BY type_vetement");

            $req -> execute();

            $data = $req -> fetchAll(PDO::FETCH_OBJ);

            return $data;
            
            $req -> closeCursor();
        }
    }

    // fonction pour enregistrer une commande
    function commander($quantite, $prix, $id_produit, $id_utilisateur)
    {
        if(require("connexion.php"))
        {
            $req = $access->prepare("INSERT INTO commande (quantite, prix, id_produit, id_compte) VALUES (?,?,?,?)");

            $req -> execute(array($quantite,$prix, $id_produit, $id_utilisateur));

            $req -> closeCursor();
        }
    }

    // fonction qui renvoie le nom
    function affichernom($id_utilisateur)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT nom FROM utilisateurs WHERE id=?");

            $req->execute(array($id_utilisateur));
            
            $data = $req->fetch();

            return $data['nom'];

            $req->closeCursor();
        }
    }


    // fonction qui renvoie l'addresse
    function afficherAdresse($id_utilisateur)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT adresse FROM compte WHERE id=?");

            $req->execute(array($id_utilisateur));
            
            $data = $req->fetch();

            return $data['adresse'];

            $req->closeCursor();
        }
    }

    // fonction qui renvoie le pseudo
    function afficherPseudo($id_utilisateur)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT nom FROM compte WHERE id=?");

            $req->execute(array($id_utilisateur));
            
            $data = $req->fetch();

            return $data['nom'];

            $req->closeCursor();
        }
    }

    //fonction pour afficher la taille avec son ID

    function afficherTaillebis($id)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT taille FROM taille WHERE id=?");

            $req->execute(array($id));
            
            $data = $req->fetch();

            return $data['taille'];

            $req->closeCursor();
        }
    }

    // fonction qui renvoie la taille
    function afficherTaille($id_produit)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT id_taille FROM produits WHERE id=?");

            $req->execute(array($id_produit));
            
            $data = $req->fetch();

            return $data['id_taille'];

            $req->closeCursor();
        }
    }


    // fonction qui renvoie le modele
    function afficherModele($id_produit)
    {
        if(require("connexion.php"))
        {
            $req=$access->prepare("SELECT modele FROM produits WHERE id=?");

            $req->execute(array($id_produit));
            
            $data = $req->fetch();

            return $data['modele'];

            $req->closeCursor();
        }
    }



    // verifie si on recoit une demande de suppression de produit
    if (isset($_GET['action']) && $_GET['action'] == 'supprimer') {
        $idProduit = $_GET['parametre'];
    
        if(require("connexion.php"))
        {
            
            // pour supprimer un produit selon son identifiant
            $req = $access -> prepare("DELETE FROM produits WHERE id=?");

            $req -> execute(array($idProduit));

            // retour sur la page de suppression de produit
            header('Location: ../admin/delete.php');
            
        }
    }


// verifie si on recoit une demande de suppression de commande
if (isset($_GET['action']) && $_GET['action'] == 'supprimercommande') {
    $idCommande = $_GET['parametre'];

    if (require("connexion.php")) {


        // pour supprimer une commande selon son identifiant
        $req = $access->prepare("DELETE FROM commande WHERE id=?");

        $req->execute(array($idCommande));

        // retour sur la page des commandes
        header('Location: ../admin/commandes.php');
    }
}


// verifie si on recoit une demande de suppression de commande
if (isset($_GET['action']) && $_GET['action'] == 'supprimercommandeuser') {
    $idCommande = $_GET['parametre'];

    if (require("connexion.php")) {

        // pour supprimer une commande selon son identifiant
        $req = $access->prepare("DELETE FROM commande WHERE id=?");

        $req->execute(array($idCommande));

        // retour sur la page de commande
        header('Location: ../members/landing.php');
    }
}

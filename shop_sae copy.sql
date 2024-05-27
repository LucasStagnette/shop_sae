--
-- Base de données : `shop_sae`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `quantite` int(11) NOT NULL,
  `prix` float NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_compte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `commande`
--

INSERT INTO `commande` (`id`, `date`, `quantite`, `prix`, `id_produit`, `id_compte`) VALUES
(4, '2024-05-25', 5, 45, 42, 8),
(6, '2024-05-27', 3, 129, 49, 3),
(7, '2024-05-27', 4, 920, 47, 3),
(8, '2024-05-27', 2, 26, 44, 3),
(9, '2024-05-27', 13, 637, 43, 3),
(10, '2024-05-27', 999999, 25000000, 52, 3),
(11, '2024-05-27', 1, 70, 51, 3);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `token` text NOT NULL,
  `date_inscription` date NOT NULL DEFAULT current_timestamp(),
  `id_type_compte` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `compte`
--

INSERT INTO `compte` (`id`, `nom`, `email`, `password`, `adresse`, `telephone`, `token`, `date_inscription`, `id_type_compte`) VALUES
(2, 'l', 'l@l.l', '$2y$12$wKbhuUwIttw70S.oswr3uO3.ERceN.jAGjqp2S229GsWeqTABJ1f.', 'qslmdkjfsdlfj', '', '2d1cf8a1e2f3e7de726e81ee36ba666c5024df7ec9a32ac78b080b666fa205df144e9c9c7d2c6754cfcba63e79f2330046141442b1e1aaea20b5732bd3341c28', '2024-05-21', 1),
(3, 'llll', 'lucasgrosliere@outlook.fr', '$2y$12$P4PaCcIDxz9BoH2GiUZDb.VfOdPZTAly2sj3iTi166crkMIyXbhTS', 'wslmdkjflsdkfj', '', 'b2f736bca91f701eedcf4857cddd9381e58154b3ba572880236286da86e288ee989041f493c45d3dcf1f2286b96793b9e3bc63fb3cb4fe5ac9eacb8b2d8a8748', '2024-05-21', 1),
(4, 'j', 'lkjdqsf@sqdflk.lj', '$2y$12$4Kaq/QPM1.zThmhHNgENzO.6DAhjxR4bmW4A9sMNHpN2Tfed0MY/G', '21 rlejr lijd', '', '826bff614d42a7fc6cac3b82821d9c1846ba3cb63a2f2c7500975a8ceffee83735a8fdf12595637fb9de05dd7d721696034e1747b0e1aad12c70a73df6dc4948', '2024-05-25', 1),
(5, '!ljsfli', 'lsfd@xn--sqdgrmijsqgloiju-eyb.mlij', '$2y$12$cmVqIlL0E1i0Z6TbizERBOvbMDrgbGhopaX.fN0.g7oqoPzdX8j0G', 'mwldjfg', '', '1947d56e849f06d287c4bb2f0c986f2352a83871007d3e2b0c481a428171bc0bf5c77575d89b9d01d773f58b095f98657c363c27a345aa7351789fbd61d92bed', '2024-05-25', 1),
(6, 'Ljufldijg', 'mqlsjfqqrg@qmfijqer.mij', '$2y$12$teAc7Tf9Mo53Qmqpo6xOE.qbVL.2HoYXZUP9jGz7GWBuQJOY0iVd.', 'lfjjgroij', '', 'f4570da6d83d18537e1165f563e2651f60aabc708d9a79bb7b5b73b2b061f18fe0bb153cf4ae28733f1286f2e02ac3223d1d25d3058208a2b7873b44efdcbad7', '2024-05-25', 1),
(7, 'MLiojszfoij', 'mosidjf@qmoijmoijk.l', '$2y$12$N7iDHcjMpF.m5hTaxYzsw.1Mg8SFmpBUSsIMEOgdXFdELbpv9.V1K', 'psfj', '', '916c44a25d71c6031970dda37a88e80a14ea9e00b03063c1da8f0c6fd4b72262e5ae845cacc2af9bd9f27b9aca6c6e91ceaa42e024716f851fc0f41491026371', '2024-05-25', 1),
(8, 'THeoooooooo', 't@t.t', '$2y$12$u8KmcLCZm.rviUUR/tboPOUdDn2q2PAJMNfgC7GCa/BxAeyP9tfdy', 'Niort', '', '9d304203dc838da9dfea7ea1aa1b32fdca41461d295f2288299520d5a638f3726ab1937bb0d8797b4bad0e3c0127eec0037185b5532f581b1dd91ebe8a268a56', '2024-05-25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `modele` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `id_taille` int(11) NOT NULL,
  `prix` float NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `produits`
--

INSERT INTO `produits` (`id`, `id_type`, `modele`, `description`, `id_taille`, `prix`, `image`) VALUES
(42, 1, 'tshirt unicolore', 'Couleur:	Blanc', 4, 9, 'http://pngimg.com/uploads/tshirt/tshirt_PNG5435.png'),
(43, 1, 'Pull Over neymar jr', 'Pull-over de loisirs Neymar Jr Creativity Logo ', 4, 49, 'https://www.pngall.com/wp-content/uploads/11/Pullover-PNG-Images-HD.png'),
(44, 5, 'Jogging', 'PANTALON DE JOGGING STAR HEATHER', 5, 13, 'https://www.crafters.fr/images/stories/virtuemart/product/hqtxadm/9705_5dc1adeb8aa89_HETAHER-GREY-FACE.png'),
(45, 4, 'Pantalon classique marron', 'Fermeture à glissière et à bouton', 5, 1500, 'https://www.zilli.com/8560-large_default/pantalon-classique-marron.jpg'),
(46, 4, 'Robe Bleuh', 'Robe Rouge à point blanc et jsp', 5, 39, 'https://robesapois.fr/wp-content/uploads/2020/09/HTB136uuXpuWBuNjSszbq6AS7FXaR_result-247x296.png'),
(47, 2, 'Sweatshirt White', 'Jacquemus Hooded Sweatshirt White', 4, 230, 'https://cdn.shopify.com/s/files/1/2358/2817/products/nike-jacquemus-hoodie.png'),
(48, 4, 'Robe Ralph Lauren', 'Ralph Lauren Corporation, En Mousseline De Soie', 3, 229, 'https://www.pngmart.com/files/17/Girl-Short-Dress-PNG-Clipart.png'),
(49, 4, 'Pantalon TSI JSP', 'Pantalon treillis TSI Jeunes Sapeurs-Pompiers sans', 6, 43, 'https://www.laboutiqueofficiellepompiers.fr/9132-thickbox_default/nouveau-pantalon-jsp.jpg'),
(51, 4, 'Pantalon à pattes', 'Pantalon à pattes d&#039;éléphant Hippie', 4, 70, 'https://www.graphiti.fr/16075-large_default/alexander-mcqueen-jeans-patte-d-elephant-patch-logo-denim-bleu.jpg'),
(52, 1, 'T-SHIRT MLDEG BLEU', 'Tee-shirt Officiel MLDEG Bleu marquage dos.', 4, 25, 'https://ninestore.fr/2322-home_default/t-shirt-mldeg-bleu-marquage-dos.jpg'),
(53, 2, 'Sweat-Shirt De Travail A Capuche Russell', 'Authenticity is the foundation of our business, an', 3, 46, 'https://lh4.googleusercontent.com/proxy/oXi95D7XtMnMz6DWWWxdbqz0pNvrHrjtfvFsWbXRS6StmxYbeoOtSTzI1ruWPH4svsIIWQlPI1C7XKzm9kQCHAV7vZdhUrxojWxzWYOiRpOuNUR_QpfAvzW3QGrYOnfeAmRoTkEHZ12u180k8hkaoWuguNY1nrlgVnfpIx8Vt8vP_5ip3JA7SaMV'),
(55, 2, 'SWEAT BASIQUE NOIR', 'Pour tous ceux à la recherche d&#039;un sweat clas', 2, 15, 'https://www.crafters.fr/images/stories/virtuemart/product/hqtxadm/7758_5d52af42ab558_SWEAT-BASIQUE-DOS-NOIR.png');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `stock`
--

INSERT INTO `stock` (`id`, `id_produit`, `stock`) VALUES
(1, 44, 10),
(2, 45, 15),
(3, 49, 9),
(4, 51, 2),
(5, 43, 1),
(6, 48, 897),
(7, 53, 30),
(8, 55, 20),
(9, 47, 3),
(10, 52, 56),
(11, 42, 9);

-- --------------------------------------------------------

--
-- Structure de la table `taille`
--

CREATE TABLE `taille` (
  `id` int(11) NOT NULL,
  `taille` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `taille`
--

INSERT INTO `taille` (`id`, `taille`) VALUES
(1, 'XL'),
(2, 'XXL'),
(3, 'XS'),
(4, 'S'),
(5, 'M'),
(6, 'L');

-- --------------------------------------------------------

--
-- Structure de la table `transporteur`
--

CREATE TABLE `transporteur` (
  `id` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `transporteur`
--

INSERT INTO `transporteur` (`id`, `id_commande`, `nom`, `telephone`) VALUES
(1, 4, 'Jean', '9878654798'),
(2, 7, 'Paul', '657678998'),
(3, 9, 'Michel', '4356789876');

-- --------------------------------------------------------

--
-- Structure de la table `type_compte`
--

CREATE TABLE `type_compte` (
  `id` int(11) NOT NULL,
  `type_compte` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `type_compte`
--

INSERT INTO `type_compte` (`id`, `type_compte`) VALUES
(1, 'defaut');

-- --------------------------------------------------------

--
-- Structure de la table `type_vetement`
--

CREATE TABLE `type_vetement` (
  `id` int(11) NOT NULL,
  `type_vetement` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table `type_vetement`
--

INSERT INTO `type_vetement` (`id`, `type_vetement`) VALUES
(1, 'tshirt'),
(2, 'chemise'),
(4, 'pantalon'),
(5, 'jogging'),
(6, 'chaussures'),
(7, 'chaussettes'),
(8, 'accessoires');

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commande_produit` (`id_produit`),
  ADD KEY `fk_commande_utilisateur` (`id_compte`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compte_type` (`id_type_compte`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produit_taille` (`id_taille`),
  ADD KEY `fk_produit_type` (`id_type`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stock_produit` (`id_produit`);

--
-- Index pour la table `taille`
--
ALTER TABLE `taille`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transporteur`
--
ALTER TABLE `transporteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transporteur_commande` (`id_commande`);

--
-- Index pour la table `type_compte`
--
ALTER TABLE `type_compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type_vetement`
--
ALTER TABLE `type_vetement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `taille`
--
ALTER TABLE `taille`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `transporteur`
--
ALTER TABLE `transporteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `type_compte`
--
ALTER TABLE `type_compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `type_vetement`
--
ALTER TABLE `type_vetement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_commande_produit` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`),
  ADD CONSTRAINT `fk_commande_utilisateur` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`id`);

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_compte_type` FOREIGN KEY (`id_type_compte`) REFERENCES `type_compte` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `fk_produit_taille` FOREIGN KEY (`id_taille`) REFERENCES `taille` (`id`),
  ADD CONSTRAINT `fk_produit_type` FOREIGN KEY (`id_type`) REFERENCES `type_vetement` (`id`);

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_stock_produit` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `transporteur`
--
ALTER TABLE `transporteur`
  ADD CONSTRAINT `fk_transporteur_commande` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`);
COMMIT;
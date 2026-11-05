# Aide-mémoire (synthèse des séances 1 à 6)

Source : supports de séance dans `docs/` (extraits dans `docs/texte/`). Les ordres de grandeur sont ceux donnés en cours ; les citer avec « (cours) » comme source.

## Cadrage (séance 1)

- Décision = **qui décide, quoi, à quelle fréquence, sur quelle base aujourd'hui**.
- Indicateur = valeur de départ (mesurée avant) + cible à 12 mois. Sans les deux, ce n'est qu'une promesse.
- Périmètre : 3 dedans, 3 dehors. Premier livrable utile : modeste, daté, utilisé par un métier.
- Info manquante → hypothèse + ce qui la confirme + plan B si elle tombe.

## Données (séance 2)

- Propriétaire juridique ≠ producteur ≠ utilisateur.
- Mode d'accès (API à la demande, export fichier, flux, saisie manuelle) = fraîcheur maximale.
- Qualité : complète ? à jour ? cohérente avec les autres sources ? → se demande aux producteurs.
- Jointure : il faut un identifiant commun.
- Volumétrie : `nb sources × fréquence × taille message × durée`, terme par terme.
  Exemple du cours : 500 camions × (86 400 s ÷ 30 s) × 200 o = 500 × 2 880 × 200 o = 288 Mo/jour ≈ 105 Go/an.

## Droit (séance 3)

- RGPD : donnée personnelle, traitement, responsable de traitement, sous-traitant (contrat obligatoire), DPO. Sanctions : jusqu'à 20 M€ ou 4 % du CA mondial.
- Principes : finalité, minimisation, exactitude, durée de conservation limitée, sécurité, transparence.
- Bases légales (art. 6) : consentement · contrat · obligation légale · intérêts vitaux · mission d'intérêt public · intérêt légitime.
- Données de santé (art. 9) : interdites par principe ; exceptions utiles : consentement explicite, prise en charge médicale, santé publique, recherche. Santé **par nature, par croisement, par destination**.
- AIPD : obligatoire en général si ≥ 2 critères CNIL parmi : évaluation/notation · décision automatisée à effet important · surveillance systématique · données sensibles · grande échelle · croisement de données · personnes vulnérables · usage innovant · privation d'un droit/service.
- Risques AIPD : accès illégitime · modification non désirée · disparition ; cotation vraisemblance × gravité (1–4).
- Pseudonymisation (réversible, reste RGPD, défaut en projet data) ≠ anonymisation (irréversible, rare).
- HDS : obligatoire pour héberger des données de santé de soins/prévention/suivi ; certification par activité ; stockage dans l'EEE ; choix **avant** l'architecture.
- Droits : accès, rectification, effacement, opposition, limitation, portabilité — réponse sous 1 mois (+2 si complexe), sous-traitants compris.
- AI Act : haut risque → documentation, qualité des données, supervision humaine. Logiciel d'aide à la décision de soins → possible **dispositif médical** (marquage CE avant usage).

## Architecture et chiffrage (séance 4)

- 5 étages : sources → ingestion → stockage → traitement → exposition (à chaque étage : qui accède, quelle fréquence).
- Lots (h–jour, coût faible) · micro-lots (minutes, moyen) · flux (secondes, élevé + astreinte : panne, fraude, alerte patient).
- Lac (brut, bas coût) · entrepôt (structuré SQL) · lakehouse (Parquet/Delta + couche table). Parquet/Delta : compression ×3 à ×10 vs CSV/JSON (cours).
- Médaillon : **bronze** brut (data engineers seulement) · **silver** nettoyé + pseudonymisé (DE, DS, analystes habilités) · **gold** prêt métier (métiers sur leur périmètre). Pseudonymiser au plus tôt (bronze → silver) ; table de correspondance gardée à part, accès très restreint.
- Hébergement : sur site / IaaS / PaaS / SaaS ; pour la santé, **certifié HDS pour l'activité concernée** (liste ANS). Acheter vs construire = choisir qui maintiendra.
- **Stockage = volume brut/an × années de rétention ÷ facteur de compression × nombre de copies.**
  Exemple : 10 To/an, 3 ans → 30 To ; ÷4 → 7,5 To ; ×3 → 22,5 To.
- Postes minimum : stockage · calcul · licences · équipe de run. Investissement vs fonctionnement : comparer en coût total sur 3 ans.
- Ordres de grandeur (cours) : stockage objet ≈ 20–25 €/To/mois (bien moins en archivage) · data engineer ≈ 75 k€/an chargé · prestataire ≈ 650 €/jour.
- Piège : l'équipe de run oubliée coûte souvent ~4× l'infrastructure.

## Équipe, gouvernance, budget (séance 5)

- ETP = une personne à plein temps sur un an. Coût chargé ≈ **1,45 × brut**. ≈ 210–220 jours travaillés/an. Prestataire sur 18 mois temps plein ≈ **330 jours**. Recrutement : 3–6 mois (ne coûte rien et ne produit rien pendant ce temps).
- Budget 18 mois : séparer build / run (le run ne tombe jamais à zéro) ; montée en charge mois par mois ; **réserve 10–15 %** ; ce qu'on retire s'écrit (blocs entiers).
- Rôles : data engineer · data analyst · data scientist · MLOps · product owner data · data steward · DPO. DE **avant** DS. Noyau interne + renforts externes.
- Gouvernance : data owner (décide et répond) + data steward (fait vivre) par domaine ; DPO ; comité de gouvernance ; glossaire, catalogue, lignage, règles de qualité ; politique d'accès.
- RACI : R réalise · **A un seul, toujours** · C consulté avant · I informé après. Case vide = pas concerné (voulu).
- Feuille de route : 3 jalons (date, livrable, métier qui s'en sert, ce qui conditionne le suivant) ; 1er livrable utile à 3 mois.

## Exploitation et déploiement (séance 6)

- Qualité : complétude · fraîcheur · validité · exactitude · unicité · cohérence (un contrôle d'exemple chacune dans le support).
- Tests : code (unitaires, intégration, non-régression) + **donnée à chaque chargement** (échec = blocage ou alerte). Contrat de données : schéma, fréquence, heure de livraison, règles de qualité, préavis de changement.
- Environnements : dév (fictif/échantillon pseudonymisé) · recette (pseudonymisé, proche du réel) · prod. **Jamais de copie brute de la prod en dév** (santé).
- Déploiement : pilote (1 site → quelques-uns → tous) · fonctionnement en parallèle · retour arrière testé.
- Production : engagements de service (SLA/SLO), supervision (fraîcheur, échecs, temps, coûts, dérive des modèles), astreinte avec procédure, post-mortem sans coupable.
- Exercice d'oral probable : 3 contrôles nocturnes sur l'export CSV du DPI et ce qui se passe en cas d'échec.

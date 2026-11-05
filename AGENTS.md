# Projet Big Data — Ombelle Santé

Dépôt de travail d'un trinôme du **M2 IABD, ESGI Lyon** (UE « Architecture de projet Big Data », code 05CW07239, 21 h, du 5 novembre au 4 décembre 2026).
Le trinôme est un cabinet de conseil qui répond à l'appel d'offres d'**Ombelle Santé** (réseau de 12 établissements SMR en Auvergne-Rhône-Alpes). Les autres trinômes sont concurrents. Noté : 3 copies papier individuelles (≈ 17 % chacune) + un oral en comité (50 %).

> Ce fichier est la source de vérité pour tout agent IA (Claude Code, Codex, etc.) et pour les humains. `CLAUDE.md` ne fait que le référencer.

## Le travail en une phrase

Prendre de bonnes décisions avec ce qu'on sait, **écrire ce qu'on suppose**, corriger la trajectoire quand l'information arrive, et pouvoir **tout défendre à l'oral**. Il n'y a pas de « bonne réponse » à trouver.

## Équipe

| Rôle | Porte | Membre |
|---|---|---|
| Chef de projet | Cadrage, registre des hypothèses, organisation, budget, feuille de route | _à renseigner_ |
| Architecte | Schéma d'architecture, fiches de décision, chiffrage | _à renseigner_ |
| Responsable données et conformité | Inventaire des données, AIPD, propriété des données, gouvernance | _à renseigner_ |

Chacun peut contribuer partout, mais **chacun répond seul à l'oral de sa partie**. Le chef de projet tranche les arbitrages (y compris face à l'imprévu de l'oral).

## Règles pour les agents IA (prioritaires)

Les règles du jeu de l'UE (§ plus bas) autorisent l'IA « pour mettre en forme ». Tout ce qui est noté se joue sur papier ou à l'oral, sur **nos** chiffres et **nos** décisions ; un dossier qu'on ne sait pas défendre vaut 0/20. Donc :

1. **Ne jamais inventer** un chiffre, une source, une décision ou une hypothèse. Si une donnée manque : poser une hypothèse proposée (à valider par un humain), jamais une valeur « plausible » glissée sans trace.
2. **Proposer, ne pas trancher.** Les décisions d'architecture, de périmètre et de budget sont prises par les humains (rôle indiqué dans le journal). L'agent propose des options avec leurs compromis ; l'humain choisit.
3. **Rendre les calculs refaisables à la main.** Poser chaque terme (`500 camions × 2 messages/min × 200 o × …`), unité à côté, hypothèse écrite à côté. Pas de chiffre « magique ». À l'oral on doit refaire le calcul à voix haute.
4. **Respecter la chronologie des sorties d'information** (règle 6) : ne jamais utiliser, dans un livrable ou une entrée de journal, une information qui n'était pas encore sortie à la date du document. Voir « État d'avancement ».
5. **Ne jamais supprimer** une hypothèse ou une piste : la fermer avec la raison (règle 1).
6. **Ne pas réécrire l'histoire** : une entrée de journal déposée n'est plus modifiée ; une correction passe par une nouvelle entrée ou une nouvelle version datée.
7. **Rester sobre** : respecter les tailles imposées (1 page, 2 pages, 4 pages…). Dépasser = pénalité. Pas de remplissage.
8. **Signaler les incohérences** entre livrables (volumes L2 ≠ L4, budget L5 ≠ enveloppe, décision L1 ≠ retrait L5) au lieu de les lisser.

## Les 6 règles du jeu (Syllabus)

1. On ne supprime jamais une hypothèse ni une piste : on la ferme, en écrivant pourquoi.
2. Chaque entrée du journal est déposée **le jour où la sortie d'information tombe**.
3. Chaque chiffre a son hypothèse ou sa source écrite à côté.
4. IA autorisée pour la mise en forme ; le noté se joue sur papier/oral, sur nos chiffres et décisions.
5. Dépôts sur le devoir **Teams** aux dates du calendrier. Rendu manquant/en retard : −0,5 pt sur la moyenne finale **de chaque membre**.
6. Tout est daté ; la correction vérifie qu'aucune entrée/version ne s'appuie sur une info pas encore sortie.

## Calendrier et rendus

Heures locales (Lyon). Les sorties d'information R tombent pour tous les trinômes en même temps ; elles viennent d'Ombelle, on ne les produit pas.

| Date | Événement | À rendre (Teams) |
|---|---|---|
| Jeu 5/11 8h20 | **R0** dossier de départ | — |
| Jeu 5/11 9h45 | Copie 1 (papier, individuelle) | — |
| Jeu 5/11 11h30 | **R1** données et propriétaires | — |
| Jeu 5/11 14h | **R2** inventaire des données | **Rendu 1 à 15h30** : L1 v1, L2, registre, entrées R0–R2 |
| Ven 6/11 11h30 | **R3** le droit avant l'architecture | **Rendu 2 à 13h** : entrée R3, réponse au patient (10 lignes), registre |
| 6/11 → 29/11 | Autonomie, aucune sortie | **Rendu 3, dim 29/11 23h59** : L1 reprise, L2 reprise, **L3**, registre |
| Lun 30/11 11h30 | Copie 2 | — |
| Lun 30/11 14h / 18h | **R4** (14h), **R5** (18h) | **Rendu 4, 19h** : **L4**, entrées R4 et R5, registre |
| Jeu 3/12 9h45 | **R6** équipe, gouvernance, budget | **Rendu 5, 12h15** (avant la copie 3) : **L5**, entrée R6, registre |
| Jeu 3/12 12h15 | Copie 3 | — |
| Ven 4/12 9h30 | — | **Rendu 6** : dossier final + support d'oral (≤ 10 diapos) |
| Ven 4/12 9h45–13h | Soutenances (visio, 24 min/trinôme), **R7** = imprévu annoncé | — |

### État d'avancement

> À mettre à jour à chaque sortie. **Dernière sortie reçue : R0** (5/11/2026). Tant qu'une sortie n'est pas arrivée, son contenu est inconnu : ne rien en supposer dans les livrables hors du registre des hypothèses.

## Livrables

Les livrables ne sont pas notés un par un : ils forment le dossier final et la matière de l'oral. Chacun **réutilise les chiffres et décisions des précédents** ; la **traçabilité** (hypothèses → journal → livrables) fait partie de la notation.

| Code | Pièce | Taille | Contenu imposé |
|---|---|---|---|
| L1 | Note de cadrage | 1 page, **aucun nom de technologie** | (1) décision métier en une phrase : *qui décide, quoi, à quelle fréquence, sur quelle base aujourd'hui* ; (2) indicateur de succès chiffré à 12 mois (valeur actuelle ou façon de la mesurer) ; (3) 3 éléments dans le périmètre + 3 hors périmètre ; (4) premier livrable utile à un métier + sa date. Chaque élément cite sa source ou une hypothèse (H…). |
| L2 | Inventaire des données | 1 tableau, ≥ 8 sources | Colonnes **dans cet ordre** : Source · Propriétaire juridique · Responsable opérationnel · Mode d'accès · Fréquence · Volumétrie annuelle (calcul posé) · Donnée de santé (oui/non) · Qualité connue ou supposée · Justification (pièce, sortie ou hypothèse). Dessous : 3 données qu'on voudrait avoir et le coût de leur absence. |
| L3 | AIPD courte | 2 pages, méthode CNIL simplifiée | 2 traitements : télésurveillance à domicile + score de réhospitalisation. Par traitement : finalité, base légale, données, durée de conservation. 3 risques (accès illégitime, modification non désirée, disparition) cotés 1–4 en vraisemblance et gravité, **chaque cote justifiée par un fait du cas**. 2 mesures par risque dont ≥ 1 qui change l'architecture. Modifications à demander dans le contrat fabricant des capteurs. |
| L4 | Architecture et chiffrage | 4 pages | Schéma 1 page : toutes les sources de L2, bronze/silver/gold, lieu de pseudonymisation, hébergement + certification, chaque flux annoté lots/flux + fréquence. 3 fiches de décision (½ page) : **hébergement**, **traitement des flux capteurs**, 1 libre. Chiffrage annuel et à 3 ans : stockage, calcul, licences, équipe de run, total, hypothèse à côté de chaque nombre ; volumes cohérents avec L2. |
| L5 | Organisation et budget | 2 pages | Équipe (rôles, ETP, interne/externe, sur 18 mois, en tenant compte de R6) ; RACI sur 6 activités imposées (ingestion capteurs, qualité codage PMSI, accès données de santé, développement du score, mise en production, réponse aux demandes de droits) ; budget 18 mois dans l'enveloppe en vigueur ; « ce que nous avons retiré et pourquoi » relié à la décision de L1 ; feuille de route en 3 jalons avec un 1er livrable utilisé par un métier à 3 mois. |
| — | Registre des hypothèses | 1 tableau | Voir `templates/registre-hypotheses.md`. Statuts : `ouverte`, `confirmée`, `tombée`. |
| — | Journal de bord | ½ page / entrée | Une entrée par sortie R. Voir `templates/journal-entree.md`. |
| — | Dossier final | Proposition ≤ 12 p. + Chemin ≤ 5 p. | Voir ci-dessous. |
| — | Support d'oral | ≤ 10 diapos dont 2 sur le chemin | Voir « Oral ». |

**Dossier final** — *La proposition* (≤ 12 p.) : 1 page de synthèse pour la DG (décision visée, coût, délai, risques) + L1 à L5 dans leur dernière version, cohérents. *Le chemin* (≤ 5 p.) : frise sortie après sortie (pistes ouvertes/fermées, décisions) ; registre complet ; 1 page sur les 3 hypothèses qui ont coûté le plus cher et ce qu'on referait. **Annexe** : entrées du journal telles que déposées.

**Oral** (ven. 4/12, 24 min) : 10 min de présentation (les 3 parlent) · 5 min imprévu (1 min de concertation à voix haute, le chef de projet tranche) · 6 min questions individuelles (2 min/rôle, sans concertation) · 3 min de battement. Barème : cohérence et synthèse DG (3) · lisibilité du chemin fidèle aux rendus datés (4) · maîtrise des chiffres et du cadre juridique (3) · décision face à l'imprévu (2) · maîtrise de sa partie (4, indiv.) · refaire un calcul à voix haute (2, indiv.) · exploitation/tests/déploiement (2, indiv.).

## Principes de fond (à garder en tête à chaque décision)

- Un projet data part d'une **décision à éclairer**, jamais d'un tas de données. Le data lake n'est pas un besoin.
- Une décision = *qui décide, quoi, à quelle fréquence, sur quelle base aujourd'hui*. L'indicateur a une valeur de départ **et** une cible.
- Le périmètre s'écrit aussi par ce qu'on **ne fait pas**.
- Information manquante → hypothèse + ce qui la confirmerait + ce qu'on fait si elle tombe. Puis on avance.
- Une donnée a un **propriétaire juridique**, un **chemin** (qui impose la fraîcheur) et un **défaut** (se demande à ceux qui la produisent). Deux sources sans identifiant commun ne se croisent pas.
- **Le droit se décide avant l'architecture** : finalité, base légale, donnée de santé (art. 9), HDS, pseudonymisation, durée de conservation.
- Chaque brique d'architecture répond à **une contrainte nommée**, sinon elle est de trop. Lots ou flux : c'est la décision métier qui tranche, la source qui pose la limite.
- Un chiffrage couvre ≥ 4 postes (stockage, calcul, licences, **équipe de run**) et se vérifie à la main.
- Une équipe se dimensionne sur le **run**, pas sur le build. Data engineer avant data scientist. Un seul « A » par ligne de RACI.
- Une donnée se teste comme du code et se livre comme un produit (contrôles à chaque chargement, contrat de données, recette métier, déploiement progressif).

Aide-mémoire détaillé (formules, ordres de grandeur, RGPD, médaillon, qualité) : `docs/aide-memoire.md`.

## Le cas Ombelle (faits issus de R0 — à citer « R0 »)

- 12 établissements SMR, **1 085 lits**, ≈ **14 000 séjours/an**. Les 3 derniers (Roannais, Viennois, Drôme Sud) rachetés il y a 18 mois (2025) — DPI et pratiques potentiellement hétérogènes (à vérifier : hypothèse).
- **Ombelle Domicile** (depuis 2022) : ≈ **3 200 patients** en télésurveillance ; capteurs fournis par **Vitalink** : 2 900 oxymètres de nuit, 3 100 tensiomètres, 2 400 balances, 1 800 podomètres. Centre de suivi à Lyon (infirmières).
- DPI en place dans tous les établissements ; il produit un **export CSV complet chaque nuit** (énoncé de la séance 6).
- Contrat Vitalink art. 7 : accès aux mesures par API « dans les limites de l'annexe 3 » — **extrait tronqué** (7.3 coupé, annexe 3 absente) → zone d'ombre majeure (propriété des données brutes, limites d'accès).
- Demande de la DG : plateforme de données « pilotée par la donnée » + IA pour **anticiper les réhospitalisations** (retour à l'hôpital, mesuré à 30 jours). Flou volontaire : à transformer en décision mesurable (L1).
- Interlocuteurs (organigramme R0) : DG Hélène Marchal · DAF Pierre Gauthier · Directrice médicale Dr Anne Duval · Médecin DIM Dr Bruno Faure · DSI Karim Benali · DPO Sophie Lemaire · Cadre de santé télésurveillance Nadia Roux · DRH Claire Morin. Personne n'est joignable pour répondre aux questions.
- Pièges à garder à l'œil : propriété et accès aux données Vitalink, HDS, donnée de santé par nature, score = potentiel **dispositif médical** / AI Act, qualité du codage PMSI, identifiant patient commun DPI ↔ capteurs, équipe de run.

## Structure du dépôt

```
AGENTS.md / CLAUDE.md         instructions (CLAUDE.md -> AGENTS.md)
README.md                     présentation et prise en main
docs/                         énoncés Ombelle/ESGI (PDF) — lecture seule
  texte/                      extraction texte des PDF (pour les agents)
  sorties/                    copie fidèle et datée de chaque sortie R reçue (R1…R7)
  aide-memoire.md             formules, RGPD, médaillon, ordres de grandeur
rendus/
  registre-hypotheses.md      registre vivant (une seule version, jamais de ligne supprimée)
  journal/R<n>.md             une entrée par sortie d'information
  L1-cadrage/ … L5-organisation/   une version par fichier : L<k>-v<n>.md
  final/                      dossier final + support d'oral
templates/                    modèles des livrables (colonnes imposées, ne pas modifier)
scripts/                      extraction PDF, contrôles de cohérence
.claude/skills/               skills projet (sortie d'information, volumétrie, cohérence…)
```

## Conventions

- **Langue** : français, accents obligatoires. Termes techniques et identifiants en forme d'origine.
- **Identifiants** : hypothèses `H1, H2…` (jamais renumérotées) ; sorties `R0…R7` ; livrables `L1…L5` ; décisions `D1…` (fiches d'architecture) si besoin. Toute référence croisée utilise ces identifiants.
- **Versions** : on ne retouche pas une version rendue. Nouvelle version = nouveau fichier `L1-v2.md` avec date en en-tête. On conserve toutes les versions (la comparaison rendu 1 ↔ rendu 3 est évaluée).
- **Dates** : format `jj/mm/aaaa` dans les documents, `aaaa-mm-jj` dans les noms de fichiers/commits. Chaque document porte sa date et la dernière sortie R prise en compte.
- **Chiffres** : `valeur unité — calcul — hypothèse/source`. Unités : 1 Go = 1 000 Mo, 1 To = 1 000 Go (dire si on compte en 1 024). Arrondir à la fin, pas pendant.
- **Hypothèses** : colonnes du modèle inchangées (N° · Hypothèse · Pourquoi on la prend · Ce qui la confirmerait ou l'infirmerait · Impact si elle est fausse · Statut · Tranchée par, le). Une hypothèse tombée renvoie à l'entrée du journal correspondante.
- **L1 sans technologie** : aucun nom d'outil/produit dans la note de cadrage.
- **Style** : phrases courtes, tableaux plutôt que paragraphes, pas de jargon non défini. Tailles imposées = limites dures.
- **Markdown → rendu Teams** : les dépôts sont des PDF/photos ; exporter depuis le Markdown (aperçu navigateur ou éditeur) et vérifier la pagination.

## Workflow Git

- Branches : `<type>/<description-kebab>` (`feat/`, `fix/`, `docs/`, `chore/`…), ~50 caractères max.
- **Ne pas pousser directement sur `main`** après le commit initial : branche + Pull Request, relue par au moins un autre membre (surtout pour tout chiffre ou décision).
- **Commits** : Conventional Commits en anglais ou français, mode impératif, sujet ≤ 72 car., sans point final. Scopes utiles : `l1`…`l5`, `registre`, `journal`, `docs`, `scripts`.
  Exemples : `docs(journal): add R1 entry`, `feat(l2): compute annual volumes for vitalink sensors`.
- **Aucune mention d'IA** en co-auteur dans les commits (convention du projet).
- Un commit = un changement cohérent. Journal : commit **le jour de la sortie** (la date git fait foi pour la règle 2).
- Stager des fichiers précis, relire `git diff --staged`. Jamais de données personnelles réelles, de secrets ou d'identifiants dans le dépôt (le cas est fictif, mais l'habitude compte).

## Contrôles avant chaque rendu

Lancer `scripts/check.sh` puis vérifier à la main :

1. Tailles imposées respectées (1 p. / 2 p. / 4 p. / ½ p. par entrée).
2. Chaque chiffre a son hypothèse ou sa source à côté ; chaque H citée existe dans le registre.
3. Registre à jour (aucune ligne supprimée ; statuts cohérents avec le journal).
4. Aucune information postérieure à la date du document.
5. Cohérence inter-livrables : volumes L2 = L4 ; budget L5 = enveloppe en vigueur ; retraits L5 reliés à L1.
6. Chaque membre sait refaire les calculs de sa partie à voix haute.

## Skills projet

Dans `.claude/skills/` :

- `sortie-information` — traiter l'arrivée d'une sortie R (journal, registre, pièces modifiées).
- `volumetrie` — calcul de volumétrie/stockage terme par terme avec hypothèses.
- `fiche-decision` — rédiger une fiche de décision d'architecture (5 rubriques imposées).
- `verifier-coherence` — contrôle de cohérence avant rendu.

Skills personnels utiles si installés : `slides-deck` (support d'oral Reveal.js), `commit-workflow`.

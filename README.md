# Projet Big Data — Ombelle Santé

Dépôt du trinôme — M2 IABD, ESGI Lyon, UE *Architecture de projet Big Data* (05CW07239), du 5 novembre au 4 décembre 2026.
Nous sommes un cabinet de conseil répondant à l'appel d'offres d'**Ombelle Santé** (12 établissements SMR, télésurveillance à domicile) : cadrer, inventorier les données, poser le cadre juridique, architecturer, chiffrer, organiser, puis défendre le tout devant un comité.

## Démarrer

1. Lire **`AGENTS.md`** (règles du jeu, calendrier, livrables, conventions). `CLAUDE.md` y renvoie : Claude Code, Codex et les autres agents lisent donc les mêmes consignes.
2. Lire `docs/aide-memoire.md` (formules, RGPD, médaillon, ordres de grandeur).
3. Partir des modèles dans `templates/` pour tout livrable. Ne jamais changer les colonnes imposées.
4. Cloner, créer une branche, ouvrir une Pull Request ; au moins une relecture par un autre membre.

```bash
git clone <url-du-depot> && cd <dossier>
git checkout -b docs/l1-note-de-cadrage
scripts/check.sh            # contrôles mécaniques avant rendu
scripts/extract-pdfs.sh     # (re)génère docs/texte/ à partir des PDF (poppler requis)
```

## Contenu

| Dossier | Rôle |
|---|---|
| `docs/` | Énoncés ESGI/Ombelle (PDF), `texte/` pour les agents, `aide-memoire.md` |
| `rendus/` | Nos productions : `registre-hypotheses.md`, `journal/`, `L1…L5`, `final/` |
| `templates/` | Modèles imposés (registre, journal, L1 à L5) |
| `scripts/` | Extraction PDF, contrôles de cohérence |
| `.claude/skills/` | Skills projet : `sortie-information`, `volumetrie`, `fiche-decision`, `verifier-coherence` |

## Rappels qui coûtent des points

- Chaque entrée du journal est déposée **le jour de la sortie** (la date git fait foi).
- Jamais de ligne supprimée au registre : on **ferme** avec la raison.
- Chaque chiffre a son **calcul et son hypothèse** à côté ; on doit le refaire à voix haute.
- Rendu manquant ou en retard : −0,5 pt pour **chacun** des trois membres.
- IA autorisée pour mettre en forme ; les chiffres et décisions sont les nôtres, et on doit pouvoir les défendre.

> Le dépôt est privé. Le cas Ombelle est fictif, mais ne pas y mettre de données personnelles réelles ni de secrets.

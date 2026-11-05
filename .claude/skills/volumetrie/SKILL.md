---
name: volumetrie
description: Use pour calculer ou vérifier une volumétrie (L2) ou un dimensionnement de stockage/coût (L4, L5) — débits capteurs Vitalink, export DPI, rétention, compression, réplication, coût d'équipe. Pose chaque terme avec son hypothèse, refaisable à la main à l'oral.
---

# Volumétrie et chiffrage refaisables à la main

Règle d'or de l'UE : *« Si vous ne savez pas refaire votre chiffre à voix haute, vous ne savez pas d'où il vient. »* Chaque terme porte son hypothèse ou sa source. Un ordre de grandeur juste vaut mieux qu'un chiffre précis sorti de nulle part.

## Méthode

1. **Poser les termes** dans un tableau : `terme · valeur · unité · hypothèse/source (H… / R… / cours)`.
2. **Volume par message/fichier × fréquence × nombre d'objets × durée.** Convertir les unités explicitement : 1 Go = 1 000 Mo, 1 To = 1 000 Go (dire si 1 024). Secondes/jour = 86 400 ; jours/an = 365.
3. **Calculer en gardant les unités**, arrondir seulement à la fin.
4. **Stockage à prévoir** : `brut/an × années de rétention ÷ compression × copies` — dérouler chaque étape (brut → rétention → compression → réplication).
5. **Sensibilité** : indiquer le terme le plus incertain et la fourchette (bas/haut). Ne pas masquer l'incertitude.
6. **Vérifier la cohérence** : mêmes volumes dans L2 et L4 ; sinon expliquer l'écart (rétention, compression…).

## Gabarit

```
Source : <nom>
| Terme | Valeur | Hypothèse / source |
| Nb d'objets (ex. patients équipés) | … | R0 / H… |
| Mesures par objet et par jour | … | H… |
| Taille d'une mesure | … o | H… (à confirmer avec le fabricant) |
| Jours par an | 365 | — |
Calcul : … × … × … × 365 = … o/an  =  … Go/an
```

## Exemple de référence (cours)

500 camions × (86 400 s ÷ 30 s = 2 880 msg/jour) × 200 o = 288 Mo/jour ≈ 105 Go/an.

## Données disponibles dans R0 (à utiliser avec leur source « R0 »)

3 200 patients suivis ; 2 900 oxymètres de nuit, 3 100 tensiomètres, 2 400 balances, 1 800 podomètres ; ≈ 14 000 séjours/an ; 1 085 lits ; 12 établissements. **Fréquence et taille des mesures : inconnues** → hypothèses à écrire (H…), jamais des valeurs posées sans trace.

## Ordres de grandeur du cours (à citer « cours »)

Stockage objet 20–25 €/To/mois · compression Parquet/Delta ×3 à ×10 vs CSV/JSON · data engineer ≈ 75 k€/an chargé · prestataire ≈ 650 €/jour · coût chargé ≈ 1,45 × brut · ≈ 210–220 j/an · réserve 10–15 %.

## Sortie attendue

Un tableau « terme / valeur / hypothèse » + le calcul écrit + le résultat avec unité + la fourchette. Ne rien arrondir avant la dernière ligne.

---
name: sortie-information
description: Use quand une nouvelle sortie d'information Ombelle (R1 à R7) vient d'arriver ou que l'utilisateur colle/dépose un document R — pour rédiger l'entrée du journal de bord, mettre à jour le registre des hypothèses et lister les livrables à reprendre. Aussi pour préparer l'entrée R0.
---

# Traiter une sortie d'information

Contexte : voir `AGENTS.md` (règles du jeu, calendrier). Les sorties R viennent d'Ombelle ; on les reçoit, on ne les produit pas. **L'agent propose, l'humain (rôle indiqué) tranche.**

## Avant de commencer

1. Identifier la sortie (`R<n>`) et sa date/heure de réception. Si la date n'est pas celle du jour de sortie du calendrier, le signaler.
2. Archiver le texte brut de la sortie dans `docs/sorties/R<n>.md` (copie fidèle, datée) pour que la correction puisse vérifier la chronologie.
3. Lire `rendus/registre-hypotheses.md` et la dernière version de chaque L existant.

## Étapes

1. **Ce que la sortie apprend**, en une phrase.
2. **Confronter chaque hypothèse ouverte** : confirmée / tombée / inchangée. Citer la phrase de la sortie qui justifie. Ne jamais supprimer : changer le statut et renvoyer à `R<n>`.
3. **Nouvelles hypothèses** : numéroter à la suite (jamais de renumérotation), remplir toutes les colonnes (pourquoi, ce qui confirme/infirme, impact si fausse).
4. **Pistes ouvertes / fermées** (avec la raison pour les fermées).
5. **Pièces modifiées** : lister les L touchés et ce qui change, puis créer les nouvelles versions (`L<k>-v<n+1>.md`) — jamais d'écrasement d'une version rendue.
6. **Décision** : formuler la proposition ; laisser « tranché par : <rôle> » à confirmer par l'humain.
7. Écrire `rendus/journal/R<n>.md` avec `templates/journal-entree.md` (≤ ½ page). Ne pas réécrire l'entrée après dépôt.
8. Mettre à jour « État d'avancement » dans `AGENTS.md` et l'en-tête « Dernière sortie prise en compte » du registre.
9. Lancer `scripts/check.sh`.

## Garde-fous

- Pas d'information issue d'une sortie future. Si une sortie fait tomber une hypothèse, c'est la sortie qui l'établit, pas notre intuition.
- Questions restées sans réponse : les laisser ouvertes, avec le plan B écrit.
- Les décisions et chiffres sont ceux de l'équipe : signaler tout ce qui demande un arbitrage humain.

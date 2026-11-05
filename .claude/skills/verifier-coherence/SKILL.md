---
name: verifier-coherence
description: Use avant chaque rendu Teams (1 à 6) ou quand on demande de relire/vérifier le dossier — contrôle la cohérence entre L1 à L5, registre et journal, les tailles imposées, la chronologie des sorties et les chiffres.
---

# Vérification de cohérence avant rendu

1. Lancer `scripts/check.sh` (références H…, statuts, colonnes L2, technologies en L1, marqueurs d'inachevé).
2. Identifier le rendu visé (voir calendrier dans `AGENTS.md`) et vérifier que **toutes** les pièces attendues sont présentes, à la bonne version.
3. **Chronologie (règle 6)** : pour chaque document, relever la date et la dernière sortie R utilisée ; signaler toute affirmation qui s'appuie sur une sortie postérieure.
4. **Traçabilité** : chaque hypothèse tombée renvoie à une entrée de journal ; chaque entrée de journal liste les pièces modifiées, qui existent bien en nouvelle version.
5. **Cohérence inter-livrables** (tableau écarts → à signaler, pas à lisser) :
   - L1 décision/indicateur ↔ L2 sources utiles ↔ L4 flux ↔ L5 premier livrable à 3 mois.
   - Volumes L2 = volumes L4 (sinon écart expliqué).
   - L3 mesures « qui changent l'architecture » ↔ présentes dans le schéma L4.
   - Budget L5 ≤ enveloppe en vigueur ; « ce que nous avons retiré » relié à L1 ; équipe de run présente.
6. **Tailles** : L1 1 p. · L2 1 tableau (≥ 8 sources) · L3 2 p. · L4 4 p. · L5 2 p. · journal ½ p./entrée · dossier final 12 p. + 5 p. · support ≤ 10 diapos (dont 2 sur le chemin).
7. **Chaque chiffre** a son calcul et son hypothèse/source ; recalculer 3 chiffres au hasard à la main.
8. Rapport : liste numérotée **bloquant / à corriger / suggestion**, avec fichier et ligne. Ne rien corriger sur les décisions ou chiffres sans accord de l'humain responsable.

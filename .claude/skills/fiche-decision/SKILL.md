---
name: fiche-decision
description: Use pour rédiger ou relire une fiche de décision d'architecture de L4 (hébergement, traitement des flux capteurs, ou fiche libre) au format imposé en cinq rubriques, ou pour challenger une brique d'architecture.
---

# Fiche de décision d'architecture (L4)

Format imposé, **½ page** : *Contexte · Options (≥ 2) · Décision · Ce qu'on perd · Ce qui tranche.* Modèle : `templates/L4-fiche-decision.md`.

Deux fiches imposées : **hébergement** et **traitement des flux des capteurs**. La troisième est libre (ex. pseudonymisation, accès aux couches, acheter vs construire, rétention).

## Principes à appliquer

- **Chaque brique répond à une contrainte nommée**, sinon elle est de trop. Nommer la contrainte (juridique, source, décision métier, équipe).
- **Lots ou flux** : la décision métier tranche (un retard de quelques heures est-il acceptable ?), la source pose la limite (un export nocturne ne devient jamais du temps réel). Le flux se justifie par une décision qui ne peut pas attendre (ex. alerte patient).
- **Hébergement** : données de santé ⇒ certification HDS pour l'activité concernée, stockage dans l'EEE ; le choix précède l'architecture. Acheter une brique = licence + dépendance ; construire = équipe qui maintient (y compris la nuit).
- **Droit avant architecture** : lieu de pseudonymisation (bronze → silver), accès par couche, durée de conservation, réversibilité du contrat.
- **Ce qui tranche** cite une sortie (R…) ou une hypothèse (H…) — et dit ce qui se passe si elle tombe.

## Étapes

1. Reformuler le contexte en deux phrases : la question, la contrainte.
2. Lister ≥ 2 options **honnêtement** (avantages, coûts, risques de chacune) — pas de paille.
3. Proposer la décision et **ce qu'on perd** (ce que l'option écartée apportait).
4. Relier à l'hypothèse/sortie qui fait pencher la balance ; vérifier que le registre la contient.
5. Cohérence : la décision se retrouve dans le schéma, le chiffrage (L4) et le budget (L5).

L'agent propose les options et les compromis ; **l'architecte (humain) tranche** et la fiche mentionne qui a tranché.

# TrustiPro — API CI/CD

URL du dépôt : <https://github.com/aydryun/EC06>

## 1. Workflow Git

### Stratégie de prefixes

Voici la liste des préfixes autorisés pour ce projet

| prefix | Description                                            |
|-------|--------------------------------------------------------|
| feat  | Nouvelle fonctionnalité                                |
| fix   | Correction de bugs applicatifs |
| docs  | Changement dans la documentation                       |
| ref   | Refactorisation du code / amélioration de performances |
| style | Modification d'éléments stylistiques                   |
| typo  | Modification de textes                                 |
| test  | Ajout / modification de tests applicatifs              |
| chore | Tâche de maintenance                                   |

#### Format de commits

- Tous les commits doivent utiliser un prefixe de la liste au dessus
- le message doit être rédigé en français sans accents

`(prefix): <description>`
`chore: modification du workflow git`

### Stratégie de branches

| Branche                | Description                                                                |
|------------------------|----------------------------------------------------------------------------|
| <prefix>/<fonctionnalité>  | branche en cours développement, ajout de fonctionnalités modifications |
| dev                    | branche développement, où les fonctionnalités sont implémentées            |
| main                   | Branche principale, push directs interdits                                 |

Chaque branche doit réutiliser un préfixe de la liste des préfixes autorisés
accompagné de la fonctionnalité / son but

Ex:
`docs/conventions` : Branche visant à ajouter la documentation concernant les conventions de code

### Pull request

Chaque demande de pull request doit suivre ce format de message

```md
<Description>

# Type de PR
- element 1
- element n 

....


lexique (optionnel)

```

Ex:

```md
Cette pull request vise à ajouter les conventions de code du projet

# docs
- ajout de conventions.md
- modification des personas 
- mise à jour de la documentation de workflow

```

## 2. Conteneurisation Docker

Décrire le Dockerfile multistage : image de base choisie, pourquoi un
utilisateur non-root, ce que fait le HEALTHCHECK.

## 3. Pipeline CI/CD

Insérer ici le schéma Mermaid représentant les trois jobs et leurs
déclencheurs.
Décrire en quelques phrases le rôle de chaque job et ce qui déclenche
le job deploy uniquement sur main.

## 4. Gestion des secrets

Lister les secrets utilisés (noms uniquement, pas les valeurs).
Expliquer où ils sont définis et comment ils sont injectés dans la CI.
Confirmer explicitement que .env n'est pas versionné et comment on
l'a vérifié.

## 5. Lancement et utilisation du projet

Donner les commandes nécessaires pour cloner le dépôt et lancer le
projet en local, de façon à ce qu'un tiers puisse reproduire l'exécution
sans aide supplémentaire :

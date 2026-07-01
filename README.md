# TrustiPro — API CI/CD

URL du dépôt : <https://github.com/aydryun/EC06>

## 1. Workflow Git

Décrire la stratégie de branches retenue et la justifier en 2-3 phrases.
Expliquer comment la PR a été utilisée pendant l'épreuve.

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

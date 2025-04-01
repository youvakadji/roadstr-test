# Projet Roadstr - Dashboard Admin

Ce projet permet de gérer des réservations de voitures via un dashboard administrateur. Il permet à l'administrateur d'envoyer des rappels et des confirmations par email.

## Prérequis

Avant de pouvoir exécuter ce projet, assure-toi que tu as installé les outils suivants :

- Ruby version 3.1.2
- Rails version 7.0.3

## Installation

### 1. Clonez le repository

Clonez le repository sur votre machine locale :

```bash
git clone https://github.com/youvakadji/roadstr-test.git
cd roadstr_test
```

### 2. Installez les dépendances Ruby

Installez les gems nécessaires avec bundler :
```bash
bundle install
```

### 3. Démarrez le serveur

Lancez le serveur Rails avec la commande suivante :
```bash
bin/rails server
```
Le serveur sera accessible à l'adresse suivante : http://localhost:3000.

## Fonctionnalités

    Dashboard Admin : Affiche la liste des réservations avec les options d'action.

    Envoyer un rappel : L'administrateur peut envoyer un email de rappel à un utilisateur pour finaliser sa réservation.

    Envoyer une confirmation : L'administrateur peut envoyer un email de confirmation lorsque la réservation est finalisée.

## Routes

Les principales routes sont :

    GET /dashboard/index : Affiche le dashboard avec la liste des réservations.

    GET /dashboard/send_reminder/:id : Envoie un email de relance pour la réservation spécifiée.

    GET /dashboard/send_confirmation/:id : Envoie un email de confirmation pour la réservation spécifiée.

    GET /bookings/options/:id : Affiche les détails de la réservation en attente

## Envoi d'Emails

Les emails sont envoyés via ActionMailer. Ils utilisent deliver_now pour être envoyés immédiatement.
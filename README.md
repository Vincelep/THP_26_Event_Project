# 26ème jour - The Event Project

## 💎 Qu'est-ce donc ?
Une app **Ruby On Rails** de création d'événements du style d'Eventbrite

## ⚙ Installation
1. Clone ce repo (ou download-le)
2. Place-toi dans le dossier et va dans ton magnifique terminal 😍 :
3. `$ bundle install` 
4. `$ rails db:create`
5. `$ rails db:migrate` 
6. `$ rails db:seed`

## Tester les associations
Pour tester les associations tu peux taper dans ton terminal :
1. `$ rails console`
2. `$ Attendance.first.event.administrator.first_name` (va afficher le prénom de l'administrateur du premier event)
3. `$ Event.first.attendees` (va afficher les users qui participent au premier événement)
4. `$ User.first.events` (va afficher les événements créés par le 1er user, s'il y en a)
5. `$ Attendance.create(stripe_customer_id:"453122334", event_id:1, attendee_id:3)` (pour créer une nouvelle participation à un event)


Tu peux aller voir les emails envoyés ici : <http://www.yopmail.com?clodiap> (ceux qui ont été créés lors du seed)


![event](https://proxy.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F81%2Fe2%2F4c%2F81e24c8567ce0530fa3fb42f3bcc5ceb--teaching-memes-work-memes.jpg&f=1)


*Programme Ruby 💎 réalisé par **Claudia Partonnau** dans le cadre de la formation THP – The Hacking Project*.

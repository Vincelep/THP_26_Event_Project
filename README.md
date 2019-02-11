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
`$ rails console`
`$ Attendance.first.event.administrator.first_name` (va afficher le prénom de l'administrateur du premier event)
`$ Event.first.attendees` (va afficher les users qui participent au premier événement)
`$ User.first.events` (va afficher les événements créés par le 1er user, s'il y en a)



![gossip](https://proxy.duckduckgo.com/iu/?u=http%3A%2F%2Fimg.memecdn.com%2FThe-gossip-turkey_c_128800.jpg&f=1)


*Programme Ruby 💎 réalisé par **Claudia Partonnau** dans le cadre de la formation THP – The Hacking Project*.

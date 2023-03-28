# flutter_with_dio

A new Flutter project.

## Les differents packets
dependencies:

    - dio: ^5.0.0
    - freezed_annotation: ^2.0.3
    - json_annotation: ^4.6.0

dev_dependencies:
    
    - build_runner: ^2.1.11
    - freezed: ^2.0.4
    - json_serializable: ^6.3.1


Voir cet article pour l'écriture des modèles : [https://medium.flutterdevs.com/automatic-generate-json-serializable-in-flutter-4c9d2d23ed88](https://medium.flutterdevs.com/automatic-generate-json-serializable-in-flutter-4c9d2d23ed88)

lancer cette commande pour générer les les modèles, comme indiqué dans le lien
>flutter packages pub run build_runner build --delete-conflicting-outputs

Tous ces pacquets, sauf [dio](https://pub.dev/packages/dio) servira à la génération des modèles.

Il est possible d'écrire les modèles en utilisant aucun de ces packets. Voir un example dans le Readme du packet [freezed](https://pub.dev/packages/freezed)

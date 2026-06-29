# RoadBookMoto
iPhone roadbook application for Waze and CarPlay.

## Objectif Développer une application iPhone nommée **RoadBook Moto**. L'application sert de compagnon de route pour les motards utilisant **Waze** avec **Apple CarPlay** (notamment sur un EKIY M15). L'application ne remplace pas Waze. Elle pilote simplement les différentes étapes d'un roadbook et ouvre automatiquement Waze vers le prochain waypoint. --- 

# Technologies * Swift 6 * SwiftUI * iOS 18 minimum * Architecture MVVM * SwiftData uniquement pour la persistance de l'état * Aucune dépendance externe * GitHub * Développement assisté par Codex --- 

# Principe Le cœur de l'application est un moteur de roadbook. Les roadbooks sont stockés sous forme de fichiers JSON. Exemple : RoadBooks/ * Royan.json * Médoc.json * Dordogne.json Chaque roadbook contient une liste de waypoints (nom + coordonnées GPS). L'application lit ces fichiers. SwiftData sert uniquement à mémoriser : * le roadbook sélectionné * l'étape actuelle * les préférences utilisateur --- 

# Fonctionnement L'utilisateur choisit un roadbook. L'application affiche : * nom du roadbook * étape actuelle * nombre total d'étapes Un bouton **Continuer** ouvre automatiquement Waze vers le waypoint courant. Lorsque l'utilisateur valide l'étape, l'application passe automatiquement à la suivante. En cas de pause, la progression est conservée. --- 
# Roadbook initial Royan par l'Estuaire Waypoints : 1. Bourg 2. Blaye 3. Saint-Ciers-sur-Gironde 4. Mortagne-sur-Gironde 5. Talmont-sur-Gironde 6. Meschers-sur-Gironde 7. Royan Dans les versions suivantes, les noms des villes seront remplacés par des coordonnées GPS précises. --- 

# Versions prévues 
## V0.1 * affichage du roadbook * bouton Continuer * bouton Recommencer * ouverture de Waze * sauvegarde de la progression 
## V0.2 * Pause café * Étape suivante * Étape précédente * progression visuelle 
## V0.3 * plusieurs roadbooks 
## V0.4 * import GPX 
## V1.0 * découpage automatique d'un GPX en waypoints optimisés pour Waze * gestion intelligente de la progression * import/export de roadbooks * partage de roadbooks --- 

# Règles de développement Chaque commit doit correspondre à UNE seule fonctionnalité. Exemples : * Initial project structure * Add RoadBook model * Add JSON loader * Display roadbooks * Open Waze * Save navigation progress Ne jamais développer plusieurs fonctionnalités dans le même commit. Toujours privilégier un code simple, lisible, documenté et facilement maintenable. Avant chaque nouvelle fonctionnalité, vérifier que le projet compile. --- 

# État actuel du projet Le squelette de l'application est déjà créé. Structure actuelle : * Projet Xcode fonctionnel * SwiftUI * MVVM * SwiftData * HomeView * HomeViewModel * Modèle SwiftData minimal * Écran affichant "RoadBook Moto"

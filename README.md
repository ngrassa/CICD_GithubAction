┌─────────────────────────────────────────────────────────────────┐
│                         DÉCLENCHEUR                             │
│         Push ou Pull Request sur la branche "master"            │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      JOB 1 : BUILD                              │
├─────────────────────────────────────────────────────────────────┤
│ 1. Checkout      → Télécharge le code source                    │
│ 2. Set SHA       → Crée un tag unique (ex: c711dd9)             │
│ 3. Build image   → Construit l'image Docker                     │
│ 4. Save image    → Sauvegarde en fichier .tar                   │
│ 5. Upload        → Stocke le .tar pour le job suivant           │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      JOB 2 : PUSH                               │
├─────────────────────────────────────────────────────────────────┤
│ 1. Download      → Récupère le fichier .tar                     │
│ 2. Load image    → Charge l'image Docker                        │
│ 3. Login         → Connexion à Docker Hub                       │
│ 4. Push image    → Envoie l'image sur Docker Hub                │
└─────────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      JOB 3 : DEPLOY                             │
├─────────────────────────────────────────────────────────────────┤
│ 1. Checkout      → Télécharge le code source                    │
│ 2. Update YAML   → Modifie deployment.yaml avec nouveau tag     │
│ 3. Commit/Push   → Enregistre les changements sur GitHub        │
└─────────────────────────────────────────────────────────────────┘

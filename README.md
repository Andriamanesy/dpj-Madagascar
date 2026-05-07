# Debout pour la Justice Madagascar

Site Hugo multilingue du collectif Debout pour la Justice Madagascar.

## Dossiers stratégiques

### `content/fr/` et `content/en/`

C'est ici que les textes du site sont rédigés.

- `content/fr/` contient la version française.
- `content/en/` contient la version anglaise.

Hugo peut faire le lien entre un fichier français et son équivalent anglais lorsque les contenus ont le même nom ou une même référence de traduction.

### `static/docs/`

Ce dossier contient les documents publics téléchargeables, notamment les PDF des lettres officielles adressées aux institutions.

Exemples :

- Lettre PRRM
- Lettre HCDH
- Lettre Amnesty International
- Lettre ONDH
- Lettre au Ministère de la Justice

Sur le site, ces fichiers pourront être liés avec un bouton comme :

```markdown
[Télécharger le rapport officiel (PDF)](/docs/Lettre_HCDH.pdf)
```

### `assets/css/extended.css`

Ce fichier sert à injecter le design personnalisé du site : couleurs sobres, boutons rouges, encadrés institutionnels, fiches de rapports et éléments de suivi.

L'intérêt est de personnaliser le thème sans modifier directement son code source. Le thème peut ainsi être mis à jour plus facilement sans perdre l'identité visuelle du site.

### `archetypes/posts.md`

Ce fichier est le moule des futurs rapports.

Quand un nouveau rapport est créé avec Hugo, par exemple :

```bash
hugo new posts/cas-nom.md
```

Hugo préremplit automatiquement les champs importants :

```toml
status = 'En attente'
location = 'Madagascar'
severity = 'High'
```

Le rapport contient aussi des sections prêtes à compléter : résumé, informations clés, faits documentés, démarches entreprises, demandes du collectif et note de prudence.

## Tester le site

Après installation de Hugo :

```bash
hugo server -D
```

Le site sera disponible en local à l'adresse indiquée par Hugo dans le terminal.

Dans ce projet, vous pouvez aussi utiliser les raccourcis :

```bash
make serve
make build
make clean
```

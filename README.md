# Kvas Timer

Offline časovač intervalů pro kynutí / protahování a skládání kváskového těsta. Jeden statický HTML soubor, žádné závislosti, žádné síťové volání za běhu.

## Funkce

- nastavitelný počet intervalů a jejich délka (posuvník po 5 min, výchozí 25 min, jde zadat i vlastní hodnota)
- 9 melodií znělky (klasika i lidové/pracovní písně, vše volná díla) ve 4 délkách (3 / 5 / 10 / 20 s)
- odhad reálného hodinového času dokončení
- vibrace + Wake Lock (nechá obrazovku zapnutou během běhu)
- funguje 100 % offline, dá se přidat na plochu telefonu jako appka (PWA) nebo obalit do `.apk` přes [pwabuilder.com](https://www.pwabuilder.com)

## Lokální spuštění

Stačí otevřít `index.html` v prohlížeči — nic se nemusí instalovat ani buildit.

## Nahrání na GitHub

```bash
cd kvas-timer
git init
git add .
git commit -m "Kvas Timer - initial commit"
git branch -M main
git remote add origin git@github.com:<tvuj-github-ucet>/kvas-timer.git
git push -u origin main
```

(Pokud nemáš nastavené SSH klíče, použij HTTPS URL repozitáře, kterou dostaneš při vytvoření nového repa na GitHubu tlačítkem **New repository**.)

## Deployment přes Coolify

**Varianta A — Dockerfile (doporučeno, v repu je připravený):**

1. V Coolify: **+ New Resource → Application → Public/Private Repository** a vyber tenhle GitHub repozitář (u privátního repa přidej Coolify přes GitHub App/deploy key).
2. **Build Pack:** `Dockerfile` (Coolify by ho měl detekovat automaticky, protože je v rootu repa).
3. **Port:** `80`.
4. Nastav si doménu/subdoménu v záložce **Domains**.
5. **Deploy** — hotovo, appka běží za pár desítek sekund.

**Varianta B — Static Site (bez Dockerfilu):**

Pokud tvoje verze Coolify nabízí typ aplikace **Static Site**, stačí zvolit repozitář a jako build pack **Static**/**Nixpacks** — Dockerfile ani není potřeba, Coolify si sám najde `index.html` a naservíruje ho přes nginx.

## Licence

Kód appky si uprav a používej jak potřebuješ. Melodie znělek jsou přehrávány jako živě generovaný zvuk (Web Audio API), jde o úryvky volných/lidových skladeb (Beethoven, Mozart, Bach, Brahms, Pachelbel, tradiční lidové písně) — nejde o žádné nahrávky ani chráněný obsah.

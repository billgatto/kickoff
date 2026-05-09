# ⚽ Kickoff — App per gestire le partite di calcetto

## Avvio rapido con Docker

### 1. Build e avvio
```bash
docker compose up -d --build
```

### 2. Apri nel browser
```
http://localhost:8080
```

### 3. Ferma il container
```bash
docker compose down
```

---

## Installazione come PWA (Web App)

Una volta avviato il server, apri `http://localhost:8080` dal telefono (assicurati che il telefono e il PC siano sulla stessa rete Wi-Fi) e installa l'app:

- **Android (Chrome)**: tocca i ⋮ tre puntini → *"Aggiungi a schermata Home"*
- **iPhone (Safari)**: tocca ⎙ Condividi → *"Aggiungi a schermata Home"*

> Per accedere dal telefono usa l'IP locale del tuo PC, es: `http://192.168.1.x:8080`

---

## Struttura file

```
Kickoff.html          → App principale (React + Babel)
kickoff-manifest.json → Manifest PWA
kickoff-sw.js         → Service Worker (offline support)
kickoff-icon-192.png  → Icona app 192×192
kickoff-icon-512.png  → Icona app 512×512
nginx.conf            → Configurazione server nginx
Dockerfile            → Immagine Docker
docker-compose.yml    → Orchestrazione container
```

---

## Requisiti

- [Docker](https://www.docker.com/) + Docker Compose v2

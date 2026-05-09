# ── Build stage (non necessario per app statica, ma utile per future espansioni)
FROM nginx:alpine

# Copia i file dell'app nella cartella pubblica nginx
COPY Kickoff.html /usr/share/nginx/html/index.html
COPY Kickoff.html /usr/share/nginx/html/Kickoff.html
COPY kickoff-manifest.json /usr/share/nginx/html/kickoff-manifest.json
COPY kickoff-sw.js /usr/share/nginx/html/kickoff-sw.js
COPY kickoff-icon-192.png /usr/share/nginx/html/kickoff-icon-192.png
COPY kickoff-icon-512.png /usr/share/nginx/html/kickoff-icon-512.png
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

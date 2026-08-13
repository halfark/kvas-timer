FROM nginx:alpine

# Statická appka - jediný soubor index.html se vším potřebným (CSS + JS uvnitř)
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

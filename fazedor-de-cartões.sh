#!/bin/bash
# remover  linhas vazias
sed -i '/^$/d' ./*
# adicionar ao fim das linhas dos titulos o ponto e virgula
sed -i -E 's/([A-Z?])$/\1;/g' ./*
# remove o pular linhas que vem após o ponto e virgula
sed -z -i 's/[;]\n/;/g' ./*
# salva tudo em um arquivo somente para faciliar o import dentro do anki
cat ./* > ./saida-cards

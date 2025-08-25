#!/bin/bash

# Script para automatizar commit e push do repositorio local para o repositorio remoto.

# Perguntar dados
read -p "Digite o nome de usuário do GitHub: " usuario
read -p "Digite o nome do repositório: " repositorio
read -p "Digite a mensagem do commit: " mensagem

# Atualizar URL remota
git remote set-url origin git@github.com:$usuario/$repositorio.git

# Adicionar arquivos ao staging
git add .

# Criar commit com a mensagem
git commit -m "$mensagem"

# Enviar para o branch main
git push origin main

echo "✅ Repositório atualizado e enviado com sucesso para https://github.com/$usuario/$repositorio"


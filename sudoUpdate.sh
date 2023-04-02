#!/usr/bin/env bash

# chatGPT3: comando bash dentro do script que mostra toda linha de comando que é executada?
PS4='+ $(date "+%Y-%m-%d %T") $BASH_SOURCE:$LINENO: '
set -x

# Seu script aqui
# echo "Hello, world!"

# Remove pacotes não utilizados e seus arquivos de configuração
sudo apt-get autoremove --purge
# Limpa o cache de pacotes baixados e outros arquivos desnecessários
sudo apt-get clean
sudo apt-get autoclean
# Remove logs antigos
sudo rm -rf /var/log/*.log.old
# Remove arquivos temporários
sudo rm -rf /tmp/*
# Remove caches de pacotes de programas específicos (por exemplo, navegadores)
# Certifique-se de verificar quais pastas são seguras para remover antes de executar esses comandos
rm -rf ~/.cache/google-chrome/
rm -rf ~/.cache/mozilla/

# A opção -y é usada com `apt-get upgrade`, `apt-get dist-upgrade`
# e `apt-get autoremove` para responder "sim" automaticamente
# a todas as perguntas de confirmação que o apt pode fazer

# Atualiza o índice de pacotes disponíveis
sudo apt-get update
# Atualiza todos os pacotes instalados para as últimas versões disponíveis
sudo apt-get upgrade -y
# Atualiza pacotes que requerem atualizações de dependências ou remoções de pacotes antigos
sudo apt-get dist-upgrade -y
# Verifica se há pacotes corrompidos ou quebrados
sudo dpkg --audit
# Configura qualquer pacote parcialmente instalado ou mal configurado
sudo dpkg --configure -a
# Atualiza pacotes snap instalados
sudo snap refresh
# Verifica a integridade dos pacotes instalados
sudo dpkg --verify
# Limpa os pacotes antigos e desnecessários
sudo apt-get autoremove -y
# Limpa o cache de pacotes baixados
sudo apt-get clean
# Desativa o modo de depuração
set +x


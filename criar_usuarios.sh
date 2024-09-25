#!/bin/bash

echo "Executando script ..."
useradd convidado01 -m -c "usuário convidado para teste em sistema" -s /bin/bash -p $(openssl passwd conv123)
passwd convidado01 -e

useradd convidado02 -m -c "usuário convidado para teste em sistema" -s /bin/bash -p $(openssl passwd conv123)
passwd convidado02 -e

useradd convidado03 -m -c "usuário convidado para teste em sistema" -s /bin/bash -p $(openssl passwd conv123)
passwd convidado03 -e

useradd convidado04 -m -c "usuário convidado para teste em sistema" -s /bin/bash -p $(openssl passwd conv123)
passwd convidado04 -e

echo "script finalizado com sucesso..."

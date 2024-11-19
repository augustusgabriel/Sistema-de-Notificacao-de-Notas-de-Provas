#!/bin/bash

# Realizar as migrações
echo "Aplicando migrações..."
python manage.py migrate

# Coletar os arquivos estáticos, se necessário (caso esteja em produção, mas pode ser útil em desenvolvimento também)
# python manage.py collectstatic --noinput

# Iniciar o servidor
echo "Iniciando o servidor Django..."
python manage.py runserver 0.0.0.0:8000

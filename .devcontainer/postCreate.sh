#!/bin/bash
set -e

echo "🔧 Setting up Airflow..."

# Airflow Home
export AIRFLOW_HOME=/workspaces/airflow-codespaces/airflow_home
mkdir -p $AIRFLOW_HOME

# Install Airflow with constraints
pip install --upgrade pip
pip install "apache-airflow==2.9.1" --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.9.1/constraints-3.11.txt"

echo "🎉 Airflow installation complete."
echo "➡️ Run these commands to start Airflow:"
echo "airflow db migrate"
echo "airflow users create --username admin --password admin --firstname Admin --lastname User --role Admin --email admin@example.com"
echo "airflow scheduler &"
echo "airflow webserver --port 8080"

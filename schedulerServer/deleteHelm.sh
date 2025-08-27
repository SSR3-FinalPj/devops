#!/bin/bash  

helm uninstall scheduler -n dev-system

kubectl delete deployment airflow-service-scheduler -n dev-system
kubectl delete deployment airflow-service-webserver -n dev-system
kubectl delete deployment token-updater -n dev-system
kubectl delete pod airflow-worker-pod-template -n dev-system
kubectl delete serviceaccount airflow-service-sa -n dev-system
kubectl delete role airflow-service-role -n dev-system
kubectl delete rolebinding airflow-service-rolebinding -n dev-system
kubectl delete service scheduler-service -n dev-system
kubectl delete configmap airflow-service-config -n dev-system
kubectl delete job airflow-service-init -n dev-system
kubectl delete sealedsecret airflow-service-secrets -n dev-system
kubectl delete secret airflow-service-secrets -n dev-system



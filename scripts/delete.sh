#!/bin/bash

# Deletes the deployments and services from Kubernetes.

kubectl delete deployment book-catalog
kubectl delete service book-catalog
kubectl delete deployment inventory-management
kubectl delete service inventory-management

#!/bin/bash

echo "[1] Istio namespace 라벨 확인"
kubectl get ns demo --show-labels

echo "[2] nginx pod에 envoy-proxy 붙었는지 확인"
kubectl get pod -n demo -o jsonpath="{.items[*].spec.containers[*].name}"; echo

echo "[3] ALB Ingress 생성 상태"
kubectl get ingress -n demo

echo "[4] 노드 상태"
kubectl get nodes

echo "[5] Trace 확인 - 브라우저에서 확인:"
echo "👉 http://<ALB주소>/jaeger"

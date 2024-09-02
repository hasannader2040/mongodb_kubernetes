# MongoDB Kubernetes Deployment

This project deploys MongoDB on a Kubernetes cluster. The goal is to set up a MongoDB instance that runs within a Kubernetes environment, leveraging Kubernetes' container orchestration capabilities to manage scaling, availability, and reliability.

## Purpose

The purpose of this project is to simplify the deployment of a MongoDB database using Kubernetes, automating the management of database instances within a containerized infrastructure. This setup is ideal for applications that require a NoSQL database solution and benefit from the scalability and reliability provided by Kubernetes.

## How to Run the Code

### Prerequisites

- Ensure that your Kubernetes cluster is up and running.
- Install `kubectl` to manage your Kubernetes cluster.
- Install `helm` if using Helm charts for MongoDB deployment.

### Steps to Deploy MongoDB on Kubernetes

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/hasannader2040/mongodb_kubernetes.git
   cd mongodb_kubernetes
```
2. Navigate to the project directory:
   ```bash
cd <project-directory>
```


3. Apply Kubernetes configurations:
Apply the MongoDB deployment and service configurations using kubectl:

 ```bash
kubectl apply -f mongodb-deployment.yaml
kubectl apply -f mongodb-service.yaml

 ```

4. Verify the deployment:

Check the status of the pods to ensure MongoDB is running:
 ```bash
kubectl get pods
 ```
Verify the service is created and accessible:

 ```bash
kubectl get svc
 ```
5. Access MongoDB:

You can access the MongoDB shell within the running pod:
```bash
kubectl exec -it <mongo-pod-name> -- mongo
```
6. Check MongoDB Logs:

To check MongoDB logs, use the following command:
```bash
kubectl logs <mongo-pod-name>
```
## Tools Used
Kubernetes: For container orchestration and managing the MongoDB deployment.
**MongoDB** : A NoSQL database deployed in the Kubernetes cluster.
**YAML**: For Kubernetes resource configuration files.
**Helm**: (Optional) If you're using Helm charts for MongoDB deployment.
**Usage Examples**
**Checking MongoDB Logs**
To monitor the MongoDB logs, use:
```bash
kubectl logs <mongo-pod-name>
```
Accessing MongoDB Shell
To access the MongoDB shell from within the pod, use:
```bash
kubectl exec -it <mongo-pod-name> -- mongo
```
Additional Information
Ensure your Kubernetes cluster is up and running before deploying MongoDB.
Modify the YAML files (**mongodb-deployment** .yaml, **mongodb-service.yaml**) as needed to customize the deployment (e.g., changing replica counts, resource requests/limits).
If using Helm, customize the values.yaml file accordingly.


## Kubeadm Cluster Setup Scripts

Here is the supporting documentation and video demo.

1. [Documentation - Kubeadm Cluster Setup Guide](https://devopscube.com/setup-kubernetes-cluster-kubeadm/)
2. [Kubeadm workflow explanation and demo video](https://youtu.be/xX52dc3u2HU)

## 🚀 For Kubernetes Certification Aspirants

As part of our commitment to helping the DevOps community save money on Kubernetes Certifications, we continuously update the latest voucher codes from the Linux Foundation

🚀  CKA, CKAD, CKS, or KCNA exam aspirants can **save 30%** today using code **30COMTECHIES** at https://kube.promo/devops. It is a limited-time offer from the Linux Foundation.

The following are the best bundles to **save 40% (up to $788)** with code **FOURTH24CT**

- KCNA + KCSA + CKA + CKAD + CKS ($788 Savings): [kube.promo/kubestronaut](https://kube.promo/kubestronaut)
- CKA + CKAD + CKS Exam bundle ($528 Savings): [kube.promo/k8s-bundle](https://kube.promo/k8s-bundle)
- CKA + CKS Bundle ($355 Savings) [kube.promo/bundle](https://kube.promo/bundle)
- KCNA + CKA ( $288 Savings) [kube.promo/kcka-bundle](https://kube.promo/kcna-cka)
- KCSA + CKS Exam Bundle ($229 Savings) [kube.promo/kcsa-cks](https://kube.promo/kcsa-cks)
- KCNA + KCSA Exam Bundle ($203 Savings) [kube.promo/kcna-kcsa](https://kube.promo/kcna-kcsa)

>Note: You have one year of validity to appear for the certification exam after registration

## Kubernetes Learning Roadmap

If you are learning Kubernetes, check out the [kubernetes Learning Roadmap](https://github.com/techiescamp/kubernetes-learning-path)



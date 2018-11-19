# Artifact QuickStart (AWS Terraform)

This is a quickstart project to understand how an Artifact works with AWS and Terraform.

## What is an Artifact?
An artifact is a entity which gathers :
- Metadata (price, build_time, ...)
- Infrastructure as a code (terraform but later cloudformation or arm)
- Provisioning & Configuration (ansible, chef and salt are coming)
- Lifecycle (CI/CD)
- Manual & automatic actions (to let your team manage the application seamlessly)

You must see an artifact as a PaaS framework using the best DevOps technologies (terraform, CI/CD, ...). You can also use an artifact as a SaaS framework if you package the source code and the data of your application in it.

The artifact can be used by anyone who wants to have quickly their applications up and running on the cloud using the best of each cloud micro-services. Then, their team can manage the applications easily with a simple interface (see below).

## How does it work?
We have a cloud App Store (coming soon) where you can publish your artifacts or search for the best artifacts that suits your application needs (deploy a wordpress on docker with Azure or a static website with AWS S3 bucket).

We have also an interface (https://console.artifakt.io) where your team can deploy, destroy, duplicate and manage applications using public and private artifacts. We developed a serverless engine that run you automation scripts and apply your infrastructure quickly and securely on your cloud account (privacy by design).

## Artifact files structure
- Terraform files : Basic terraform structure (don't write any sensitive data as private key or password).
- .env : All variables used by your terraform files and your lifecycle CI/CD. Don't push this file (excluded in  .gitignore file), our engine generate it depending on the informations you provided during the deployment wizard.

- .artifakt.yml : Configuration of your artifact (check the comments in this file to learn more).
- src : The source code used by this quickstart project. Source code could be also retrieved using input variables.

## How to test it locally?

Copy the `.env.dist` into `.env` :

```bash
$ cp .env.dist .env
```

Fill your credentials and variables values in the .env file then run this command :

```bash
$ . ./.env
``` 

Then run terraform using this command :

```bash
$ terraform apply
```

Our engine will execute the same kind of instructions.

## Any trouble?
If you have any questions or trouble, you can create an issue on the GitHub repository.

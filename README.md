# Convert2Arabic – DevOps CI/CD Portfolio Project

This repository demonstrates a complete CI/CD pipeline using Jenkins and Docker
with a dynamically created build agent and a simple static web application.

## Project Goal
To showcase DevOps fundamentals including:
- CI/CD automation
- Dynamic infrastructure
- Secure configuration handling
- Clean repository structure

## Tech Stack
- Jenkins (Declarative Pipeline)
- Docker (Dynamic Build Agent)
- Ubuntu 22.04
- HTML / CSS / JavaScript

## CI/CD Workflow
1. Jenkins builds a custom Docker image used as a temporary agent
2. A container is started dynamically per build
3. Application files are deployed to the web directory
4. All resources are cleaned up after execution

## Repository Structure

Git → Jenkins → Docker Agent → Deploy → Cleanup


## Local Usage (Optional)

For demonstration purposes, a Makefile is provided to standardize
common commands:

```bash
make build
make deploy
make clean

##  Proxy Configuration (Enterprise Best Practice)

Important Note
This project is designed to be safe for public GitHub repositories.
In environments with restricted network access, proxy settings are NOT hardcoded in the Dockerfile or repository.

✅ Recommended Approach
Proxy values are configured directly in Jenkins:
Path:
Job → Configure → Environment variables
Example variables:
HTTP_PROXY
HTTPS_PROXY
These variables are:
Injected at runtime
Managed outside the codebase
Excluded from version control for security reasons

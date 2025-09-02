# Thermophysical-Property-Melting-Point
Your goal is to build ML models that predict melting point in temperature units of Kelvin for organic compounds given molecular descriptors.

---

## Architecture

```mermaid

```

---

## AWS Server Setup

### Install AWS-CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws
rm awscliv2.zip
aws --version
```

### Configure AWS-CLI

```bash
aws configure
```

### Start and connect to Dev VM

```bash
aws ec2 start-instances --instance-ids i-xxxxxxxxxxxxxxxxx
aws ec2 describe-instances --instance-ids i-xxxxxxxxxxxxxxxxx --query "Reservations[0].Instances[0].PublicIpAddress" --output text
```

### Stop Dev VM

```bash
aws ec2 stop-instances --instance-ids i-xxxxxxxxxxxxxxxxx
```

### Setup S3

```bash
aws s3api create-bucket --bucket "srushanth-baride" --region "us-east-1" --create-bucket-configuration LocationConstraint="us-east-1"

aws s3api head-bucket --bucket srushanth-baride
aws s3api put-object --bucket srushanth-baride --key thermophysical-property-melting-point/
aws s3 cp ./data s3://srushanth-baride/thermophysical-property-melting-point/ --recursive
```

---

## Prerequisites

Install required tools:

```bash
sudo apt install unzip
```

---

## Setup `uv`

### Using `wget`

```bash
wget -qO- https://astral.sh/uv/install.sh | sh
```

### Using `curl`

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Using `pip`

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

```bash
uv init .
uv python install 3.12.3
uv python pin 3.12.3
uv venv
source .venv/bin/activate
uv sync
```

---

## Citation

If you use this project, please cite it as follows:

```bibtex
@misc{melting-point,
    author = {Frank Mtetwa and John Hedengren},
    title = {Thermophysical Property: Melting Point},
    year = {2025},
    howpublished = {\url{https://kaggle.com/competitions/melting-point}},
    note = {Kaggle}
}
```

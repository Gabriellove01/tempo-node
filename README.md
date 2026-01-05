# README.md for Tempo Node Manager

# Tempo Node Manager

This repository contains scripts to manage a Tempo Node, including installation, starting/stopping the node, managing your node identity, wallet setup for validators, and backup/restore of your sensitive data.

> ⚠️ **Important:** Your node identity, wallet, and backups are stored locally in `~/.tempo` and `tempo-backups/`. These are **never pushed to GitHub**, protected by `.gitignore`. Always keep backups safe.

---

## **1. Clone the repository**

Open Git Bash or Ubuntu terminal and run:


cd /path/to/your/folder
git clone https://github.com/Gabriellove01/tempo-node.git
```

This will create a folder called `tempo-node` with all the scripts.

---

## **2. Navigate into the repo folder**


cd tempo-node
```

---

## **3. Make scripts executable**


chmod +x *.sh
```

This allows you to run all shell scripts including `menu.sh`.

---

## **4. Launch the menu**

```bash
./menu.sh
```

You will see a menu like this:

```
====== Tempo Node Manager ======
1) Install Node
2) Start Node
3) Stop Node
4) Show Node ID
5) Backup Identity
6) Restore Identity
7) Validator / Wallet Setup
8) Update Node
0) Exit
```

---

## **5. Menu Options Explained**

### **1) Install Node**

* Installs system dependencies required to run a Tempo node (Docker, Docker Compose, Git, Curl, etc.)
* Pulls the latest Tempo node Docker image
* Run this first on a fresh machine

### **2) Start Node**

* Launches the Tempo node
* Will automatically initialize your node identity if it doesn’t exist yet

### **3) Stop Node**

* Stops your running Tempo node (if applicable)

### **4) Show Node ID**

* Displays your unique Node ID
* This is generated once and stays locked for identification on the network

### **5) Backup Identity**

* Creates a backup of your `.tempo` folder (identity + wallet)
* Stored in `tempo-backups/`
* Recommended after first-time setup

### **6) Restore Identity**

* Restores your identity from a backup
* Overwrites current `.tempo` folder
* Safe way to recover Node ID or wallet if lost

### **7) Validator / Wallet Setup**

* Set up your wallet address and private key for future validator rewards
* Stored locally in `.tempo/config/wallet.env`
* Private keys are kept safe with strict permissions

### **8) Update Node**

* Placeholder to update your node software
* Can be modified in future releases to pull latest Docker images or scripts

### **0) Exit**

* Exit the menu safely

---

## **6. Best Practices**

* **Never push `.tempo` or `tempo-backups/` to GitHub** — they contain sensitive information
* Always **backup your identity** after setup
* Use GitHub for code only, not for private keys or node identity

---

## **7. Updating Your Local Repo**

To pull updates from GitHub:

cd /path/to/tempo-node
git pull origin main
```

* `.gitignore` ensures your local identity and wallets remain untouched

---

## **8. License**

Add your preferred license here if needed.

## How to Self-Delegate Rewards & Commision

### Step 1
 - download auto_delegate.sh

### Step 2
 - make file executable : **chmod +x auto_delegate.sh**

### Step 3
 - replace default values: 
 
    **address**=<add_wallet_address>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| ex: desmos1...    
    **operatorAddress**=<validator_address>   | ex: desmosvaloper...   
    **coin**=<coin_denom> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| ex: udaric    
    **binary**=<binary_name>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ex: desmos    
    **fees**=250${coin}    
    **keyName**=<key_name>
    
### Step 4
 - run script: **./auto_delegate.sh** or **bash auto_delegate.sh**

### Exit terminal
- simply close the the terminal window or **ctrl b + d**

_*ps: this script is working only for single password keyring_

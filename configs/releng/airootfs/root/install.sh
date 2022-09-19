modprobe -r pcspkr
timedatectl set-timezone Asia/Hong_Kong

systemctl enable acpid --now
systemctl enable bluetooth --now
systemctl enable NetworkManager --now

pacman-key --init
pacman-key --populate

systemctl enable ly --now

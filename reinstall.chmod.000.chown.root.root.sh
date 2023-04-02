#!/usr/bin/env bash
#sudo apt-get install --reinstall apt
#sudo apt-get install --reinstall gdm3
#sudo apt-get install --reinstall procps


#mount /dev/sda3 /mnt
#mount -t proc proc /mnt/proc
#mount --bind /dev /mnt/dev
#chroot /mnt


# fonte: https://unix.stackexchange.com/questions/128046/chroot-failed-to-run-command-bin-bash-no-such-file-or-directory:
#chroot /mnt/somedir /usr/bin/bash

#sudo fsck -f -y /dev/sda3

# fonte: chatGPT3: pergunta: além do `fsck` que ferramenta posso usar para verificar o disco e arrumar? no linux, o objetivo final é arrumar qualquer problema que apareça, quais comandos eu uso?

#Existem outras ferramentas que podem ser usadas em conjunto com o fsck para verificar e arrumar problemas no disco, dependendo do sistema de arquivos que está sendo usado. Alguns exemplos incluem:

#badblocks: é uma ferramenta que verifica o disco em busca de blocos defeituosos. Pode ser usado em conjunto com o fsck para marcar setores defeituosos no disco.

#smartctl: é uma ferramenta para monitorar e analisar as informações do sistema de disco rígido, incluindo a saúde geral do disco e informações de desempenho.

#e2fsck: é uma ferramenta específica para o sistema de arquivos ext2, ext3 e ext4 do Linux. Ela é usada para verificar e arrumar problemas nos sistemas de arquivos ext.

#xfs_repair: é uma ferramenta específica para o sistema de arquivos XFS do Linux. Ela é usada para verificar e arrumar problemas nos sistemas de arquivos XFS.

#Para verificar e arrumar problemas no disco, pode ser necessário usar uma combinação dessas ferramentas. Por exemplo, você pode usar o badblocks para verificar o disco em busca de setores defeituosos, o smartctl para verificar a saúde geral do disco e o fsck ou e2fsck para verificar e arrumar problemas no sistema de arquivos. É importante lembrar que essas ferramentas devem ser usadas com cuidado e, se possível, com a ajuda de um profissional qualificado para evitar a perda de dados.




# `mount` => ```terminal
# sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,relatime)
# proc on /proc type proc (rw,nosuid,nodev,noexec,relatime)
# udev on /dev type devtmpfs (rw,nosuid,relatime,size=2845164k,nr_inodes=711291,mode=755,inode64)
# devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,gid=5,mode=620,ptmxmode=000)
# tmpfs on /run type tmpfs (rw,nosuid,nodev,noexec,relatime,size=577428k,mode=755,inode64)
# /dev/sda3 on / type ext4 (rw,relatime)
# securityfs on /sys/kernel/security type securityfs (rw,nosuid,nodev,noexec,relatime)
# tmpfs on /dev/shm type tmpfs (rw,nosuid,nodev,inode64)
# tmpfs on /run/lock type tmpfs (rw,nosuid,nodev,noexec,relatime,size=5120k,inode64)
# cgroup2 on /sys/fs/cgroup type cgroup2 (rw,nosuid,nodev,noexec,relatime,nsdelegate,memory_recursiveprot)
# pstore on /sys/fs/pstore type pstore (rw,nosuid,nodev,noexec,relatime)
# bpf on /sys/fs/bpf type bpf (rw,nosuid,nodev,noexec,relatime,mode=700)
# systemd-1 on /proc/sys/fs/binfmt_misc type autofs (rw,relatime,fd=29,pgrp=1,timeout=0,minproto=5,maxproto=5,direct,pipe_ino=18452)
# debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
# hugetlbfs on /dev/hugepages type hugetlbfs (rw,relatime,pagesize=2M)
# tracefs on /sys/kernel/tracing type tracefs (rw,nosuid,nodev,noexec,relatime)
# mqueue on /dev/mqueue type mqueue (rw,nosuid,nodev,noexec,relatime)
# fusectl on /sys/fs/fuse/connections type fusectl (rw,nosuid,nodev,noexec,relatime)
# configfs on /sys/kernel/config type configfs (rw,nosuid,nodev,noexec,relatime)
# ramfs on /run/credentials/systemd-sysusers.service type ramfs (ro,nosuid,nodev,noexec,relatime,mode=700)
# ramfs on /run/credentials/systemd-tmpfiles-setup-dev.service type ramfs (ro,nosuid,nodev,noexec,relatime,mode=700)
# ramfs on /run/credentials/systemd-sysctl.service type ramfs (ro,nosuid,nodev,noexec,relatime,mode=700)
# /var/lib/snapd/snaps/bw_47.snap on /snap/bw/47 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/bare_5.snap on /snap/bare/5 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/chromium_2406.snap on /snap/chromium/2406 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/chromium_2415.snap on /snap/chromium/2415 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core18_2714.snap on /snap/core18/2714 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core18_2721.snap on /snap/core18/2721 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core20_1828.snap on /snap/core20/1828 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core20_1852.snap on /snap/core20/1852 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core22_547.snap on /snap/core22/547 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/core22_583.snap on /snap/core22/583 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/cups_872.snap on /snap/cups/872 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/firefox_2453.snap on /snap/firefox/2453 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/gnome-3-38-2004_119.snap on /snap/gnome-3-38-2004/119 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/firefox_2517.snap on /snap/firefox/2517 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/gnome-3-38-2004_137.snap on /snap/gnome-3-38-2004/137 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/gnome-42-2204_68.snap on /snap/gnome-42-2204/68 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/gnome-42-2204_65.snap on /snap/gnome-42-2204/65 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/gtk-common-themes_1535.snap on /snap/gtk-common-themes/1535 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snap-store_935.snap on /snap/snap-store/935 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snapd_18357.snap on /snap/snapd/18357 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snap-store_959.snap on /snap/snap-store/959 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snapd_18596.snap on /snap/snapd/18596 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snapd-desktop-integration_49.snap on /snap/snapd-desktop-integration/49 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /var/lib/snapd/snaps/snapd-desktop-integration_71.snap on /snap/snapd-desktop-integration/71 type squashfs (ro,nodev,relatime,errors=continue,threads=single,x-gdu.hide,x-gvfs-hide)
# /dev/sda3 on /var/snap/firefox/common/host-hunspell type ext4 (ro,noexec,noatime)
# binfmt_misc on /proc/sys/fs/binfmt_misc type binfmt_misc (rw,nosuid,nodev,noexec,relatime)
# ramfs on /run/credentials/systemd-tmpfiles-setup.service type ramfs (ro,nosuid,nodev,noexec,relatime,mode=700)
# tmpfs on /run/snapd/ns type tmpfs (rw,nosuid,nodev,noexec,relatime,size=577428k,mode=755,inode64)
# tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=577424k,nr_inodes=144356,mode=700,uid=1000,gid=1000,inode64)
# nsfs on /run/snapd/ns/cups.mnt type nsfs (rw)
# portal on /run/user/1000/doc type fuse.portal (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
# gvfsd-fuse on /run/user/1000/gvfs type fuse.gvfsd-fuse (rw,nosuid,nodev,relatime,user_id=1000,group_id=1000)
# nsfs on /run/snapd/ns/snapd-desktop-integration.mnt type nsfs (rw)
# /dev/sdb4 on /media/gabriel/writable type ext4 (rw,nosuid,nodev,relatime,errors=remount-ro,uhelper=udisks2)
# /dev/sdb1 on /media/gabriel/Ubuntu 23.04 amd64 type iso9660 (ro,nosuid,nodev,relatime,nojoliet,check=s,map=n,blocksize=2048,uid=1000,gid=1000,dmode=500,fmode=400,iocharset=utf8,uhelper=udisks2)
# nsfs on /run/snapd/ns/snap-store.mnt type nsfs (rw)
# ```


eval $(keychain --eval --systemd --agents ssh,gpg $(ls -1 ~/.ssh | ag id_ | grep -v \.pub$))

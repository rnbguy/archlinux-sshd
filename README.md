# archlinux-sshd

Archlinux docker with sshd

## Environment variable

- `SSH_PUBKEY`: Set it to `cat ~/.ssh/id_*.pub` of your local machine

## Instructions

### Deploy on remote

```
docker run -it --env "SSH_PUBKEY=ssh-XXX XXXXXX remote" rnbguy/archlinux-sshd
```

### SSH from local

```
ssh root@remote-ip
```

---
layout: post
title: "bash/zsh functions for easier SSH signing and verification"
category: [english]
tags: [ssh]
---

_I have been using SSH signed git commits from 8 months and started signing things with my SSH key instead of PGP keys and thought to share how to do that more easily_

If you didn't know that SSH can be used for this, I suggest reading

- [Andrew Ayer: It's Now Possible To Sign Arbitrary Data With Your SSH Keys](https://www.agwa.name/blog/post/ssh_signatures)
- [Caleb Hearth: Signing Git Commits with Your SSH Key](https://calebhearth.com/sign-git-with-ssh) ([web.archive.org](https://web.archive.org/web/20211117182628/https://calebhearth.com/sign-git-with-ssh))

## Signing

Usually you do `ssh-keygen -Y sign -f MYPUBLICKEY -n TYPE filename`, but that is a bit of effort, why not make an alias for it? In my shellrc's I have:

```bash
alias ssh-sign-file="ssh-keygen -Y sign -f ~/.ssh/signingkey.pub -n file"
```

As I don't change which key I use so often, I can export my public key to `~/.ssh/signingkey.pub`
or symlink it to the right place and now when I need to sign something, I can just `ssh-sign-file file.txt`
to generate a `file.txt.sig`. Of course this assumes that I always sign files, but I don't remember signing other things as git handles the commits for me.

Thus to sign file, I simply say `ssh-sign-file hello.txt` to receive `hello.txt.sig` containing my signature.

```
Signing file hello.txt
Write signature to hello.txt.sig
```

## Verifying

There isn't much point in signing things, unless you are able to verify them. The command for this is `ssh-keygen -Y verify -f $allowed_signers -I $EMAIL -n file -s SIGNATUREFILE < $2`, isn't that a bit much to keep in mind? In my opinion it is and thus the function gets a bit more complicated:

```bash
sshAllowedSigners=$HOME/src/gitea.blesmrt.net/Mikaela/ssh-allowed_signers/allowed_signers
ssh-verify-file () {
    echo "$1 ${2:?Usage: ssh-verify-file <email> <file-to-verify>}" > /dev/null
    ssh-keygen -Y verify -f $sshAllowedSigners -I $1 -n file -s $2.sig < $2
}
```

First I specify where is my `allowed_signers` file so I don't have to repeat it and in case I misuse the function, it reminds me how to use it:

```bash
% ssh-verify-file hello.txt
ssh-verify-file:1: 2: Usage: ssh-verify-file <email> <file-to-verify>
```

I again don't remember verifying other types of files as git handles it for me and I think it's a safe assumption that the signature ends to `.sig`.

So to use it properly and verify the previously signed file `ssh-verify-file noreply@aminda.eu hello.txt`

```
Good "file" signature for noreply@aminda.eu with ED25519 key SHA256:y2OpGEbett3Fqn8XFrP0X4mWfCVKf4rWkxERzqPY81U
```

## Extra: having git handle it for me

When git is configured properly with `gpg.ssh.allowedSignersFile` the usual git verification commands work with SSH as well:

- `git log --show-signature` for the usual git log with signatures visbile
- `git verify-tag 1.0` for verifying a specific tag signature.
- `git verify-commit HEAD` to verify the latest commit signature or just to see that git signing is working.

Isn't the last command again effort? What if I could just say `git verify`?

```
% git verify
Good "git" signature for *@mikaela.info with RSA key SHA256:CXLULpqNBdUKB6E6fLA1b/4SzG0HvKD19PbIePU175Q
```

This is possible too, `git config --global alias.verify verify-commit HEAD`

<h1 align="center">
 <img alt="zpass" src="https://github.com/disc-8/zpass/assets/130178512/c32de281-179b-4d3d-8f46-d95472dca6fc">
</h1><p align="center">
 <sup>A reasonably secure password generator and "manager"</sup>
</p>

>[!WARNING]
> Try to hide that you are using `zpass` from potential adversaries and public forums, as it will make it ***easier to crack your passwords***, putting focus onto cracking your master password.
>
> If you're going to suggest to anyone to use it, say that you're "still considering it", as to not reveal it.
>
> It will still be ***insanely hard*** to crack though, but it's better to have that extra layer of security.

---

`zpass` is a password generator and "manager" that uses a plain text input, like an **username** and **website name** to make an uncrackable[^1] password.

It doesn't behave like a traditional password manager that generates random passwords into an encrypted file, which is vulnerable to data loss, which will make you lose all your accounts without a backup.

Acting as a "procedural" password generator, it provides a memorable way to generate strong passwords without worrying about data loss, as all passwords are reproducibly made on the go.

>**[tl;dr]:** It makes passwords in a non-random, yet secure way, so you can get your passwords without saving them.

# Features
* Zero data stored anywhere
* Simple to use
* Minimal, very small amount of dependencies
  * `bash`, or other POSIX compliant shell
  * `xxd`
  * `openssl`, or other crypto toolset that provides `sha###hmac`
* Overkill security

<details>
<summary><b>Password strength test</b></summary>
<sup>to reproduce: <code>$ zpass test test</code>, using master password <code>test</code>.</sup>

>https://www.antivirus.promo/password-strength-checker
![antivirus.promo](https://github.com/disc-8/zpass/assets/130178512/074e5b07-8a43-435e-871c-32ad1ec52399)
</details>

# Usage
 ![usage example](https://github.com/disc-8/zpass/assets/130178512/360a4819-3df7-4b38-a59b-3294fafc6ff8)

>[!TIP]
> **This is more of a general password tip than a `zpass` one, but it is aspecially useful without a file-based password manager.**
>
> If you use multiple e-mails for multiple accounts on a service **(AS YOU SHOULD)**, note them down, preferrably on paper in eg. a safe so you don't forget what username corresponds to what e-mail
>
> We plan on introducing an actual managing system into `zpass`, although it would nullify it's key feature.

# Installation
>[!NOTE]
> To run `zpass` on Windows, install WSL2 by running `wsl --install` in Powershell, then in an Ubuntu terminal continue from Linux instructions.
## Linux
> Run these commands in the terminal:
  * `wget https://github.com/disc-8/zpass/raw/main/zpass.sh`
  * `chmod +x zpass.sh`
  * `mv zpass.sh /usr/local/bin/zpass`

You can now run `zpass` in the command line.

**PROFIT!**

---

If you find this script useful, please consider donating:

<a href='https://ko-fi.com/disc8' target='_blank'><img height='35' style='border:0px;height:46px;' src='https://az743702.vo.msecnd.net/cdn/kofi3.png?v=0' border='0' alt='Buy Me a Coffee at ko-fi.com' />

<details>
   <summary>Planned features</summary>

- [ ] Browser extension
- [ ] Webapp implementation
- [ ] Aliases - a more traditional way to store your usernames, but not your passwords.
  
</details>

> Shoutout to <a href="https://github.com/jclopes/zpass3">jclopes</a>, who had the LITERAL 1:1 SAME IDEA, WITH THE SAME PROJECT NAME, months before I even considered making this</sup>

[^1]: theoretically it is crackable, but the Sun will explode you get compromised.


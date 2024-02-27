<h1 align="center">🔒 zpass 🔑</h1>
<p align="center">
   <sup>A reasonably secure password generator and "manager"</sup>
</p>

*zpass* is a password generator and "manager" that uses a plain text, like an **username** and **website name** to make an uncrackable* password.

It doesn't behave like a traditional password manager, that saves complex passwords into an encrypted file, which if it gets corrupted or deleted, all your accounts are gone,
rather acting as a "procedural" password generator, which turns plain text input (and a master password for security) into pseudorandom data using HMAC SHA digests, making very tough passwords that are very easy to remember.

## Features
* Simple to use
* Zero data stored
* Overkill security

## Usage

`$ zpass username example.com`

# Installation
## Windows
  * Install Ubuntu on WSL2
  * Continue from Linux instructions
## Linux
  * `wget https://github.com/disc-8/zpass/raw/main/zpass.sh`
  * `chmod +x zpass.sh`
  * `mv zpass.sh /usr/local/bin/zpass`
  * **PROFIT!**

If you find this script useful, please consider donating:

<a href='https://ko-fi.com/disc8' target='_blank'><img height='35' style='border:0px;height:46px;' src='https://az743702.vo.msecnd.net/cdn/kofi3.png?v=0' border='0' alt='Buy Me a Coffee at ko-fi.com' />

# Tests

<sup>to reproduce: `$ passw test test`, using master password `test`.</sup>
* https://www.antivirus.promo/password-strength-checker
![antivirus.promo](https://github.com/disc-8/zpass/assets/130178512/074e5b07-8a43-435e-871c-32ad1ec52399)
* https://www.passwordmonster.com/
 ![passwordmonster](https://github.com/disc-8/zpass/assets/130178512/9625eb84-bf88-48eb-a982-8d200bc3484e)
* https://www.security.org/how-secure-is-my-password/
![security.org](https://github.com/disc-8/zpass/assets/130178512/68da3c3b-61e0-454c-8e68-a8c37ca3d964)

# Planned
* Browser extension
* Webapp implementation

<sup>* *theoretically it is crackable, but the Sun will explode you get compromised.*</sup>


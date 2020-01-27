---
id: openSSL-set-up
title: openSSL set up
sidebar_label: openSSL set up
TODO: Installing OpenSSL from sources on various distros
TODO: Upgrading/Downgrading openssl on any 
TODO: Add Cross references
---

## Open SSL on Windows

OpenSSL for Windows is availble via Third party libraries.

[Please refer here for more details:](https://wiki.openssl.org/index.php/Binaries)

## Environment for this Tutorial:

- Ubuntu 18.04
- OpenSSL 1.1.1 LTS

> Steps should be similar for all Linux/Unix based Distros

## OpenSSL Installation

### Check OpenSSL

```bash
# openssl version
bash: openssl: command not found
```

If openSSL is not installed, use following commands:

### Install OpenSSL on Ubuntu

At the time of this writing, OpenSSL 1.1.1 is availble as apt-packages on Ubuntu 18.04. So we shall be able to install the packages using APT package Manager.

Use following commands: 

```bash
# apt-get update
# apt-get install openssl

# openssl version  
OpenSSL 1.1.1  11 Sep 2018

# which openssl
/usr/bin/openssl
```

To get complete version information, use the -a switch:

```bash
# openssl version -a
OpenSSL 1.1.1  11 Sep 2018
built on: Tue Nov 12 16:58:35 2019 UTC
platform: debian-amd64
options:  bn(64,64) rc4(16x,int) des(int) blowfish(ptr) 
compiler: gcc -fPIC -pthread -m64 -Wa,--noexecstack -Wall -Wa,--noexecstack -g -O2 -fdebug-prefix-map=/build/openssl-kxN_24/openssl-1.1.1=. -fstack-protector-strong -Wformat -Werror=format-security -DOPENSSL_USE_NODELETE -DL_ENDIAN -DOPENSSL_PIC -DOPENSSL_CPUID_OBJ -DOPENSSL_IA32_SSE2 -DOPENSSL_BN_ASM_MONT -DOPENSSL_BN_ASM_MONT5 -DOPENSSL_BN_ASM_GF2m -DSHA1_ASM -DSHA256_ASM -DSHA512_ASM -DKECCAK1600_ASM -DRC4_ASM -DMD5_ASM -DAES_ASM -DVPAES_ASM -DBSAES_ASM -DGHASH_ASM -DECP_NISTZ256_ASM -DX25519_ASM -DPADLOCK_ASM -DPOLY1305_ASM -DNDEBUG -Wdate-time -D_FORTIFY_SOURCE=2
OPENSSLDIR: "/usr/lib/ssl"
ENGINESDIR: "/usr/lib/x86_64-linux-gnu/engines-1.1"
Seeding source: os-specific
```

- `OPENSSLDIR: "/usr/lib/ssl"`: OpenSSL looks for its configuration and certificates
- `ENGINESDIR: "/usr/lib/x86_64-linux-gnu/engines-1.1"`: OpenSSL Runtime engine configuration

Please note `/usr/lib/ssl` location is an alias for `/etc/ssl` in case of Ubuntu where it keeps TLS-related files.

```bash
lrwxrwxrwx  1 root root   14 Nov 12 16:58 certs -> /etc/ssl/certs/
drwxr-xr-x  2 root root 4096 Jan 17 09:45 misc/
lrwxrwxrwx  1 root root   20 Nov 12 16:58 openssl.cnf -> /etc/ssl/openssl.cnf
lrwxrwxrwx  1 root root   16 Nov 12 16:58 private -> /etc/ssl/private/
```

The `misc/` folder contains a few supplementary scripts, the most interesting of which are the scripts that allow you to implement a private certification authority (CA).


# Whitebox Review

## Passwords

### Linux Users
- On all machines the `root` password is set to `This is an administrator password you hopefully won't guess ;)` and the `administrator` to `Very very hard password`.

### Firewall Admin Interfaces

- `fw-1.imovies.ch` has the user `admin` with the password `Zjqv9G3Jvcy@4gy9gGAsWjYRcy@AevY-yY4-y8LP`
- `fw-2.imovies.ch` has the user `admin` with the password `F8nMgkeBiZ6c.mY!qG_TQhkqxUDxnPgKXQuCdrfx`

### MySQL Database

There are two users in the database:
- username: `root`, password: `+uFpEuX6H3NcH6pfoe1lcgHCUO0CzfvE`
- username: `Zc7GyClnVz/XSs+z`, password: `cGhPe6mKUtdNyq816FAcXuq/UInbhAC5`

where the latter is used by the web app.

## Keys

All keys used for symmetric and asymmetric encryption can be found in `keys.zip`. The folders named after the hostnames contain the private keys and certificates that is used by the respective machine to authenticate the logs and decrypt the received web traffic.

The file `ca.imovies.ch.aes-256.key` in `backup-keys` is the symmetric key that is used by `ca.imovies.ch` to encrypt the backups.

## Firewalls

- The admin interface of the firewall can be accessed from within `192.168.0.0/24` and `172.16.0.0/24` respectively by entering `fw-1.imovies.ch` or `fw-2.imovies.ch` in a browser. Hence the easiest way to access them is to "move" a machine in these two networks by setting the VirtualBox Network adapter to either `ASLProject:Servers` for `192.168.0.0/24` or `ASLProject:DataCenter` for `172.16.0.0/24`.
- The firewall password can be reset to `pfsense` by entering 3 in the virtual box window of the respective firewall.


## Configuration Files

You can either inspect the files on the machines or also look into `setup.zip` which contains all configuration files and scripts when used to set up the systems.

## Source Code

The code is split in two zips, one containing the code for the frontend that is running on `imovies.ch` and one containing the code for the backend that is running on `ca.imovies.ch`.

In addition there's a backup script that is in `setup.zip` together with the configuration files.

### Frontend
The code for the frontend can be found in `ca-frontend.zip`. It is written in [React](https://reactjs.org/) using [Next.js](https://nextjs.org/).

### Backend
The code for the backend can be found in `ca-backend.zip`. It is written in [Node.js](https://nodejs.org) using [NestJS](https://nestjs.com/).

### Setup scripts & Backup
All remaining scripts such as the backup script can be found in `setup.zip`. The scripts that set up a machine are in the `./setup` folder.

## Files

### .enc Files

The encrypted files are denoted with the extension `.enc`. It is a tar containing the IV and the actual encrypted file. Hence you first have to extract the tar and then decrypt the file using the IV and the decryption key (`ca.imovies.ch.aes-256.key`).

### CA files

On `ca.imovies.ch` all CA related files are stored in `/opt/CA`.

### Applications

The frontend files can be found in `/srv/asl-ca-frontend/out` on the webapp machine whereas the backend is located at `/opt/pm2/asl-ca-backend`. The backup daemon is stored in `/opt/backup` on the CA machine.

### Logs

On all machines, the log files are stored in `/var/log`. On the backup server, there are two additional folders `ca` and `imovies` that contain the logs for `ca.imovies.ch` and `imovies.ch`, respectively.

### Backups

The current backup is stored in `/home/ca-backup` and `/opt/versioning/ca.imovies.ch`. The latter folder also contains minutely versioned backups.
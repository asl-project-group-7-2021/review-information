# Blackbox Review

All machines by default use the US keyboard layout. To change it run `dpkg-reconfigure keyboard-configuration` as `root`.

## Passwords

To log in on the client you can use the two users

- username: `client`, password: `client`
- username: `root`, password: `root`

## CA Administrator

A valid TLS certificate for a CA administrator already has been added to Firefox. Hence you should be able to log in using this certificate without any further configuration.

## Administrator functionality

An (unencrypted) ssh certificate is locally installed for the client user s.t. you can verify that remote administration via SSH is possible.

It suffices to enter `ssh imovies.ch`, `ssh ca.imovies.ch` or `ssh backup.imovies.ch` in a terminal when logged in as `client`.

### Connecting to the firewall administration interface

Run the scripts `fw1.sh` or `fw2.sh` and connect to https://fw-1.imovies.ch:8080 and https://fw-2.imovies.ch:8081, respectively. In Firefox there are also bookmarks for this.

## Final Words

Good luck!

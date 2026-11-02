# Firewall Configuration

This document explains the firewall commands used to protect the server using UFW (Uncomplicated Firewall).

## 1. Allow SSH

First, SSH access was allowed so that administrators could continue to manage the server.

```bash
sudo ufw allow ssh
```

This allows SSH traffic through port 22.

## 2. Configure the Default Deny Policy

The default incoming policy was changed to deny incoming traffic.

```bash
sudo ufw default deny incoming
```

The default outgoing policy was set to allow outgoing traffic.

```bash
sudo ufw default allow outgoing
```

This configuration blocks incoming traffic unless it is specifically allowed by a firewall rule.

## 3. Enable the Firewall

After allowing SSH and configuring the default policies, the firewall was enabled.

```bash
sudo ufw enable
```

The firewall status was then checked using:

```bash
sudo ufw status verbose
```

The status showed that the firewall was active, with incoming traffic denied by default and outgoing traffic allowed.

## 4. Allow Port 8080

The web application was running on port 8080, so TCP traffic on this port was explicitly allowed.

```bash
sudo ufw allow 8080/tcp
```

The firewall rules were then checked using:

```bash
sudo ufw status numbered
```

The results showed that both port 22 for SSH and port 8080 for the web application were allowed.

## 5. Why SSH Must Be Allowed First

If the firewall is enabled before allowing SSH, the Default Deny policy could block SSH connections and prevent administrators from accessing the server remotely.

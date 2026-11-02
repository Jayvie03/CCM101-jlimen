# Security Audit Report

## Laboratory Activity 8 – The Cloud Security Engineer

### Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users, applications, and systems only the permissions they need to do their tasks. In cloud environments, this is important because limiting access can help prevent unauthorized users from accessing resources they do not need.

### Attack Surface

An attack surface refers to the different points where an attacker could potentially try to access or compromise a system. For a virtual machine, this can include open network ports, running services, applications, accounts, and other exposed resources.

### Default Deny Policy

A Default Deny policy blocks all incoming traffic unless it is specifically allowed by a firewall rule. This is safer because only the services that are needed can access the server. It also reduces the chance of unauthorized access because attackers cannot connect to services that have not been allowed.

---

The security audit focuses on reducing unnecessary exposure of the server. By using the Principle of Least Privilege, controlling the attack surface, and applying a Default Deny policy, the server can be protected by allowing only the services that are required.

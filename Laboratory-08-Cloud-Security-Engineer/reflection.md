# Reflection - Cloud Security Engineer

This laboratory activity helped me understand why a server needs protection even when there are already security measures in place. A host-based firewall can help protect the server if the physical network perimeter is breached. It can control incoming connections and block traffic that is not allowed. This helps prevent unauthorized users from reaching services on the server.

Managing open network ports is important because every open port can be a possible entry point for an attacker. If unnecessary ports are open, attackers have more opportunities to find and target services on the server. This activity helped me understand why only the ports that are needed should be allowed.

In a real enterprise environment, leaving MySQL port 3306 open to the public internet can be dangerous. It can allow unauthorized users to try to connect to the database. If the database has security weaknesses, attackers may be able to access sensitive information or take advantage of those weaknesses. This is why database services should not be publicly accessible unless they are required and properly secured.

Completing this mission changed my perspective on how easily a server can be compromised. I learned that simply having a working application does not mean that a server is secure. An improperly configured firewall or unnecessary open port can create security risks. Using UFW and a Default Deny policy showed me how limiting access can help protect a server.

After completing eight missions, my GitHub Cloud Computing Portfolio shows my progress and the skills I have learned throughout the activities. It contains my documentation, commands, screenshots, and reflections. Having eight completed missions also shows that I am gaining more practical experience with cloud computing and server security.

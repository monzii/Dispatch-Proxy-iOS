# Dispatch-Proxy-iOS
Dispatch-Proxy iOS scripts
--------------------------------
Created by: https://old.reddit.com/user/syto203
https://old.reddit.com/r/jailbreak/comments/ceq87i/tutorial_bind_multiple_internet_connections_speed/
--------------------------------
Now that NodeJS has been ported over iOS (thanks mcapollo) we can use dispatch-proxy to bind our Data and WiFi connections into one.

Dispatch-proxy source:

https://github.com/alexkirsz/dispatch-proxy

Getting started:

Start by installing the package named “Node” from the “Elucubratus” repo available at:

https://apt.bingner.com

In Terminal or via SSH enter this command to install dispatch

npm install -g dispatch-proxy
Go to pastebin.com and create a new paste using the following:

function FindProxyForURL(url, host)
{ 
 return "SOCKS localhost:6060";
}
you can change the port from “6060” or leave it as is. For the lazy you can use this pre-made one:

https://pastebin.com/raw/er2s8T7r
Now in WiFi Settings press the small circled ‘i’ next to the connected Network, scroll down to proxy, set it to “Automatic” and enter the pastebin URL and press save.

Return to Terminal or SSH and start dispatch on port 6060 by entering

dispatch start -p 6060
That’s it, you’re done.

Enjoy.

To revert back to normal Remove the proxy settings and enter this command in SSH or Terminal

killall node
--------------------
if your connection didnt improve or slightly slower you might need to specify how the requests are divided between your connections.

In terminal enter

dispatch list
And write down the IPs in pdp_ip0 which is your data connection and en0 which is your WiFi

Now depending on your faster connection you’ll need to divert much of the requests towards it by using this to start your dispatch

dispatch start -p 6060 192.168.1.10@7 10.0.0.1@3
Replace 192.168.1.10 with your Wi-Fi IP

And 10.0.0.1 with your data IP

Play with the ratio until you’re satisfied.

------------------------


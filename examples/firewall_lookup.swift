import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")

// lookup Asn Firewall information
let fire = ipfinder.getFirewall("AS1", format:"nginx_deny")

print(fire)
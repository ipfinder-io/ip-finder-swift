import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")
// domain name IP history
let domain = ipfinder.getDomainHistory("google.in")

print(domain)
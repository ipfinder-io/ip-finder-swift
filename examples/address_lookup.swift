import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")

// lookup IP address information
let ip = ipfinder.getAddressInfo("1.0.0.0")

print(ip)
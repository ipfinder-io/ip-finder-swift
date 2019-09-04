import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")

// lookup Asn information
let asn = ipfinder.getAddressInfo("as1")

print(asn)
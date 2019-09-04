import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")

// lookup Organization information
let range = ipfinder.getRanges("Telecom Algeria")

print(range)
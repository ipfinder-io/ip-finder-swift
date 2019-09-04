import ipfinder
let ipfinder = Ipfinder("YOUR_TOKEN_GOES_HERE")
// list live domain by country DZ,US,TN,FR,MA
let by = ipfinder.getDomainBy("DZ")

print(by)
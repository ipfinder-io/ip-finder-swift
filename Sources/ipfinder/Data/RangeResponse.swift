import Foundation

// MARK: - RangeResponse
struct RangeResponse {
    let status, statusMessage, orgName, continentCode: String
    let continentName, countryName, domain, numRanges: String
    let numIpv4, numIpv6: String
    let numAsn: Int
    let listAsn: [ListAsn]
    let listPrefixes: [ListPrefix]
}

// MARK: - ListAsn
struct ListAsn {
    let asn, orgID, totalPrefix, totalV4: String
    let totalV6: String
}

// MARK: - ListPrefix
struct ListPrefix {
    let asn, listPrefixPrefix: String
}

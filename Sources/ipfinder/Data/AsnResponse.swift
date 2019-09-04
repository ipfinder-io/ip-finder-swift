import Foundation

// MARK: - AsnResponse
struct AsnResponse {
    let status, statusMessage, asn, orgName: String
    let continentCode, continentName, countryCode, countryName: String
    let allocated, registry, domain, numIPSIpv4: String
    let numIPSIpv6, asName, orgID, comanyType: String
    let speed: Speed
    let peers: Peers
    let upstreams: Upstreams
    let downstreams: Downstreams
    let prefixes: Prefixes
}

// MARK: - Downstreams
struct Downstreams {
    let totalDownstreams: Int
    let listDownstreams: [String]
}

// MARK: - Peers
struct Peers {
    let totalPeers: Int
    let listPeers: [String]
}

// MARK: - Prefixes
struct Prefixes {
    let totalPrefixes: Int
    let listPrefixes: [String]
}

// MARK: - Speed
struct Speed {
    let ping, download, upload: String
}

// MARK: - Upstreams
struct Upstreams {
    let totalUpstreams: Int
    let listUpstreams: [String]
}

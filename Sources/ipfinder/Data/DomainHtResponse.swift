import Foundation

// MARK: - DomainHTResponse
struct DomainHTResponse {
    let status, statusMessage: String
    let totalDomain: Int
    let listDomain: [[ListDomain]]
}

// MARK: - ListDomain
struct ListDomain {
    let domainName, address, country, asn: String
    let organization, lastSeenOn: String
}

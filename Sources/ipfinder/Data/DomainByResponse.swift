import Foundation

// MARK: - DomainByResponse
struct DomainByResponse {
    let status, statusMessage, selectBy: String
    let totalDomain: Int
    let listDomain: [[ListDomainby]]
}

// MARK: - ListDomain
struct ListDomainby {
    let domainName, address, country, asn: String
    let organization: String
}

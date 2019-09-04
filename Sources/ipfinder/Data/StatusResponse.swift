import Foundation

// MARK: - AsnResponse
struct StatusResponse {
    let apiKey: String
    let queriesPerDay, queriesLeft, asqueriesPerDay, asqueriesLeft: Int
    let keyType, keyInfo, status: String
}

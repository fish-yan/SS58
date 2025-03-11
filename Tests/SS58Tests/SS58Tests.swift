import Testing
import Foundation
@testable import SS58

@Test func ss58Test() {
    let publick = "0x928e3d9740e13980bfcbcd0f7c9571f82df0c283de5cbf0125f6295896e80e16"
    let address = "14KAFEgpTDErZdUDzfrhnpeS1f4SLuMozkET3LrFuGaKmC3A"
    let data = Data(hex: publick)
    let result = try! SS58.encode(data: data, format: .polkadot)
    #expect(result == address)
}

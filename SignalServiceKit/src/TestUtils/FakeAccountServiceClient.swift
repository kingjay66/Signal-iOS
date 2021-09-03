//
//  Copyright (c) 2021 Open Whisper Systems. All rights reserved.
//

import Foundation

@objc
public class FakeAccountServiceClient: AccountServiceClient {
    @objc
    public override init() {}

    // MARK: - Public

    public override func requestPreauthChallenge(recipientId: String, pushToken: String, isVoipToken: Bool) -> Promise<Void> {
        return Promise { $0.resolve() }
    }

    public override func requestVerificationCode(recipientId: String, preauthChallenge: String?, captchaToken: String?, transport: TSVerificationTransport) -> Promise<Void> {
        return Promise { $0.resolve() }
    }

    public override func getPreKeysCount() -> Promise<Int> {
        return Promise { $0.resolve(0) }
    }

    public override func setPreKeys(identityKey: IdentityKey, signedPreKeyRecord: SignedPreKeyRecord, preKeyRecords: [PreKeyRecord]) -> Promise<Void> {
        return Promise { $0.resolve() }
    }

    public override func setSignedPreKey(_ signedPreKey: SignedPreKeyRecord) -> Promise<Void> {
        return Promise { $0.resolve() }
    }

    public override func updatePrimaryDeviceAccountAttributes() -> Promise<Void> {
        return Promise { $0.resolve() }
    }

    public override func getUuid() -> Promise<UUID> {
        return Promise { $0.resolve(UUID()) }
    }
}

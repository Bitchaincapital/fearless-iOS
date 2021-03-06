import Foundation
import CommonWallet

struct WalletSingleActionAccessoryFactory: CommonWallet.AccessoryViewFactoryProtocol {
    static func createAccessoryView(from type: WalletAccessoryViewType,
                                    style: WalletAccessoryStyleProtocol?,
                                    target: Any?,
                                    completionSelector: Selector?) -> CommonWallet.AccessoryViewProtocol {
        let view = R.nib.walletSingleActionAccessoryView(owner: nil)!

        if let target = target, let selector = completionSelector {
            view.actionButton.addTarget(target, action: selector, for: .touchUpInside)
        }

        return view
    }
}

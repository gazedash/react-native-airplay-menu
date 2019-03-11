import Foundation
import MediaPlayer

@objc(RNAirViewManager)
class RNAirViewManager: RCTViewManager {
  override func view() -> UIView! {
    return RNAirView()
  }
  
  @objc func updateFromManager(_ node: NSNumber, count: NSNumber) {
    DispatchQueue.main.async {
      let component = self.bridge.uiManager.view(
        forReactTag: node
      ) as! RNAirView
      component.showMenu()
    }
  }
}

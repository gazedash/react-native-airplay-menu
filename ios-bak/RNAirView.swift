import UIKit
import MediaPlayer

class RNAirView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  @objc func showMenu() {
    let rect = CGRect(x: 10, y: 10, width: 100, height: 100) 
    let airplayVolume = MPVolumeView(frame: rect)
    airplayVolume.showsVolumeSlider = true
    airplayVolume.showsRouteButton = true
    self.addSubview(airplayVolume)
    for view: UIView in airplayVolume.subviews {
        if let button = view as? UIButton {
            button.sendActions(for: .touchUpInside)
            break
        }
    }
  }
}

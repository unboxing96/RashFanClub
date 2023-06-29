enum ButtonColor {
	case DeepPurple
	case Gold
	case Silver
	case SpaceGray
	
	var name : String {
		switch self {
		case .DeepPurple :
			return "ColorBtnDeepPurple"
		case .Gold:
			return "ColorBtnGold"
		case .Silver:
			return "ColorBtnSilver"
		case .SpaceGray:
			return "ColorBtnSpaceGray"

		}
	}
}

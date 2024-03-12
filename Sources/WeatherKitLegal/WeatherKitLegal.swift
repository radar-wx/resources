import Foundation
import MarkdownUI

public enum Raw {
    public static let privacyPolicy = url(for: "privacy-policy")
    public static let termsOfService = url(for: "terms-of-service")
}

public enum UI {
    public static let privacyPolicy = Markdown(content(for: Raw.privacyPolicy))
    public static let termsOfService = Markdown(content(for: Raw.termsOfService))
}

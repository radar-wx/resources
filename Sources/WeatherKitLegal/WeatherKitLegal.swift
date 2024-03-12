import MarkdownUI

public enum Raw {
    public static let privacyPolicy = content(for: "privacy-policy")
    public static let termsOfService = content(for: "termsOfService")
}

public enum UI {
    public static let privacyPolicy = Markdown(Raw.privacyPolicy)
    public static let termsOfService = Markdown(Raw.termsOfService)
}

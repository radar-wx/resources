import Foundation
import MarkdownUI

func content(for name: String) -> String {
    guard 
        let path = Bundle.module.url(forResource: name, withExtension: "md"),
        let data = try? Data(contentsOf: path),
        let content = String(data: data, encoding: .utf8)
    else { fatalError() }
    return content
}

public let privacyPolicy = Markdown(content(for: "privacy-policy"))
public let termsOfService = Markdown(content(for: "terms-of-service"))

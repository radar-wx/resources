import Foundation

func content(for url: URL) -> String {
    guard
        let data = try? Data(contentsOf: url),
        let content = String(data: data, encoding: .utf8)
    else { fatalError() }
    return content
}

public func url(for name: String) -> URL {
    guard let path = Bundle.module.url(forResource: name, withExtension: "md") else { fatalError() }
    return path
}

import Foundation

func content(for name: String) -> String {
    guard
        let path = Bundle.module.url(forResource: name, withExtension: "md"),
        let data = try? Data(contentsOf: path),
        let content = String(data: data, encoding: .utf8)
    else { fatalError() }
    return content
}

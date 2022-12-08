//
//  ContentView.swift
//  Geta-Ingestor
//
//  Created by Dachary Carey on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    @State var filename = "Filename"
    @State var fileUrl: URL?
    @State var showFileChooser = false

  var body: some View {
    HStack {
      Text(filename)
      Button("select File")
      {
        let panel = NSOpenPanel()
        panel.allowsMultipleSelection = false
        panel.canChooseDirectories = false
        if panel.runModal() == .OK {
            self.filename = panel.url?.lastPathComponent ?? "<none>"
            print("Filename: \(filename)")
            self.fileUrl = panel.url
            if let urlExists = fileUrl {
                print("File URL: \(urlExists)")
                // experimentWithCSV()
                decodeCSV(thisFilepath: urlExists)
            }
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

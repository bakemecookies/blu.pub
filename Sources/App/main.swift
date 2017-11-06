import Vapor
import LeafProvider

let config = try Config()
try config.addProvider(LeafProvider.Provider.self)

let drop = try Droplet(config)

drop.get { _ in
  return try drop.view.make("index")
}

try drop.run()

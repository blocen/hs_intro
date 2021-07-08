import qualified Data.Text                 as T
import           Language.Plutus.Contract  hiding (when)
import           Language.PlutusTx.Prelude
import           Playground.Contract

-- | A 'Contract' that logs a message.
hello :: Contract BlockchainActions T.Text ()
hello = logInfo @String "Hello, world"

endpoints :: Contract BlockchainActions T.Text ()
-- endpoints = hello

-- | more of that
lets :: Contract BlockchainActions T.Text ()
lets = logInfo @String "Let's do this..."
endpoints = lets


mkSchemaDefinitions ''BlockchainActions

$(mkKnownCurrencies [])

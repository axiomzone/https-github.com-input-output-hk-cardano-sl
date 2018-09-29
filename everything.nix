{ mkDerivation, acid-state, aeson, aeson-diff, aeson-options
, aeson-pretty, ansi-terminal, ansi-wl-pprint, array, asn1-encoding
, asn1-types, async, attoparsec, auto-update, base
, base16-bytestring, base58-bytestring, base64-bytestring, basement
, beam-core, beam-migrate, beam-sqlite, bifunctors, binary
, bytestring, Cabal, canonical-json, cardano-crypto
, cardano-report-server, cardano-sl, cardano-sl-binary
, cardano-sl-chain, cardano-sl-core, cardano-sl-crypto
, cardano-sl-db, cardano-sl-util, cborg, cereal, clock
, concurrent-extra, conduit, connection, constraints, containers
, contravariant, cpphs, cryptonite, cryptonite-openssl
, data-default, data-default-class, deepseq, deriving-compat
, digest, directory, dlist, dns, ekg, ekg-core, ekg-statsd, ekg-wai
, ether, exceptions, extra, file-embed, filelock, filepath, fmt
, foldl, formatting, free, generic-arbitrary, generics-sop, Glob
, half, hashable, hedgehog, hourglass, hspec, hspec-core
, http-api-data, http-client, http-client-tls, http-conduit
, http-types, insert-ordered-containers, ip, iproute, ixset-typed
, kademlia, katip, lens, lifted-async, log-warper, lrucache
, lzma-conduit, megaparsec, memory, micro-recursion-schemes, mmorph
, monad-control, MonadRandom, mono-traversable, mtl, mwc-random
, neat-interpolation, network, network-info, network-transport
, network-transport-inmemory, network-transport-tcp
, normaldistribution, optparse-applicative, optparse-generic
, parsec, parsers, plutus-prototype, pretty-show, process, pvss
, QuickCheck, quickcheck-instances, random, reflection, resourcet
, retry, rocksdb-haskell-ng, safe-exceptions, safecopy, scientific
, scrypt, semver, serokell-util, servant, servant-client
, servant-client-core, servant-generic, servant-multipart
, servant-quickcheck, servant-server, servant-swagger
, servant-swagger-ui, servant-swagger-ui-core
, servant-swagger-ui-redoc, silently, sqlite-simple
, sqlite-simple-errors, stdenv, stm, streaming-commons, string-conv
, swagger2, systemd, tabl, tagged, tar, template-haskell, temporary
, text, th-lift-instances, th-utilities, these, time, time-units
, tls, transformers, transformers-base, transformers-lift, trifecta
, universum, unix, unix-compat, unliftio, unliftio-core
, unordered-containers, vector, wai, wai-app-static, wai-cors
, wai-extra, wai-middleware-throttle, wai-websockets, warp
, warp-tls, websockets, wreq, x509, x509-store, x509-validation
, yaml
}:
mkDerivation {
  pname = "everything";
  version = "1.3.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    acid-state aeson aeson-options aeson-pretty ansi-terminal
    ansi-wl-pprint array asn1-encoding asn1-types async attoparsec
    auto-update base base16-bytestring base58-bytestring
    base64-bytestring basement beam-core beam-migrate beam-sqlite
    bifunctors binary bytestring Cabal canonical-json cardano-crypto
    cardano-report-server cborg cereal clock concurrent-extra conduit
    connection constraints containers contravariant cpphs cryptonite
    cryptonite-openssl data-default data-default-class deepseq
    deriving-compat digest directory dlist dns ekg-core ekg-statsd
    ekg-wai ether exceptions extra file-embed filelock filepath fmt
    foldl formatting free generic-arbitrary generics-sop half hashable
    hedgehog hourglass hspec http-api-data http-client http-client-tls
    http-conduit http-types ip iproute ixset-typed kademlia katip lens
    lifted-async log-warper lrucache lzma-conduit megaparsec memory
    micro-recursion-schemes mmorph monad-control MonadRandom
    mono-traversable mtl mwc-random neat-interpolation network
    network-info network-transport network-transport-tcp
    optparse-applicative optparse-generic parsec parsers
    plutus-prototype pretty-show process pvss QuickCheck
    quickcheck-instances random reflection resourcet retry
    rocksdb-haskell-ng safe-exceptions safecopy scientific scrypt
    semver serokell-util servant servant-client servant-client-core
    servant-generic servant-multipart servant-server servant-swagger
    servant-swagger-ui servant-swagger-ui-core servant-swagger-ui-redoc
    sqlite-simple sqlite-simple-errors stm streaming-commons
    string-conv swagger2 systemd tagged tar template-haskell text
    th-lift-instances th-utilities these time time-units tls
    transformers transformers-base transformers-lift trifecta universum
    unix unliftio unliftio-core unordered-containers vector wai
    wai-app-static wai-middleware-throttle wai-websockets warp warp-tls
    websockets wreq x509 x509-store x509-validation yaml
  ];
  executableHaskellDepends = [
    aeson aeson-diff aeson-options aeson-pretty ansi-wl-pprint async
    base base58-bytestring binary bytestring canonical-json
    cardano-report-server cardano-sl cardano-sl-binary cardano-sl-chain
    cardano-sl-core cardano-sl-crypto cardano-sl-db cardano-sl-util
    containers contravariant cryptonite data-default deepseq directory
    ekg ekg-core ekg-statsd exceptions filepath formatting Glob hspec
    http-client http-types lens lifted-async log-warper mmorph
    MonadRandom mtl neat-interpolation network-transport
    network-transport-tcp optparse-applicative optparse-generic
    pretty-show process QuickCheck random safe-exceptions serokell-util
    servant servant-client servant-quickcheck servant-server silently
    stm swagger2 tabl tar text time time-units universum unix
    unix-compat unordered-containers wai wai-cors wai-extra warp
    x509-store yaml
  ];
  testHaskellDepends = [
    acid-state aeson async base base16-bytestring binary bytestring
    cardano-crypto cborg cereal conduit constraints containers
    cryptonite data-default deepseq directory dns ekg-core ether extra
    file-embed filelock filepath fmt formatting generic-arbitrary half
    hedgehog hspec hspec-core insert-ordered-containers iproute
    kademlia lens memory MonadRandom mtl network-transport
    network-transport-inmemory network-transport-tcp normaldistribution
    optparse-applicative pretty-show pvss QuickCheck
    quickcheck-instances random reflection safe-exceptions safecopy
    serokell-util servant servant-server servant-swagger stm
    string-conv swagger2 tabl tagged template-haskell temporary text
    time time-units universum unordered-containers vector
  ];
  homepage = "https://github.com/input-output-hk/cardano-sl/#readme";
  license = stdenv.lib.licenses.mit;
}
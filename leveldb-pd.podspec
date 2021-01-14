Pod::Spec.new do |s|
  s.name         = "leveldb-pd"
  s.version      = "0.1.5"
  s.summary      = "LevelDB is a leveldb library wrapper."
  s.description  = "LevelDB is a fast key-value storage library written at Google that provides an ordered mapping from string keys to string values."
  s.homepage     = "https://github.com/google/leveldb"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zengjing" => "wangguofeng25@gmail.com" }
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.source       = { :git => "", :tag => "#{s.version}" }
  s.source_files  = "include/leveldb/*.{h}", "*.{h,m,mm}"
  s.public_header_files = "*.h", "include/leveldb/*.h"
  s.library   = "c++"
  s.requires_arc = true
  s.dependency "leveldb-library"
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/leveldb-pd/include/leveldb" }
end

  Pod::Spec.new do |s|
    s.name = 'CapacitorMotion'
    s.version = '0.0.1'
    s.summary = 'Captures CMotion data and passes it to the Capacitor'
    s.license = 'MIT'
    s.homepage = 'git@github.com:kilazi/capacitor-motion.git'
    s.author = 'Max Kilazi'
    s.source = { :git => 'git@github.com:kilazi/capacitor-motion.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end

  Pod::Spec.new do |s|
    s.name = 'CapacitorMotion'
    s.version = '0.0.1'
    s.summary = 'Send the user ID used in your local environment to the Firebase Analytics'
    s.license = 'MIT'
    s.homepage = 'https://github.com/kilazi/capacitor-firebase-userid.git'
    s.author = 'Max Kilazi'
    s.source = { :git => 'https://github.com/kilazi/capacitor-firebase-userid.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
    s.dependency 'Firebase/Core'
    s.static_framework = true
  end
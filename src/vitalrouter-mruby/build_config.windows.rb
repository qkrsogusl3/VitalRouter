# After creating libmruby.a, convert it to a shared library for Unity. See `mrbgem.rake`.
MRuby::CrossBuild.new("windows") do |conf|
  conf.toolchain
  conf.gembox '../../../vitalrouter'
  conf.cc.defines << 'MRB_NO_BOXING'
end

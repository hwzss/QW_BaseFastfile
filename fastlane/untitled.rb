fastlane_version "2.62.0"

default_platform :ios

platform :ios do


  before_each do |lane, options|

      next unless lane.equal?:qw_release

      unless options[:version]
        puts " ************************************************
               *  ❌ release需要输入version版本号
               *  比如: fastlane release version:1.0.0   
               ************************************************ "
        # options[:version] = UI.input("请输入这次的版本号:").to_s
      end

      unless options[:scheme_name]
        puts " ************************************************
               *  ❌ 需要指定scheme_name名称，
               *  比如 cluodIM
               ************************************************"
        # options[:scheme_name] = UI.input("请输入shecme名称:")
      end

      unless options[:ipa_out_put_dir]
        puts " ************************************************
               *  ❌ 未设定ipa打包路径
               *  ./desketop/打包   
               ************************************************"
        # options[:ipa_out_put_dir] = UI.input("请输入打包路径:")
      end
  end

  # desc "test"
  # lane :test_lane do |op|

  #   UI.message "version 值为#{op[:version]}"
  # end

  desc "Upload an relase ipa to TestFilght"
  lane :qw_release do |op|
   
       # cocoapods if op[:pod_install]

       # version_number = op[:version]

       # increment_version_number(version_number: version_number)
       
       # out_put_dir = op[:ipa_out_put_dir]
       # sub_dir_name = "release" 
       # out_ipa_name = "release_#{version_number}"

       # scheme_name = op[:scheme_name]

       #  gym(
       #    scheme: scheme_name,
       #    output_directory: "#{out_put_dir}/#{sub_dir_name}",
       #    silent: true,
       #    clean: false,
       #    configuration: "Release",
       #    output_name: out_ipa_name,
       #  ) 
       #  pilot(
       #    ipa:"#{out_put_dir}/#{sub_dir_name}/#{out_ipa_name}.ipa"
       #  )
    end

end


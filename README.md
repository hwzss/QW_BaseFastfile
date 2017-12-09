# QW_BaseFastfile



本项目是基于fastlane的，如果你还不了解它，可查看[fastlane官网](https://fastlane.tools/)，[GitHub地址](https://github.com/fastlane/fastlane)

# 使用方法
首先要导入该文件到自己的Fastfile里，在自己项目的Fastfile里添加如下代码：
```
import_from_git(
  url: "https://github.com/hwzss/QW_BaseFastfile.git", # The URL of the repository to import the Fastfile from.
  branch: "qwkj", # The branch to checkout on the repository. Defaults to `HEAD`.
  path: "fastlane/Fastfile" # The path of the Fastfile in the repository. Defaults to `fastlane/Fastfile`.
)
```
然后可以在自己lane里调用qw_release打包一个release版的ipa，代码如下：
```
qw_release(version:op[:version],scheme_name:scheme_name,pod_install:op[:pod_install],ipa_out_put_dir: "#{qw_home_out_dir}")
```
其中参数对应意义如下：

| 参数        | 意义           | 必填？  |
| ------------- |----------| -----|
| version      | ipa包对应的version版本号 | 可不填，不填时ipa版本会在项目当前版本号上加1 |
| scheme_name | 打包时对应项目Scheme      |   可不填，建议填写，不填写时后面会要求从项目中所有的scheme里选择一个 |
| pod_install |是否在打包前对项目进行pod install |可不填，需要进行pod install时传true|
|ipa_out_put_dir|打出的ipa包存放路径|可不填，建议填写，不填时后面会要求填写|



这些参数都可不填不传值，但是其中的参数ipa_out_put_dir，scheme_name一般要填，如果没填会打包过程中会要求填写。

**或者**在shell中使用命令直接使用qw_release
```
    fastlane qw_release version:1.0.2 scheme_name:"my_scheme_name" ipa_out_put_dir:"~./desktop"
```

**备注**：
1. 其他的lane使用方法大致一致，如qw_debug使用方法和qw_release一样。
2. ”import_from_git“命令作用可查看[介绍文档](https://docs.fastlane.tools/actions/import_from_git/#import_from_git)

**更新历史**
2017_12_7提交:
1. 增加检验version_number功能，保证version_number的格式为A.B.C的格式
2. 增加version_number自增功能，当B,C的值超过9后进行进位行为，如果1.9.9 + 1 = 2.0.0




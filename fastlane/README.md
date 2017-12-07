fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></th>
<th width="33%">Installer Script</th>
<th width="33%">RubyGems</th>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew cask install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>

# Available Actions
## iOS
### ios qw_release
```
fastlane ios qw_release
```
Upload an release ipa to TestFilght
### ios qw_debug
```
fastlane ios qw_debug
```
Upload an debug ipa to TestFilght
### ios verify_version_lane
```
fastlane ios verify_version_lane
```
检测version参数,不存在时就提示
### ios verify_shceme_lane
```
fastlane ios verify_shceme_lane
```
检测scheme，不存在时提示可设置
### ios verify_ipa_out_put_dir_lane
```
fastlane ios verify_ipa_out_put_dir_lane
```
检测ipa打包路径，未设置时，要求输入路径

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

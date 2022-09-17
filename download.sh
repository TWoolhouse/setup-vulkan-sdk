. ./os.sh

echo "::group::Download"
fname=vulkan-sdk$sdk_os_ext
url=https://vulkan.lunarg.com/sdk/download/$vk_ver/$vk_os/$fname
echo "::notice title=Download::$url"
curl -L -o $download_name $url
echo "::endgroup::"

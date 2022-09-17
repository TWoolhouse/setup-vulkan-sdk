. ./os.sh

echo "::group::Install"
echo "::notice title=Directory::$vk_sdk_dir"
echo "::notice title=Components::$vk_com_list"
case $RUNNER_OS in
Windows)
	./$download_name --root $vk_sdk_dir --accept-licenses --default-answer --confirm-command install $vk_com_list
	;;
Linux)
	tar xf $download_name
	. ./$vk_ver/setup-env.sh
	mv -uf $VULKAN_SDK ./vulkan_sdk
	;;
macOS)
	exit 1
	;;
esac
echo "::set-output VULKAN_SDK=$vk_sdk_dir"
echo "::endgroup::"

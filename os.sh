case $RUNNER_OS in
	Linux) vk_os=linux; sdk_os_ext=.tar.gz ;;
	Windows) vk_os=windows; sdk_os_ext=.exe ;;
	macOS) vk_os=mac; sdk_os_ext=.dmg ;;
esac
download_name=vulkan-sdk$sdk_os_ext

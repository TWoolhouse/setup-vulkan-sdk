. ./os.sh

echo "::group::Resolving Latest"
url=https://vulkan.lunarg.com/sdk/latest/$vk_os.txt
echo "::notice title=Webservice::$url" >&2
version=$(curl -sL $url)
test -n "$version" || { echo "::error title=Invalid Response::[$?] $version" ; exit 1 ; }
echo "::notice title=Version::$version"
echo "::endgroup::"

echo "vk_ver=$version" >> GITHUB_ENV

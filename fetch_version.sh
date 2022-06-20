#Fetch verion from testflight
fastlane run latest_testflight_build_number >> version.txt

#Sort line which contains version
sed -n 9p version.txt >> a.txt

# print version only
VERSION=$(awk '{print $6}' a.txt)
echo "Build version in Lakeshore Learning app is $VERSION"

#!/bin/sh
echo ""
echo "NadekoBot 1.9+"
echo "Mirai was here."
root=$(pwd)
youtube-dl -U

if hash dotnet 2>/dev/null
then
	echo "Dotnet installed."
else
	echo "Dotnet is not installed. Please install dotnet."
	exit 1
fi
cd "$root/EspritBot/NadekoBot"
dotnet restore
dotnet build -c Release
cd "$root/EspritBot/NadekoBot/src/NadekoBot"
echo "Running NadekoBot. Please wait."
dotnet run -c Release
echo "Done"

cd "$root/EspritBot"
rm "$root/EspritBot/nadeko_run.sh"
exit 0

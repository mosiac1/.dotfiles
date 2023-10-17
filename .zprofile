# Set proxy on start
if [ -f ~/.scripts/set_proxy.sh ]; then
    . ~/.scripts/set_proxy.sh
fi

# Enable Docker buildkit
export DOCKER_BUILDKIT=1

# Start docker service if on wsl
if grep -q "microsoft" /proc/version > /dev/null 2>&1; then
    if service docker status 2>&1 | grep -q "is not running"; then
        wsl.exe --distribution "${WSL_DISTRO_NAME}" --user root \
            --exec /usr/sbin/service docker start > /dev/null 2>&1
    fi
fi

# Load bomebrew
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH

# Setting PATH for Python 3.11
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

# added by Snowflake SnowCD installer
export PATH=/opt/snowflake/snowcd:$PATH


# Added by Toolbox App
export PATH="$PATH:/Users/mosiac/Library/Application Support/JetBrains/Toolbox/scripts"


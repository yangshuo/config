alias ll='ls -ltrh'

#== JAVA Tools ==
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export PATH="${JAVA_HOME}/bin:${PATH}"

LIB_HOME="/Users/yangshuo/Library/"
export M2_HOME="${LIB_HOME}/apache-maven"
export PATH="${M2_HOME}/bin:${PATH}"

export ANT_HOME="${LIB_HOME}/apache-ant"
export PATH="${ANT_HOME}/bin:${PATH}"

export TOMCAT_HOME="${LIB_HOME}/apache-tomcat"
export CATALINA_HOME="${TOMCAT_HOME}"
export PATH="${TOMCAT_HOME}/bin:${PATH}"
export CATALINA_OPTS="${CATALINA_OPTS} -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"

#== Andoird ==
export ANDROID_SDK_HOME="/Users/yangshuo/Library/android-sdk-macosx/"
export PATH="${ANDROID_SDK_HOME}/tools:${ANDROID_SDK_HOME}/platform-tools:${PATH}"


#== MySQL ==
export PATH="/usr/local/mysql/bin:${PATH}"

#== Redis ==
export PATH="/Users/yangshuo/Library/redis/bin:${PATH}"

#== Mono ==
export MONO_HOME="/Library/Frameworks/Mono.framework/Versions/Current"
export PATH="${MONO_HOME}/bin:${PATH}"

#== Git Configuration ==
source ~/.git-prompt.sh

#export PS1="\h:\W \u\$ "
export PS1='\[\033[01;32m\][\u@\h\[\033[01;34m\] \W$(__git_ps1 " (%s)")]\[\033[01;34m\]\$ \[\033[00m\]'

# ==== git user information ====
git config --global user.name "yangshuo"
git config --global user.mail "yangshuosdu@gmail.com"

# ==== git merge/diff tool ====
git config --global merge.tool kdiff3
git config --global mergetool.kdiff3.path "/Applications/kdiff3.app/Contents/MacOS/kdiff3"
git config --global core.editor vim
git config --global diff.tool kdiff3
git config --global difftool.kdiff3.path "/Applications/kdiff3.app/Contents/MacOS/kdiff3"

# ==== git color configuration ====
git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto

# ==== git alias ====
#git config --global alias.st status
#git config --global alias.ci commit
#git config --global alias.co checkout
#git config --global alias.br branch
#git config --global alias.dc dcommit
#git config --global alias.rb rebase


#== Usefull alias ==
alias cdsrc='cd ~/Documents/Code'
alias vi='vim'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


#== Ruby ==
#export PATH="/usr/local/Cellar/ruby/2.3.3/bin:${PATH}"

#== 水木 ==
alias smth='telnet bbs.newsmth.net'


#== Go ==
export GOROOT="/Library/go"
export PATH="${GOROOT}/bin:${PATH}"
export GOPATH="${GOROOT}"

function push_code(){
	remote_branch=$1
	git push origin ${remote_branch}
	git push csdn ${remote_branch}
}

alias push_v1="push_code 1.0.0"


#==== OpenSSL ===
export PATH="/usr/local/opt/openssl/bin:${PATH}"

#==== Go ====
#export GOPATH="/Users/yangshuo/Library/go"
#export PATH="${GOPATH}/bin:${PATH}"
export GOROOT="/usr/local/Cellar/go/1.8"
#export GOPATH="/usr/local/Cellar/go/1.8/libexec/"
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

#==== Proxy Settings ====
source ~/.proxy_func.sh

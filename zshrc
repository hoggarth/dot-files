# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

#plugins=(ant git knife lein cake macports osx ruby svn textmate vundle)
#zstyle -t ':omz:plugin:tmux:auto' start 'yes'
plugins=(osx tmux vundle git ant mvn sprunge lein grc fasd brew vim svn knife vagrant kitchen)
#plugins=(osx vundle git svn ant mvn sprunge rvm ruby lein grc fasd brew vim)

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="hoggarth"
export ZSH_TMUX_AUTOSTART=true

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="false"

bindkey "^U" backward-kill-line

# Useful pipe shortcuts
bindkey -s '^|l' " | less\n"                         # c-| l  pipe to less
bindkey -s '^|g' ' | grep ""^[OD'                    # c-| g  pipe to grep
bindkey -s '^|a' " | awk '{print $}'^[OD^[OD"        # c-| a  pipe to awk
bindkey -s '^|s' ' | sed -e "s///g"^[OD^[OD^[OD^[OD' # c-| s  pipe to sed
bindkey -s '^|w' " | wc -l\n"                        # c-| w  pipe to wc
bindkey -s '^|x' " | xargs -I % "                    # c-| x  pipe to xargs

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\ee' edit-command-line

#export PATH=/opt/local/bin
#export PATH=$PATH:/opt/local/sbin
export PATH=/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/X11/bin
#export PATH=$PATH:/usr/local/oracle/instantclient10_1
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/Development/depot_tools
#export PATH=$PATH:$HOME/.gem/ruby/1.8/bin
#export PATH=$PATH:$HOME/Library/gradle-0.5.2/bin
export PATH=$PATH:/Applications/SuperCollider
#export PATH=$PATH:$HOME/Library/spring-roo-1.0.0.RELEASE/bin
#export PATH=$PATH:/usr/local/share/python
export PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/berkshelf-2.0.10/bin
export PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/bundler-1.3.5/bin
export PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/cucumber-1.3.10/bin
export PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/test-kitchen-1.0.0/bin
export PATH=$PATH:/usr/local/lib/ruby/gems/2.0.0/gems/rspec-core-2.14.7/exe

source $ZSH/oh-my-zsh.sh

# History
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt NO_HIST_BEEP

#HISTSIZE=1000
SAVEHIST=99999
DIRSTACKSIZE=20
HISTFILE=$HOME/.zsh/history

export DISPLAY=:0.0
export EDITOR=/usr/bin/vim

export ANT_HOME=$HOME/Library/apache-ant-1.8.2
export ANT_OPTS="-Xms1024m -Xmx1024m"
export AXIS2_HOME=$HOME/Library/wso2wsas-2.3

#export CATALINA_HOME=/usr/local/apache-tomcat-5.5.26
#export CATALINA_OPTS="-Xms512m -Xmx512m"

#export DERBY_INSTALL=$HOME/Library/db-derby-10.4.1.3-bin
#export GROOVY_HOME=/opt/local/share/java/groovy
export GWT_TOOLS=$HOME/Development/gwt/tools
export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_BIN=$JAVA_HOME/bin
#export JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
export JELLY_HOME=$HOME/Library/Apache/commons-jelly-1.0
export JRUBY_HOME=$HOME/Library/jruby-1.5.2
export PARROT_HOME=$HOME/Library/parrot/bin
export MANPATH=/opt/local/share/man:$MANPATH
export MAVEN1_HOME=/usr/share/maven-1.1
export MAVEN_HOME=/opt/local/share/java/maven2
export MAVEN_OPTS="-Xms512m -Xmx1024m -Dgpg.passphrase=AxilaPt2"
export PENROSE_OPTS="-Xms512m -Xmx512m"
#export RUBYOPT=rubygems
#export SCALA_HOME=$HOME/Library/scala-2.8.0.Beta1-prerelease
export WSFC_HOME=$HOME/Library/wso2-wsf-c-2.0.0
export WSFCPP_HOME=$HOME/Library/wso2-wsf-cpp-2.1.0
export ROO_HOME=$HOME/springsource/spring-roo-1.1.1.RELEASE
export TCPMON_HOME=$HOME/Library/tcpmon-1.0-bin
export GRADLE_HOME=$HOME/Library/gradle-0.5.2
#export GRADLE_HOME=$HOME/Library/gradle-1.0-milestone-1
#export GRADLE_HOME=$HOME/Library/gradle-1.0-milestone-5
#export GRADLE_HOME=$HOME/Library/gradle-1.0-milestone-6

export GREG_HOME=$HOME/Library/wso2greg-4.1.1

#export CLOJURE_HOME=$HOME/Library/clojure_1.1.0
#export CLOJURE_HOME=$HOME/Library/clojure_1.2.0
#export CLOJURE_HOME=/opt/local/share/java/clojure/lib

export MYSQL_HOME=/usr/local/mysql
export GAESDK=$HOME/Library/appengine-java-sdk-1.4.0

export ECLIPSE_HOME=/Applications/eclipse-SDK-3.7

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${WSFC_HOME}/lib
#export WSO2WSAS_HOME=$HOME/Library/wso2wsas-2.3
export ODE_HOME=$HOME/Library/apache-ode-war-1.3.5
export ODE_CLASSPATH=$ODE_HOME/lib
export PATH=$PATH:$PARROT_HOME:$ROO_HOME/bin:$JRUBY_HOME/bin:$MYSQL_HOME/bin:$GAESDK/bin:$ODE_HOME/bin:$GRADLE_HOME/bin:$GREG_HOME/bin:$ECLIPSE_HOME
#export PATH=$PATH:$PARROT_HOME:$SCALA_HOME/bin:$ROO_HOME/bin:$JRUBY_HOME/bin:$MYSQL_HOME/bin:$GAESDK/bin:$ODE_HOME/bin:$GRADLE_HOME/bin:$GREG_HOME/bin:$ECLIPSE_HOME


export CLASSPATH=$CLASSPATH:$HOME/Library/Java/:$ODE_CLASSPATH
export NODE_PATH=/usr/local/lib/node_modules

#ORACLE INSTANT CLIENT
#export DYLD_LIBRARY_PATH=/usr/local/oracle/instantclient_10_2
export SQLPATH=/usr/local/oracle/instantclient_10_2
export TNS_ADMIN=/usr/local/oracle/network/admin
export NLS_LANG=AMERICAN_AMERICA.UTF8
export PATH=$PATH:$SQLPATH

#Atlassian CLI
export ATLASSIANCLI_HOME=$HOME/Library/atlassian-cli-3.9.0
export PATH=$PATH:$ATLASSIANCLI_HOME

#Atlassian SDK
export ATLASSIANSDK=$HOME/Library/atlassian-plugin-sdk-3.10.4
export PATH=$PATH:$ATLASSIANSDK/bin

export XMLSH=/Users/hoggarth/Library/xmlsh_1_2_1


# My Nice to Have Aliases
alias ow="open ."
alias ep="vim ~/.zshrc"
alias fu='sudo $( fc -ln -1)'
alias gitk="/usr/bin/wish $(which gitk)"

# No Spelling Corrections
alias mv='nocorrect mv -i'     # no spelling correction on mv
alias cp='nocorrect cp'        # no spelling correction on cp
alias mkdir='nocorrect mkdir'  # no spelling correction on mkdir

# Local Emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

#export SAXON_HOME=$HOME/Library/Java
#export SAXON_HOME=$HOME/.m2/repository/net/sf/saxon/saxon/8.9
export SAXON_HOME=$HOME/Library/SaxonHE9-5-1-1
export SAXON_JAR=$SAXON_HOME/saxon9he.jar
alias xslt="java -jar $SAXON_JAR"

export TRANG_HOME=$HOME/Library/trang-20081028
alias trang='java -jar $TRANG_HOME/trang.jar'

#export XML_CATALOG_FILES=$HOME/Development/q2c-integrations/bps/Q2CProcess/tst.xml

#Roo
export ROO_OPTS="-Droo.bright=true"
alias roo='roo.sh'

# My Project aliases
export HRDIRECTORY=~/Development/hrsystem
export hr=~/Development/hrsystem_new/trunk
alias cdhr="cd $HRDIRECTORY"
alias hrmate="mate $HRDIRECTORY"

export oid=$HOME/Development/oid
alias cdoid="cd $oid"

export esb=$HOME/Development/esb
alias cdesb="cd $esb"
alias esbmate="mate $esb"

export bps=$HOME/Development/bps
alias cdbps="cd $bps"
alias bpsmate="mate $bps"

export ichef=$HOME/Development/idea-chef-repo

export DASHBOARDDIRECTORY=~/Development/dashboard
alias cddash="cd $DASHBOARDDIRECTORY"

export FATDIRECTORY=~/Development/fatsystem
alias cdfat="cd $FATDIRECTORY"

export SSODIRECTORY=~/Development/sso
alias cdsso="cd $SSODIRECTORY"

export PRICINGDIRECTORY=$HOME/Development/pricing/pricing_rails2
alias cdpr="cd $PRICINGDIRECTORY"

export SOACOOKBOOKDIRECTORY=$HOME/Development/soa_cookbook
alias cdsoa="cd $SOACOOKBOOKDIRECTORY"

export qtc=$HOME/Development/qtc
alias cdqtc="cd $qtc"

#View Logs on our carbon servers
alias esb-test-logs="ssh root@esb-test 'tail -f /opt/carbon/logs/*'"
alias wsas-test-logs="ssh root@wsas-test 'tail -f /opt/carbon/logs/*'"
alias bps-test-logs="ssh root@bps-test 'tail -f /opt/carbon/logs/*'"
alias reg-prod-logs="ssh root@reg-prod 'tail -f /opt/carbon/logs/*'"
alias esb-prod-logs="ssh root@esb-prod 'tail -f /opt/carbon/logs/*'"
alias wsas-prod-logs="ssh root@wsas-prod 'tail -f /opt/carbon/logs/*'"
alias bps-prod-logs="ssh root@bps-prod 'tail -f /opt/carbon/logs/*'"
alias bam-prod-logs="ssh root@bam-prod 'tail -f /opt/carbon/logs/*'"
alias esb-qtc-qaoracle-logs="ssh root@esb-403-qtc-qaoracle 'tail -f /var/log/carbon/*'"
alias bps-qtc-qaoracle-logs="ssh root@bps-212-qtc-qaoracle 'tail -f /var/log/carbon/*'"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

brew_prefix=`brew --prefix`
# alias base64="$brew_prefix/bin/gbase64"
# alias basename="$brew_prefix/bin/gbasename"
# alias cat="$brew_prefix/bin/gcat"
# alias chcon="$brew_prefix/bin/gchcon"
# alias chgrp="$brew_prefix/bin/gchgrp"
# alias chmod="$brew_prefix/bin/gchmod"
# alias chown="$brew_prefix/bin/gchown"
# alias chroot="$brew_prefix/bin/gchroot"
# alias cksum="$brew_prefix/bin/gcksum"
# alias comm="$brew_prefix/bin/gcomm"
# alias cp="$brew_prefix/bin/gcp"
# alias csplit="$brew_prefix/bin/gcsplit"
# alias cut="$brew_prefix/bin/gcut"
# alias date="$brew_prefix/bin/gdate"
# alias dd="$brew_prefix/bin/gdd"
# alias df="$brew_prefix/bin/gdf"
# alias dir="$brew_prefix/bin/gdir"
alias dircolors="$brew_prefix/bin/gdircolors"
# alias dirname="$brew_prefix/bin/gdirname"
# alias du="$brew_prefix/bin/gdu"
# alias echo="$brew_prefix/bin/gecho"
# alias env="$brew_prefix/bin/genv"
# alias expand="$brew_prefix/bin/gexpand"
# alias expr="$brew_prefix/bin/gexpr"
# alias factor="$brew_prefix/bin/gfactor"
# alias false="$brew_prefix/bin/gfalse"
# alias fmt="$brew_prefix/bin/gfmt"
# alias fold="$brew_prefix/bin/gfold"
# alias groups="$brew_prefix/bin/ggroups"
# alias head="$brew_prefix/bin/ghead"
# alias hostid="$brew_prefix/bin/ghostid"
# alias id="$brew_prefix/bin/gid"
# alias install="$brew_prefix/bin/ginstall"
# alias join="$brew_prefix/bin/gjoin"
# alias kill="$brew_prefix/bin/gkill"
# alias link="$brew_prefix/bin/glink"
# alias ln="$brew_prefix/bin/gln"
# alias logname="$brew_prefix/bin/glogname"
alias ls="$brew_prefix/bin/gls --color=auto"
# alias md5sum="$brew_prefix/bin/gmd5sum"
# alias mkdir="$brew_prefix/bin/gmkdir"
# alias mkfifo="$brew_prefix/bin/gmkfifo"
# alias mknod="$brew_prefix/bin/gmknod"
# alias mktemp="$brew_prefix/bin/gmktemp"
# alias mv="$brew_prefix/bin/gmv"
# alias nice="$brew_prefix/bin/gnice"
# alias nl="$brew_prefix/bin/gnl"
# alias nohup="$brew_prefix/bin/gnohup"
# alias od="$brew_prefix/bin/god"
# alias paste="$brew_prefix/bin/gpaste"
# alias pathchk="$brew_prefix/bin/gpathchk"
# alias pinky="$brew_prefix/bin/gpinky"
# alias pr="$brew_prefix/bin/gpr"
# alias printenv="$brew_prefix/bin/gprintenv"
# alias printf="$brew_prefix/bin/gprintf"
# alias ptx="$brew_prefix/bin/gptx"
# alias pwd="$brew_prefix/bin/gpwd"
# alias readlink="$brew_prefix/bin/greadlink"
# alias rm="$brew_prefix/bin/grm"
# alias rmdir="$brew_prefix/bin/grmdir"
# alias runcon="$brew_prefix/bin/gruncon"
# alias seq="$brew_prefix/bin/gseq"
# alias sha1sum="$brew_prefix/bin/gsha1sum"
# alias sha225sum="$brew_prefix/bin/gsha225sum"
# alias sha256sum="$brew_prefix/bin/gsha256sum"
# alias sha384sum="$brew_prefix/bin/gsha384sum"
# alias sha512sum="$brew_prefix/bin/gsha512sum"
# alias shred="$brew_prefix/bin/gshred"
# alias shuf="$brew_prefix/bin/gshuf"
# alias sleep="$brew_prefix/bin/gsleep"
# alias sort="$brew_prefix/bin/gsort"
# alias split="$brew_prefix/bin/gsplit"
# alias stat="$brew_prefix/bin/gstat"
# alias stty="$brew_prefix/bin/gstty"
# alias sum="$brew_prefix/bin/gsum"
# alias sync="$brew_prefix/bin/gsync"
# alias tac="$brew_prefix/bin/gtac"
# alias tail="$brew_prefix/bin/gtail"
# alias tee="$brew_prefix/bin/gtee"
# alias test="$brew_prefix/bin/gtest"
# alias touch="$brew_prefix/bin/gtouch"
# alias tr="$brew_prefix/bin/gtr"
# alias true="$brew_prefix/bin/gtrue"
# alias tsort="$brew_prefix/bin/gtsort"
# alias tty="$brew_prefix/bin/gtty"
# alias uname="$brew_prefix/bin/guname"
# alias unexpand="$brew_prefix/bin/gunexpand"
# alias uniq="$brew_prefix/bin/guniq"
# alias unlink="$brew_prefix/bin/gunlink"
# alias uptime="$brew_prefix/bin/guptime"
# alias users="$brew_prefix/bin/gusers"
# alias vdir="$brew_prefix/bin/gvdir"
# alias wc="$brew_prefix/bin/gwc"
# alias who="$brew_prefix/bin/gwho"
# alias whoami="$brew_prefix/bin/gwhoami"
# alias yes="$brew_prefix/bin/gyes"
# alias '['="$brew_prefix/bin/g\["

#export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'
eval $(  dircolors -b $HOME/Library/LS_COLORS/LS_COLORS )
source $HOME/Library/zsh-syntax-highlighting-filetypes/zsh-syntax-highlighting-filetypes.zsh

# do ls right after cd
cd () {
  if [ -n $1 ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}
# list files only
lf () { ls -1p $@ | grep -v '\/$' }

function pless { pygmentize $1 | less -r }

function sss {
    FOO=`echo $1 | awk -F@ '{print $2}'`
    #echo $FOO
    if ping -o $FOO; then
        ssh $1
    fi
}

beepwhenup () { 
    echo 'Enter host you want to ping:'; 
    read PHOST; 
    if [[ "$PHOST" == "" ]]; 
        then exit; 
    fi;
    
    while true; 
    do 
        ping -c1 -W2 $PHOST 2>&1 >/dev/null; 
        if [[ "$?" == "0" ]]; 
        then 
            for j in $(seq 1 4); 
            do beep; 
        done; 
            ping -c1 $PHOST; 
            break; 
        fi; 
    done; 
}

jgrep () {
  find . -name \*jar -print -exec jar -tvf {} \; | awk "/$1/ || /jar/ {print} ";
}

foo () {
    ping -o -i 30 HOSTNAME && osascript -e 'tell app "Terminal" to display dialog "Server is up" buttons "It?s about time" default button 1'
}

foxml () {
	cat $1 | xml fo | sponge $1
}

pbxml () {
	pbpaste > /tmp/pb.xml;
	cat /tmp/pb.xml | xml fo | pbcopy;
	rm /tmp/pb.xml;
}

fixbmi () {
  cat $1 | xml sel -t -c '//quote_process' | xml fo | sponge $1
}

pbbmi() {
        pbpaste > tmp.xml
        ORDERXML=`xml sel -t -v '//quoteNumber_quote' tmp.xml`.xml
        mv tmp.xml $ORDERXML
        fixbmi $ORDERXML
}

showpromos () {
  cat $1 | xml sel -t -m '//line_process[promotionDetails_line!=""]' -v promotionDetails_line -n | perl -MHTML::Entities -ne 'print decode_entities($_)'
}

sendOrderToTest() {
  curl -H "Content-Type: application/xml; charset=utf-8" -d @$1 http://mspesbqtctest:8280/services/BMI_Orders
}

sendOrderToProd() {
  curl -H "Content-Type: application/xml; charset=utf-8" -d @$1 http://qtc-esb-400:8280/services/BMI_Orders
}

sendOrderToNewProd () {
  curl -H "Content-Type: application/xml; charset=utf-8" -d @$1 http://10.21.85.107:8280/services/BMI_Orders
}

loadTestAccountC () {
  curl -k -X POST -H 'Content-Type: application/soap+xml;charset=UTF-8;action="http://tempuri.org/IAccountService/LoadAccount"' -d '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/" xmlns:met="http://schemas.datacontract.org/2004/07/MetraTech.ActivityServices.Common"><soap:Header/><soap:Body><tem:LoadAccount><tem:acct><met:m_Namespace>concur.com</met:m_Namespace><met:m_Username>'$1'</met:m_Username></tem:acct><tem:timeStamp>'$(date "+%Y-%m-%dT%T-05:00")'</tem:timeStamp></tem:LoadAccount></soap:Body></soap:Envelope>' http://mspesbqtctest:8280/services/MT_Account_Proxy
}

loadAccountC () {
  curl -k -X POST -H 'Content-Type: application/soap+xml;charset=UTF-8;action="http://tempuri.org/IAccountService/LoadAccount"' -d '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/" xmlns:met="http://schemas.datacontract.org/2004/07/MetraTech.ActivityServices.Common"><soap:Header/><soap:Body><tem:LoadAccount><tem:acct><met:m_Namespace>concur.com</met:m_Namespace><met:m_Username>'$1'</met:m_Username></tem:acct><tem:timeStamp>'$(date "+%Y-%m-%dT%T-05:00")'</tem:timeStamp></tem:LoadAccount></soap:Body></soap:Envelope>' http://esb-403-qtc-prod:8280/services/MT_Account_Proxy
}

loadAccount () {
  curl -k -X POST -H 'Content-Type: application/soap+xml;charset=UTF-8;action="http://tempuri.org/IAccountService/LoadAccount"' -d '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/" xmlns:met="http://schemas.datacontract.org/2004/07/MetraTech.ActivityServices.Common"><soap:Header/><soap:Body><tem:LoadAccount><tem:acct><met:m_AccountID>'$1'</met:m_AccountID></tem:acct><tem:timeStamp>'$(date "+%Y-%m-%dT%T-05:00")'</tem:timeStamp></tem:LoadAccount></soap:Body></soap:Envelope>' http://esb-403-qtc-prod:8280/services/MT_Account_Proxy
}

loadTestAccount () {
  curl -k -X POST -H 'Content-Type: application/soap+xml;charset=UTF-8;action="http://tempuri.org/IAccountService/LoadAccount"' -d '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/" xmlns:met="http://schemas.datacontract.org/2004/07/MetraTech.ActivityServices.Common"><soap:Header/><soap:Body><tem:LoadAccount><tem:acct><met:m_AccountID>'$1'</met:m_AccountID></tem:acct><tem:timeStamp>'$(date "+%Y-%m-%dT%T-05:00")'</tem:timeStamp></tem:LoadAccount></soap:Body></soap:Envelope>' http://esb-403-qtc-test:8280/services/MT_Account_Proxy
}

getOrderFromTest () {
  ORDERNUM=$1
  ORDERPATH=$(ssh mspesbqtctest "find /opt/bmi_orders/${ORDERNUM}* | tail -n 1")
  scp mspesbqtctest:${ORDERPATH} .
  ORDERFILE=$(echo $ORDERPATH | awk -F/ '{print $4}')
  fixbmi $ORDERFILE
}

getOrderFromProd () {
  ORDERNUM=$1
  ORDERPATH=$(ssh esb-403-qtc-prod "find /opt/bmi_orders/${ORDERNUM}* | tail -n 1")
  scp esb-403-qtc-prod:${ORDERPATH} .
  ORDERFILE=$(echo $ORDERPATH | awk -F/ '{print $4}')
  fixbmi $ORDERFILE
}

worklog () {
  LOGDIRECTORY=$HOME/Documents/Worklog/$(date -j +"%Y/%m")
  if [[ ! -d ${LOGDIRECTORY} ]] 
  then
    mkdir -p ${LOGDIRECTORY}
  fi
  LOGFILE=${LOGDIRECTORY}/$(date -j +"%Y%m%d.org")
  if [[ ! -f ${LOGFILE} ]]
  then
    OLDLOGFILE=$(find ~/Documents/Worklog -path ~/Documents/Worklog/Objectives -prune -o -print | tail -n 1)
    if [[ -d ${OLDLOGFILE} ]]
    then
    	OLDLOGFILE=$(find ~/Documents/Worklog -path ~/Documents/Worklog/Objectives -prune -o -print | tail -n 2 | head -n 1)
    fi
    cp ${OLDLOGFILE} ${LOGFILE}
  fi
  emacs $LOGFILE
}

function vpn-connect {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "Concur VPN"
                if exists VPN then connect VPN
                repeat while (current configuration of VPN is not connected)
                    delay 1
                end repeat
        end tell
end tell
EOF
}

function vpn-disconnect {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "Concur VPN"
                if exists VPN then disconnect VPN
        end tell
end tell
return
EOF
}

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## FINK
#. /sw/bin/init.sh
#


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/opt/chefdk/bin
# Uncomment these lines if you want to live on the Edge:
#
# group :development do
#   gem "berkshelf", github: "berkshelf/berkshelf"
#   gem "vagrant", github: "mitchellh/vagrant", tag: "v1.6.3"
# end
#
# group :plugins do
#   gem "vagrant-berkshelf", github: "berkshelf/vagrant-berkshelf"
#   gem "vagrant-omnibus", github: "schisamo/vagrant-omnibus"
# end


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PERL_MB_OPT="--install_base \"/Users/hoggarth/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/hoggarth/perl5"; export PERL_MM_OPT;

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

toUtf8 () {
	cat $1 | sed 's/utf-16/utf-8/g' | sponge $1
}

removeNewLinesAndFormatXml () {
	cat $1 | tr -d "\n\r" | xml fo | sponge $1
}


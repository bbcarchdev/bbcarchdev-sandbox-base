if [ -r $HOME/.reithproxies ] ; then
	state=`cat $HOME/.reithproxies`
	if [ x"$state" = x"on" ] ; then
		export http_proxy="http://www-cache.reith.bbc.co.uk:80"
		export https_proxy="http://www-cache.reith.bbc.co.uk:80"
		export ftp_proxy="http://www-cache.reith.bbc.co.uk:80"
		export socks_proxy="socks-gw.reith.bbc.co.uk:1085"
		export no_proxy="localhost,127.0.0.1,192.168.,core.bbc.co.uk,fabric.bbc.co.uk,bs.bbc.co.uk"
		export GIT_PROXY_COMMAND="/usr/sbin/socks_connect"
	fi
fi

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ED21DDA44
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 May 2020 00:32:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C5998893FD;
	Thu, 21 May 2020 22:32:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-v5HjmEwVR3; Thu, 21 May 2020 22:32:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 130E5894A5;
	Thu, 21 May 2020 22:32:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA3BA1BF306
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 19:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A950E884E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 19:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KXoaCcrRRk6P for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2020 19:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D5D04884D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2020 19:23:50 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 964D9B21E;
 Thu, 21 May 2020 19:23:50 +0000 (UTC)
Received: by lion.mk-sys.cz (Postfix, from userid 1000)
 id C4B67604F6; Thu, 21 May 2020 21:23:42 +0200 (CEST)
Date: Thu, 21 May 2020 21:23:42 +0200
From: Michal Kubecek <mkubecek@suse.cz>
To: netdev@vger.kernel.org
Message-ID: <20200521192342.GE8771@lion.mk-sys.cz>
References: <cover.1590081982.git.yu.c.chen@intel.com>
 <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 21 May 2020 22:32:09 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/2] e1000e: Make WOL info in ethtool
 consistent with device wake up ability
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Len Brown <len.brown@intel.com>, Auke Kok <auke-jan.h.kok@intel.com>,
 Chen Yu <yu.c.chen@intel.com>, Jeff Garzik <jeff@garzik.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Stable@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "Shevchenko, Andriy" <andriy.shevchenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 22, 2020 at 01:59:13AM +0800, Chen Yu wrote:
> Currently the ethtool shows that WOL(Wake On Lan) is enabled
> even if the device wakeup ability has been disabled via sysfs:
>   cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
>    disabled
> 
>   ethtool eno1
>   ...
>   Wake-on: g
> 
> Fix this in ethtool to check if the user has explicitly disabled the
> wake up ability for this device.

Wouldn't this lead to rather unexpected and inconsistent behaviour when
the wakeup is disabled? As you don't touch the set_wol handler, I assume
it will still allow setting enabled modes as usual so that you get e.g.

  ethtool -s eth0 wol g   # no error or warning, returns 0
  ethtool eth0            # reports no modes enabled

The first command would set the enabled wol modes but that would be
hidden from user and even the netlink notification would claim something
different. Another exampe (with kernel and ethtool >= 5.6):

  ethtool -s eth0 wol g
  ethtool -s eth0 wol +m

resulting in "mg" if device wakeup is enabled but "m" when it's disabled
(but the latter would be hidden from user and only revealed when you
enable the device wakeup).

This is a general problem discussed recently for EEE and pause
autonegotiation: if setting A can be effectively used only when B is
enabled, should we hide actual setting of A from userspace when B is
disabled or even reset the value of A whenever B gets toggled or rather
allow setting A and B independently? AFAICS the consensus seemed to be
that A should be allowed to be set and queried independently of the
value of B.

Michal

> Fixes: 6ff68026f475 ("e1000e: Use device_set_wakeup_enable")
> Reported-by: Len Brown <len.brown@intel.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: <Stable@vger.kernel.org>
> Signed-off-by: Chen Yu <yu.c.chen@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 1d47e2503072..0cccd823ff24 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -1891,7 +1891,7 @@ static void e1000_get_wol(struct net_device *netdev,
>  	wol->wolopts = 0;
>  
>  	if (!(adapter->flags & FLAG_HAS_WOL) ||
> -	    !device_can_wakeup(&adapter->pdev->dev))
> +	    !device_may_wakeup(&adapter->pdev->dev))
>  		return;
>  
>  	wol->supported = WAKE_UCAST | WAKE_MCAST |
> -- 
> 2.17.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

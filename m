Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AFB1E2E5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 21:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 36E44230BD;
	Tue, 26 May 2020 19:28:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CT+f8Elgg2B4; Tue, 26 May 2020 19:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5488223335;
	Tue, 26 May 2020 19:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11AC71BF33F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 May 2020 21:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0707386E2A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 May 2020 21:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1la5bsLHpA9 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 May 2020 21:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D9D7386E1F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 May 2020 21:07:01 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8046FAD85;
 Sun, 24 May 2020 21:07:01 +0000 (UTC)
Received: by lion.mk-sys.cz (Postfix, from userid 1000)
 id 8F7E2604C8; Sun, 24 May 2020 23:06:53 +0200 (CEST)
Date: Sun, 24 May 2020 23:06:53 +0200
From: Michal Kubecek <mkubecek@suse.cz>
To: Chen Yu <yu.c.chen@intel.com>
Message-ID: <20200524210653.2bzmotjbsknm6zhn@lion.mk-sys.cz>
References: <cover.1590081982.git.yu.c.chen@intel.com>
 <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
 <20200521192342.GE8771@lion.mk-sys.cz>
 <20200523090950.GA20370@chenyu-office.sh.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523090950.GA20370@chenyu-office.sh.intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Approved-At: Tue, 26 May 2020 19:28:52 +0000
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
 "Shevchenko, Andriy" <andriy.shevchenko@intel.com>,
 Jeff Garzik <jeff@garzik.org>, netdev@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Stable@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, May 23, 2020 at 05:09:50PM +0800, Chen Yu wrote:
> Hi Michal,
> Thanks for reviewing,
> and sorry for late reply.
> On Thu, May 21, 2020 at 09:23:42PM +0200, Michal Kubecek wrote:
> > On Fri, May 22, 2020 at 01:59:13AM +0800, Chen Yu wrote:
> > > Currently the ethtool shows that WOL(Wake On Lan) is enabled
> > > even if the device wakeup ability has been disabled via sysfs:
> > >   cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
> > >    disabled
> > > 
> > >   ethtool eno1
> > >   ...
> > >   Wake-on: g
> > > 
> > > Fix this in ethtool to check if the user has explicitly disabled the
> > > wake up ability for this device.
> > 
> > Wouldn't this lead to rather unexpected and inconsistent behaviour when
> > the wakeup is disabled? As you don't touch the set_wol handler, I assume
> > it will still allow setting enabled modes as usual so that you get e.g.
> > 
> >   ethtool -s eth0 wol g   # no error or warning, returns 0
> >   ethtool eth0            # reports no modes enabled
> > 
> > The first command would set the enabled wol modes but that would be
> > hidden from user and even the netlink notification would claim something
> > different. Another exampe (with kernel and ethtool >= 5.6):
> > 
> >   ethtool -s eth0 wol g
> >   ethtool -s eth0 wol +m
> > 
> > resulting in "mg" if device wakeup is enabled but "m" when it's disabled
> > (but the latter would be hidden from user and only revealed when you
> > enable the device wakeup).
> > 
> I've tested ethtool v5.6 on top of kernel v5.7-rc6, it looks like
> the scenario you described will not happen as it will not allow
> the user to enable the wol options with device wakeup disabled,
> not sure if I missed something:
> 
> /sys/devices/pci0000:00/0000:00:1f.6/power# echo disabled > wakeup
> 
> ethtool -s eno1 wol g
> netlink error: cannot enable unsupported WoL mode (offset 36)
> netlink error: Invalid argument
> 
> I've not digged into the code too much, but according to
> ethhl_set_wol(), it will first get the current wol options
> via dev->ethtool_ops->get_wol(), and both the wolopts and
> wol.supported are 0 when device wake up are disabled. Then
> ethnl_update_bitset32 might manipulate on wolopts and
> make it non-zero each is controdict with the precondition that
> no opts should be enabled due to 0 wol.supported.

You are right, I didn't realize that you report 0 even for supported WoL
modes. However, this feels even more wrong from my point of view as then
even the list of supported WoL modes would be hidden from user when the
sysfs switch is off.

Also, AFAICS "ethtool -s <dev> wol d" would be still allowed but the
behaviour would differ between ioctl and netlink code path: netlink
would identify the operation as no-op and do nothing. But ioctl does not
check new value against old one so that it would call your set_wol()
handler which would set the (hidden) set of enabled WoL modes to empty
which would mean WoL would stay disabled even after enabling the wakeup
via sysctl. In other words, you would allow disabling all WoL modes
(via ioctl) but not setting them to anything else.

> > This is a general problem discussed recently for EEE and pause
> > autonegotiation: if setting A can be effectively used only when B is
> > enabled, should we hide actual setting of A from userspace when B is
> > disabled or even reset the value of A whenever B gets toggled or rather
> > allow setting A and B independently? AFAICS the consensus seemed to be
> > that A should be allowed to be set and queried independently of the
> > value of B.
> 
> But then there would be an inconsistence between A and B. I was
> thinking if there's a way to align them in kernel space and  maintain
> the difference in user space?

I'm not sure what exactly you mean by maintaining the difference in
userspace but there are many situations like this and we usually do not
block the ability to query or set A when the "main switch" is off.
For example, you can add IPv4/6 addresses to an interface when it is
down, even if you cannot receive or transmit packets with these
addresses. Or you can set up netlilter rules in FORWARDING chain
independently of the global ip_forward sysctl which can block all
IPv4 forwarding.

Moreover, if we really wanted to report no supported and enabled WoL
modes when device wakeup is disabled, it should be done for all network
devices, not only in one driver.

Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

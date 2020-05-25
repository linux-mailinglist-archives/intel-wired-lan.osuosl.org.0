Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5E71E2E5D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 21:28:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 630B8886F0;
	Tue, 26 May 2020 19:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RlQGzMhUT4yq; Tue, 26 May 2020 19:28:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B4A19886F5;
	Tue, 26 May 2020 19:28:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FD751BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 16:13:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15E3D20113
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 16:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kCJADsLH739S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 May 2020 16:13:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 24C172002F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 May 2020 16:13:00 +0000 (UTC)
IronPort-SDR: GDDHj7Sk3jYsX/1br0ndOvMl25/gWHPkjYSQiODkvoJ/+1b1kVFMqHLByS6EWke8oLSVEIIXcy
 +NQRw1nyBojA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 09:12:59 -0700
IronPort-SDR: 3dswd96Ser84qZ2sYs/5QFB/EM77NuV0hluSjw8FzZTMkWoOEdCSuPSo+JKu/wCSeZEphV7zZu
 miS6mOZ/q27A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,433,1583222400"; d="scan'208";a="468007850"
Received: from chenyu-office.sh.intel.com ([10.239.158.173])
 by fmsmga005.fm.intel.com with ESMTP; 25 May 2020 09:12:55 -0700
Date: Tue, 26 May 2020 00:12:41 +0800
From: Chen Yu <yu.c.chen@intel.com>
To: Michal Kubecek <mkubecek@suse.cz>
Message-ID: <20200525161241.GA4464@chenyu-office.sh.intel.com>
References: <cover.1590081982.git.yu.c.chen@intel.com>
 <725bad2f3ce7f7b7f1667d53b6527dc059f9e419.1590081982.git.yu.c.chen@intel.com>
 <20200521192342.GE8771@lion.mk-sys.cz>
 <20200523090950.GA20370@chenyu-office.sh.intel.com>
 <20200524210653.2bzmotjbsknm6zhn@lion.mk-sys.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524210653.2bzmotjbsknm6zhn@lion.mk-sys.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Tue, 26 May 2020 19:28:53 +0000
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

On Sun, May 24, 2020 at 11:06:53PM +0200, Michal Kubecek wrote:
> On Sat, May 23, 2020 at 05:09:50PM +0800, Chen Yu wrote:
> > Hi Michal,
> > Thanks for reviewing,
> > and sorry for late reply.
> > On Thu, May 21, 2020 at 09:23:42PM +0200, Michal Kubecek wrote:
> > > On Fri, May 22, 2020 at 01:59:13AM +0800, Chen Yu wrote:
> > > > Currently the ethtool shows that WOL(Wake On Lan) is enabled
> > > > even if the device wakeup ability has been disabled via sysfs:
> > > >   cat /sys/devices/pci0000:00/0000:00:1f.6/power/wakeup
> > > >    disabled
> > > > 
> > > >   ethtool eno1
> > > >   ...
> > > >   Wake-on: g
> > > > 
> > > > Fix this in ethtool to check if the user has explicitly disabled the
> > > > wake up ability for this device.
> > > 
> > > Wouldn't this lead to rather unexpected and inconsistent behaviour when
> > > the wakeup is disabled? As you don't touch the set_wol handler, I assume
> > > it will still allow setting enabled modes as usual so that you get e.g.
> > > 
> > >   ethtool -s eth0 wol g   # no error or warning, returns 0
> > >   ethtool eth0            # reports no modes enabled
> > > 
> > > The first command would set the enabled wol modes but that would be
> > > hidden from user and even the netlink notification would claim something
> > > different. Another exampe (with kernel and ethtool >= 5.6):
> > > 
> > >   ethtool -s eth0 wol g
> > >   ethtool -s eth0 wol +m
> > > 
> > > resulting in "mg" if device wakeup is enabled but "m" when it's disabled
> > > (but the latter would be hidden from user and only revealed when you
> > > enable the device wakeup).
> > > 
> > I've tested ethtool v5.6 on top of kernel v5.7-rc6, it looks like
> > the scenario you described will not happen as it will not allow
> > the user to enable the wol options with device wakeup disabled,
> > not sure if I missed something:
> > 
> > /sys/devices/pci0000:00/0000:00:1f.6/power# echo disabled > wakeup
> > 
> > ethtool -s eno1 wol g
> > netlink error: cannot enable unsupported WoL mode (offset 36)
> > netlink error: Invalid argument
> > 
> > I've not digged into the code too much, but according to
> > ethhl_set_wol(), it will first get the current wol options
> > via dev->ethtool_ops->get_wol(), and both the wolopts and
> > wol.supported are 0 when device wake up are disabled. Then
> > ethnl_update_bitset32 might manipulate on wolopts and
> > make it non-zero each is controdict with the precondition that
> > no opts should be enabled due to 0 wol.supported.
> 
> You are right, I didn't realize that you report 0 even for supported WoL
> modes. However, this feels even more wrong from my point of view as then
> even the list of supported WoL modes would be hidden from user when the
> sysfs switch is off.
I see, the WOL modes should be exposed anyway no matter what wake up
setting it is, as it is read-only.
> 
> Also, AFAICS "ethtool -s <dev> wol d" would be still allowed but the
> behaviour would differ between ioctl and netlink code path: netlink
> would identify the operation as no-op and do nothing. But ioctl does not
> check new value against old one so that it would call your set_wol()
> handler which would set the (hidden) set of enabled WoL modes to empty
> which would mean WoL would stay disabled even after enabling the wakeup
> via sysctl. In other words, you would allow disabling all WoL modes
> (via ioctl) but not setting them to anything else.
> 
I see, then there would be inconsistence between netlink and ioctl mode as a
sequence.
> > > This is a general problem discussed recently for EEE and pause
> > > autonegotiation: if setting A can be effectively used only when B is
> > > enabled, should we hide actual setting of A from userspace when B is
> > > disabled or even reset the value of A whenever B gets toggled or rather
> > > allow setting A and B independently? AFAICS the consensus seemed to be
> > > that A should be allowed to be set and queried independently of the
> > > value of B.
> > 
> > But then there would be an inconsistence between A and B. I was
> > thinking if there's a way to align them in kernel space and  maintain
> > the difference in user space?
> 
> I'm not sure what exactly you mean by maintaining the difference in
> userspace but there are many situations like this and we usually do not
> block the ability to query or set A when the "main switch" is off.
> For example, you can add IPv4/6 addresses to an interface when it is
> down, even if you cannot receive or transmit packets with these
> addresses. Or you can set up netlilter rules in FORWARDING chain
> independently of the global ip_forward sysctl which can block all
> IPv4 forwarding.
>
This is a good point.
> Moreover, if we really wanted to report no supported and enabled WoL
> modes when device wakeup is disabled, it should be done for all network
> devices, not only in one driver.
> 
I think the examples have persuaded me that we should
leave the ethtool code as it is now that, it is okay to
let ethtool be unaware of device wake up ability. Besides,
it would be overkilled if we try to 'fix' it for all
device drivers.

Thanks,
Chenyu
> Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

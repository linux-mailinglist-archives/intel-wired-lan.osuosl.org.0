Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E798B8040BB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 22:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24FC341766;
	Mon,  4 Dec 2023 21:08:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24FC341766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701724085;
	bh=ZM7UTj6ZHSo9rPo9tMP6vsyFD+01jUtDF2RmJdqR10M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S7f7+3mWpgWKIKOP7JhX20GXT6/hNYFdyK41Hkbpn8FyNA/nxbzUjM7iEmn7dqThH
	 k4QXbu3kqPECYotrqPGtxQe271Y1Dn47eCNpoupDxWLWLtPZv4EpxNMH3iY4eMNk+l
	 /kvz0knY2ZKxrmLad0W4OmVLJOaGDhaqkr8oabn4Zs0lqLF6X0WIshudX5VeF6rOrU
	 /MDJTaZm3KnZflhk4YkJgqm7Dc7ztqLSLGZgXaypw7UIwljd150Bp+KlxM5Ir/57Os
	 Trg26n9EjyrM2T8qd6fNrBdSzdeT3wuFgS2tE61CZ4FEIwsaDzFNuHXmZyB2VN55jo
	 G64BAbX8hOKoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I1jqk2kV4eB0; Mon,  4 Dec 2023 21:08:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 82C5E4011A;
	Mon,  4 Dec 2023 21:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 82C5E4011A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 419E51BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:40:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 127274174D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:40:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 127274174D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7neWFOQQR4N for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 20:40:15 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 428AD4032C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 20:40:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 428AD4032C
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAFjd-0000000FFW4-2RPw; Mon, 04 Dec 2023 21:40:10 +0100
Message-ID: <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Marc MERLIN <marc@merlins.org>
Date: Mon, 04 Dec 2023 21:40:08 +0100
In-Reply-To: <20231204203622.GB9330@merlins.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
User-Agent: Evolution 3.50.1 (3.50.1-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Approved-At: Mon, 04 Dec 2023 21:07:53 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=zFFrdwdMxDeLDOu1EEArT/I/Iqq/BUGLwkci9F/B7pM=; 
 t=1701722415; x=1702932015; b=vcJlRby9PUBS+G6Ewag/s34/rQx2nPCnwzC4YiGX3B8KKOU
 4cJ2tGDhkxNUtIy/bm/DiVD3Fm248Q94AtUYpdqyH89YfpnMIJoIxcKBwaah0nh8ksczKaKIjpo/J
 YAXTcAvysn6cQG2WzXyStGvvBWnXMCdFEDNGsvTMHVbbl+QKwdWtuG71bP2KQqH44tyLpOWtMdUS1
 h7VzhJPofHuoEjEZAWiDmJrKkSy1sB/2vvc4BUDyzgbfjOnUF95oxBe4IZ6ONVXJdLCDGiTSptAWC
 YzAkFtdwm93PsJyiLsd+tymB0Oh/ZuKyRQ77TMT0KiXVl/yC8mnZInV5xwz9DwkQ==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=vcJlRby9
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-12-04 at 12:36 -0800, Marc MERLIN wrote:
> 
> So, ipc is not a module for me
> sauron:/usr/src/linux-6.6.4-amd64-preempt-sysrq-20231203# lsmod | grep ipc

I think the driver is "igc", not "ipc".

> sauron:/usr/src/linux-6.6.4-amd64-preempt-sysrq-20231203# 
> 
> Is that a build config option I can reaonably turn off without breaking
> networking altogether?
> 
> Previous boot, before your patch that I just compiled and will test now, 
> it ended with this. I also see ethtool lower down, maybe run randomly by network manager
> but isn't the hang happening before in these loglines, or the order of the logs is not
> the actual sequence order of the problem?

The order of this doesn't tell us much, I believe.

> [ 4230.596282] INFO: task kworker/0:2:132 blocked for more than 120 seconds.
> [ 4230.596288]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
> [ 4230.596289] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 4230.596291] task:kworker/0:2     state:D stack:0     pid:132   ppid:2      flags:0x00004000
> [ 4230.596294] Workqueue: ipv6_addrconf addrconf_verify_work
> [ 4230.596305] Call Trace:
> [ 4230.596310]  <TASK>
> [ 4230.596317]  __schedule+0x6c3/0x727
> [ 4230.596330]  ? update_load_avg+0x43/0x3ba
> [ 4230.596340]  schedule+0x8b/0xbc
> [ 4230.596349]  schedule_preempt_disabled+0x11/0x1d
> [ 4230.596359]  __mutex_lock.constprop.0+0x18b/0x291
> [ 4230.596367]  addrconf_verify_work+0xe/0x20

This is just a worker trying to acquire RTNL.

> [ 4230.596506] INFO: task NetworkManager:3153 blocked for more than 120 seconds.
> [ 4230.596507]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
> [ 4230.596508] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 4230.596509] task:NetworkManager  state:D stack:0     pid:3153  ppid:1      flags:0x00000002
> [ 4230.596511] Call Trace:
> [ 4230.596512]  <TASK>
> [ 4230.596513]  __schedule+0x6c3/0x727
> [ 4230.596515]  schedule+0x8b/0xbc
> [ 4230.596517]  schedule_preempt_disabled+0x11/0x1d
> [ 4230.596519]  __mutex_lock.constprop.0+0x18b/0x291
> [ 4230.596521]  nl80211_prepare_wdev_dump+0x8b/0x19f [cfg80211 7e4322db9148b7482d4806580d3e58073444690f]

This is just wireless trying to acquire the RTNL on behalf of NM.

> [ 4230.596743] INFO: task ThreadPoolForeg:9425 blocked for more than 120 seconds.
> [ 4230.596745]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
> [ 4230.596745] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 4230.596746] task:ThreadPoolForeg state:D stack:0     pid:9425  ppid:9416   flags:0x00000002
> [ 4230.596748] Call Trace:
> [ 4230.596749]  <TASK>
> [ 4230.596750]  __schedule+0x6c3/0x727
> [ 4230.596752]  schedule+0x8b/0xbc
> [ 4230.596754]  schedule_preempt_disabled+0x11/0x1d
> [ 4230.596756]  __mutex_lock.constprop.0+0x18b/0x291
> [ 4230.596758]  ? __pfx_ioctl_standard_call+0x40/0x40
> [ 4230.596760]  ? __pfx_ioctl_private_call+0x40/0x40
> [ 4230.596762]  wext_ioctl_dispatch+0x4b/0x1a7

I don't know why something should be using wireless extensions, but same
thing. Also wext is going away for WiFi7 devices. ;)

> [ 4230.596890] INFO: task ethtool:20272 blocked for more than 120 seconds.
> [ 4230.596891]       Tainted: G     U             6.6.4-amd64-preempt-sysrq-20231203 #5
> [ 4230.596892] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
> [ 4230.596893] task:ethtool         state:D stack:0     pid:20272 ppid:1      flags:0x00004006
> [ 4230.596894] Call Trace:
> [ 4230.596895]  <TASK>
> [ 4230.596896]  __schedule+0x6c3/0x727
> [ 4230.596899]  schedule+0x8b/0xbc
> [ 4230.596900]  schedule_preempt_disabled+0x11/0x1d
> [ 4230.596902]  __mutex_lock.constprop.0+0x18b/0x291
> [ 4230.596904]  ? __pfx_pci_pm_runtime_resume+0x40/0x40
> [ 4230.596908]  igc_resume+0x18b/0x1ca [igc 33cdaa7f35d000f01945bed5e87cab1e358c8327]
> [ 4230.596916]  __rpm_callback+0x7a/0xe7
> [ 4230.596919]  rpm_callback+0x35/0x64
> [ 4230.596921]  ? __pfx_pci_pm_runtime_resume+0x40/0x40
> [ 4230.596922]  rpm_resume+0x342/0x44a
> [ 4230.596924]  ? dev_get_by_name_rcu+0x25/0x41
> [ 4230.596926]  ? dev_get_by_name+0x3c/0x4a
> [ 4230.596928]  __pm_runtime_resume+0x5a/0x7a
> [ 4230.596930]  ethnl_ops_begin+0x2c/0x8d

This one's still the problem, so I guess my 2-line hack didn't do
anything.

[snip rest, they're all just waiting for RTNL]

johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

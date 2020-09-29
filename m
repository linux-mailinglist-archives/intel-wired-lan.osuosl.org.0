Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B5C27D9F1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 23:23:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FA2387174;
	Tue, 29 Sep 2020 21:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0bHZLtoZ9by; Tue, 29 Sep 2020 21:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 07D7A87150;
	Tue, 29 Sep 2020 21:23:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55A061BF324
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 21:22:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4AEA286813
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 21:22:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bN5ecIxIl0v0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 21:22:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5402785B6F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 21:22:05 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 14C3911E48E20;
 Tue, 29 Sep 2020 14:05:14 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:22:00 -0700 (PDT)
Message-Id: <20200929.142200.67101764735438804.davem@davemloft.net>
To: tglx@linutronix.de
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200929202509.673358734@linutronix.de>
References: <20200929202509.673358734@linutronix.de>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [2620:137:e000::1:9]);
 Tue, 29 Sep 2020 14:05:15 -0700 (PDT)
X-Mailman-Approved-At: Tue, 29 Sep 2020 21:23:51 +0000
Subject: Re: [Intel-wired-lan] [patch V2 00/36] net: in_interrupt() cleanup
 and fixes
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
Cc: andrew@lunn.ch, emmanuel.grumbach@intel.com, linux-doc@vger.kernel.org,
 peterz@infradead.org, chris.snook@gmail.com, bigeasy@linutronix.de,
 benve@cisco.com, arend.vanspriel@broadcom.com, _govind@gmx.com,
 vishal@chelsio.com, luciano.coelho@intel.com, ecree@solarflare.com,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 johannes.berg@intel.com, corbet@lwn.net, mchehab+huawei@kernel.org,
 linuxwifi@intel.com, linux@armlinux.org.uk, willy@infradead.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, mhabets@solarflare.com,
 kune@deine-taler.de, jcliburn@gmail.com, paulmck@kernel.org, stf_xl@wp.pl,
 j@w1.fi, hante.meuleman@broadcom.com, gregkh@linuxfoundation.org,
 amitkarwar@gmail.com, wright.feng@cypress.com, dsd@gentoo.org,
 drivers@pensando.io, kvalo@codeaurora.org, franky.lin@broadcom.com,
 linux-net-drivers@solarflare.com, tsbogend@alpha.franken.de,
 chi-hsien.lin@cypress.com, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 stas.yakovlev@gmail.com, jdmason@kudzu.us, snelson@pensando.io,
 luc.vanoostenryck@gmail.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 29 Sep 2020 22:25:09 +0200

> in the discussion about preempt count consistency accross kernel configurations:
> 
>   https://lore.kernel.org/r/20200914204209.256266093@linutronix.de/
> 
> Linus clearly requested that code in drivers and libraries which changes
> behaviour based on execution context should either be split up so that
> e.g. task context invocations and BH invocations have different interfaces
> or if that's not possible the context information has to be provided by the
> caller which knows in which context it is executing.
> 
> This includes conditional locking, allocation mode (GFP_*) decisions and
> avoidance of code paths which might sleep.
> 
> In the long run, usage of 'preemptible, in_*irq etc.' should be banned from
> driver code completely.
> 
> This is the second version of the first batch of related changes. V1 can be
> found here:
> 
>      https://lore.kernel.org/r/20200927194846.045411263@linutronix.de
 ...

Series applied to net-next, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

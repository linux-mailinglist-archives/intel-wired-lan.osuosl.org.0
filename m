Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3188527CFF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Sep 2020 15:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA7FF87059;
	Tue, 29 Sep 2020 13:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sx3T0YPcidrr; Tue, 29 Sep 2020 13:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 426E687032;
	Tue, 29 Sep 2020 13:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2771BF32D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 08:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1749D2044A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 08:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p8yEaHpzidD3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Sep 2020 08:03:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by silver.osuosl.org (Postfix) with ESMTPS id 58EEC2044B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Sep 2020 08:01:42 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1601366502; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=9AD/zT35EuqhWk9XMxT1t1cUGXJVG2nqKq5G9sWNqJI=;
 b=kCkf2jXWbFZr+etrpieuZBxjnJtWXyH9+0th2hhZUAmIQhJ93kBAXnLvL/czzDKglwKl82GV
 AcIuOOnGhVRmzDZoTH1Cgp5QVn7ZeFe6ilYdjq0RIXHnPniEvTaqK9lYxa9oEXvO5TP1Lb3O
 lJzvNAWTJZ6ejhWPXo9+ou8jd4I=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyIzYjE0NCIsICJpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 5f72e9e51fdd3a1390f5fe68 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 29 Sep 2020 08:01:41
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6AD26C43395; Tue, 29 Sep 2020 08:01:40 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A11ECC433C8;
 Tue, 29 Sep 2020 08:01:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A11ECC433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Thomas Gleixner <tglx@linutronix.de>
References: <20200927194846.045411263@linutronix.de>
Date: Tue, 29 Sep 2020 11:01:23 +0300
In-Reply-To: <20200927194846.045411263@linutronix.de> (Thomas Gleixner's
 message of "Sun, 27 Sep 2020 21:48:46 +0200")
Message-ID: <87o8lpdnak.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Sep 2020 13:52:30 +0000
Subject: Re: [Intel-wired-lan] [patch 00/35] net: in_interrupt() cleanup and
 fixes
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, linux-doc@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Chris Snook <chris.snook@gmail.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Edward Cree <ecree@solarflare.com>, libertas-dev@lists.infradead.org,
 brcm80211-dev-list@cypress.com, brcm80211-dev-list.pdl@broadcom.com,
 Ping-Ke Shih <pkshih@realtek.com>, Johannes Berg <johannes.berg@intel.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Martin Habets <mhabets@solarflare.com>,
 Ulrich Kunitz <kune@deine-taler.de>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante Meuleman <hante.meuleman@broadcom.com>,
 Pascal Terjan <pterjan@google.com>,
 Amitkumar Karwa r <"amitk arwar"@gmail.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wright Feng <wright.feng@cypress.com>, Daniel Drake <dsd@gentoo.org>,
 Pensando Drivers <drivers@pensando.io>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 T homas Bo gendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thomas Gleixner <tglx@linutronix.de> writes:

> Folks,
>
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
> Our team started to dig through drivers and this it the first batch of
> cleanups in drivers/net/. It's not yet complete, so expect further patches
> in the next days.
>
> The series contains:
>
>     - A couple of bug fixes
>
>     - Removal of the bitrotting CAIF SPI driver which has never had a
>       matching driver providing the necessary platform device support.
>
>     - Removal of WARN/BUG(in_interrupt()) en masse as most of them are
>       incomplete because they won't detect other non-preemptible
>       context. All of the functions which have these WARN/BUG invoke core
>       code functions which can sleep. These have plenty of checks to catch
>       _all_ invalid contexts. So it's pointless to have incomplete WARN/BUG
>       in the drivers.
>
>       If a driver wants to have such a check for paranoia reasons, then
>       e.g. lockdep_assert_preemtion_enabled() is the right mechanism to
>       chose because lockdep guarantees to catch all invalid contexts
>       independent of kernel configuration while e.g. preemptible() does
>       not.
>
>     - Conversion of in_interrupt() checks to use either different functions
>       or to hand the context information in from the caller.
>
>     - For some drivers handing the context into functions which decided
>       between netif_rx() and netif_rx_ni() turned out to be impossible due
>       to lack of driver knowledge and convoluted code pathes with multiple
>       indirections. For those a core code function netif_rx_any_context()
>       is provided which contains an in_interrupt() check as a stop
>       gap. This allows to make progess on the driver side cleanup and
>       the function should go away once the driver wizards have fixed it
>       up proper.
>
>     - Simplifcation and cleanups in various places where code pointlessly
>       contains in_interrupt() conditionals which are mostly leftovers from
>       calling conventions in older kernels and have never been cleaned up.
>
>       Along with removing if from the horrible DBG_FOO() macro mess which
>       probably should be removed completely as the kernel today provides
>       way more sensible mechanisms to do function tracing and similar.
>
>     - A few other cleanups which were obvious when chasing the
>       in_interrupt() usage.
>
> The pile is also available from:
>
>     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git softirq
>
> The diffstat summary is:
>
>  86 files changed, 300 insertions(+), 2233 deletions(-)
>
> which is biased by the CAIF SPI removal. Without that it is:
>
>  79 files changed, 300 insertions(+), 697 deletions(-)
>
> Thanks,
>
> 	tglx
> ---

[...]

>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c     |    4 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bus.h        |    5 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/core.c       |   20 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.c       |    8 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fweh.h       |    7 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/msgbuf.c     |    2 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c       |   12 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.h       |    2 
>  b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/usb.c        |    2 
>  b/drivers/net/wireless/intel/ipw2x00/ipw2100.c                  |    3 
>  b/drivers/net/wireless/intel/ipw2x00/ipw2200.h                  |    6 
>  b/drivers/net/wireless/intel/ipw2x00/libipw.h                   |    3 
>  b/drivers/net/wireless/intel/iwlegacy/common.h                  |    4 
>  b/drivers/net/wireless/intel/iwlwifi/iwl-debug.c                |    5 
>  b/drivers/net/wireless/intel/iwlwifi/iwl-devtrace-msg.h         |    6 
>  b/drivers/net/wireless/intersil/hostap/hostap_hw.c              |   12 
>  b/drivers/net/wireless/marvell/libertas/defs.h                  |    3 
>  b/drivers/net/wireless/marvell/libertas/rx.c                    |   11 
>  b/drivers/net/wireless/marvell/libertas_tf/deb_defs.h           |    3 
>  b/drivers/net/wireless/marvell/mwifiex/uap_txrx.c               |    6 
>  b/drivers/net/wireless/marvell/mwifiex/util.c                   |    6 
>  b/drivers/net/wireless/realtek/rtlwifi/base.c                   |   47 
>  b/drivers/net/wireless/realtek/rtlwifi/base.h                   |    3 
>  b/drivers/net/wireless/realtek/rtlwifi/btcoexist/halbtcoutsrc.c |   12 
>  b/drivers/net/wireless/realtek/rtlwifi/core.c                   |    6 
>  b/drivers/net/wireless/realtek/rtlwifi/debug.c                  |   20 
>  b/drivers/net/wireless/realtek/rtlwifi/debug.h                  |    6 
>  b/drivers/net/wireless/realtek/rtlwifi/pci.c                    |    4 
>  b/drivers/net/wireless/realtek/rtlwifi/ps.c                     |   27 
>  b/drivers/net/wireless/realtek/rtlwifi/ps.h                     |   10 
>  b/drivers/net/wireless/realtek/rtlwifi/wifi.h                   |    3 
>  b/drivers/net/wireless/zydas/zd1211rw/zd_usb.c                  |    1 

For the wireless patches:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

I assume Dave will take them, but just let me know if I should take them
instead.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

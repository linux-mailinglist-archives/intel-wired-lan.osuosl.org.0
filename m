Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA90327EA82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Sep 2020 16:00:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94DD2871ED;
	Wed, 30 Sep 2020 14:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8FYfJkqVx6ap; Wed, 30 Sep 2020 14:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 05EA687174;
	Wed, 30 Sep 2020 14:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4AB51BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 08:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C7C3186881
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 08:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmyU37QvYoK0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Sep 2020 08:07:19 +0000 (UTC)
X-Greylist: delayed 00:05:47 by SQLgrey-1.7.6
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com
 [148.163.129.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B58188687E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 08:07:19 +0000 (UTC)
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 5D5B2AEEE0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Sep 2020 08:01:33 +0000 (UTC)
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.64])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 2E5B66005E; Wed, 30 Sep 2020 08:01:32 +0000 (UTC)
Received: from us4-mdac16-12.ut7.mdlocal (unknown [10.7.65.236])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id 2A0FD2009B; 
 Wed, 30 Sep 2020 08:01:32 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.65.199])
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 8B197220056;
 Wed, 30 Sep 2020 08:01:31 +0000 (UTC)
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id DE33618005A;
 Wed, 30 Sep 2020 08:01:29 +0000 (UTC)
Received: from mh-desktop (10.17.20.62) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 30 Sep
 2020 09:01:09 +0100
Date: Wed, 30 Sep 2020 09:00:59 +0100
From: Martin Habets <mhabets@solarflare.com>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20200930080059.GA759845@mh-desktop>
Mail-Followup-To: Thomas Gleixner <tglx@linutronix.de>,
 LKML <linux-kernel@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Paul McKenney <paulmck@kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Christian Benvenuti <benve@cisco.com>,
 Govindarajulu Varadarajan <_govind@gmx.com>,
 Dave Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-doc@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Jay Cliburn <jcliburn@gmail.com>,
 Chris Snook <chris.snook@gmail.com>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Shannon Nelson <snelson@pensando.io>,
 Pensando Drivers <drivers@pensando.io>,
 Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Edward Cree <ecree@solarflare.com>, Jon Mason <jdmason@kudzu.us>,
 Daniel Drake <dsd@gentoo.org>, Ulrich Kunitz <kune@deine-taler.de>,
 Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org,
 linux-usb@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Franky Lin <franky.lin@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>,
 Stanislaw Gruszka <stf_xl@wp.pl>,
 Johannes Berg <johannes.berg@intel.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>, Jouni Malinen <j@w1.fi>,
 Amitkumar Karwar <amitkarwar@gmail.com>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>,
 Xinming Hu <huxinming820@gmail.com>,
 libertas-dev@lists.infradead.org,
 Pascal Terjan <pterjan@google.com>,
 Ping-Ke Shih <pkshih@realtek.com>
References: <20200929202509.673358734@linutronix.de>
 <20200929203501.078203643@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929203501.078203643@linutronix.de>
X-Originating-IP: [10.17.20.62]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.6.1012-25674.003
X-TM-AS-Result: No-7.055800-8.000000-10
X-TMASE-MatchedRID: scwq2vQP8OGB3CLPGH9KvB3Pziq4eLUfcabZ5We+Ltbk1kyQDpEj8OLB
 DcjMHcx7cY+kGWBLq/yUWq3zEclebye/9tnqvgnhalRqQPhHMT4K+4pGZZRa9Bv2iroWthDcakC
 rXhKzdtmG9zWd04+U3ToQGsWExzeNQrIARMpKwYGolIr4dI9j7+lUxvXGcRIycBqXYDUNCazpVi
 VUeZmhdJwA7Oe0sQ7+xGosnG/g3+KtiF+p+9BY6Z4CIKY/Hg3AyJ1gFgOMhOn6APa9i04WGCq2r
 l3dzGQ12iP5mgvODVRaQUD5lj7we1UZlqkyMlpYV+ioo6EPnD+kB99jpcEJJCvslaXspIjpcQ4u
 3HX+lyoF+PYj6P4xsM/gbmgoU/LhYlIrxAazCupFc1SMC3FJkqE7ZT4hHyDpDA2Nf1xiN0z8VRK
 OCHTcrEMMprcbiest
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--7.055800-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.6.1012-25674.003
X-MDID: 1601452892-6uUHibGneDxa
X-Mailman-Approved-At: Wed, 30 Sep 2020 14:00:19 +0000
Subject: Re: [Intel-wired-lan] [patch V2 16/36] net: sfc: Use GFP_KERNEL in
 efx_ef10_try_update_nic_stats()
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
 Arend van Spriel <arend.vanspriel@broadcom.com>, Govindarajulu
 Varadarajan <_govind@gmx.com>, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>, Edward Cree <ecree@solarflare.com>,
 libertas-dev@lists.infradead.org, brcm80211-dev-list@cypress.com,
 brcm80211-dev-list.pdl@broadcom.com, Ping-Ke Shih <pkshih@realtek.com>,
 Johannes Berg <johannes.berg@intel.com>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Intel
 Linux Wireless <linuxwifi@intel.com>, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 intel-wired-lan@lists.osuosl.org, Jakub
 Kicinski <kuba@kernel.org>, Ulrich Kunitz <kune@deine-taler.de>,
 Stanislav Yakovlev <stas.yakovlev@gmail.com>, Jay Cliburn <jcliburn@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Stanislaw Gruszka <stf_xl@wp.pl>,
 Jouni Malinen <j@w1.fi>, Hante
 Meuleman <hante.meuleman@broadcom.com>, Pascal Terjan <pterjan@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Amitkumar
 Karwar <amitkarwar@gmail.com>, Wright Feng <wright.feng@cypress.com>,
 Daniel Drake <dsd@gentoo.org>, Pensando Drivers <drivers@pensando.io>,
 Kalle Valo <kvalo@codeaurora.org>, Franky Lin <franky.lin@broadcom.com>,
 Solarflare linux maintainers <linux-net-drivers@solarflare.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, Xinming Hu <huxinming820@gmail.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Ganapathi Bhat <ganapathi.bhat@nxp.com>, Jon Mason <jdmason@kudzu.us>,
 Shannon Nelson <snelson@pensando.io>, Dave Miller <davem@davemloft.net>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Christian Benvenuti <benve@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 29, 2020 at 10:25:25PM +0200, Thomas Gleixner wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> efx_ef10_try_update_nic_stats_vf() is now only invoked from thread context
> and can sleep after efx::stats_lock is dropped.
> 
> Change the allocation mode from GFP_ATOMIC to GFP_KERNEL.
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Acked-by: Martin Habets <mhabets@solarflare.com>

> ---
> V2: Adjust to Edward's stats update split
> ---
>  drivers/net/ethernet/sfc/ef10.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/drivers/net/ethernet/sfc/ef10.c
> +++ b/drivers/net/ethernet/sfc/ef10.c
> @@ -1873,7 +1873,7 @@ static int efx_ef10_try_update_nic_stats
>  
>  	efx_ef10_get_stat_mask(efx, mask);
>  
> -	rc = efx_nic_alloc_buffer(efx, &stats_buf, dma_len, GFP_ATOMIC);
> +	rc = efx_nic_alloc_buffer(efx, &stats_buf, dma_len, GFP_KERNEL);
>  	if (rc) {
>  		spin_lock_bh(&efx->stats_lock);
>  		return rc;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

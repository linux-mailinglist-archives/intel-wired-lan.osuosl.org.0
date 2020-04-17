Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9631AE4E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 20:40:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F2DB88296;
	Fri, 17 Apr 2020 18:40:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GBlV4Rs5il9n; Fri, 17 Apr 2020 18:40:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA02888299;
	Fri, 17 Apr 2020 18:40:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E993E1BF834
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 18:40:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E45F28780A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 18:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SfQ5d8pk2qTf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 18:40:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B366687801
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 18:40:30 +0000 (UTC)
IronPort-SDR: +plm0EHZ7d0+y1SaFD/7UYmSXkISiv2JuTivHM29bXc8Fll77b9OxdjDZlTdxkb2+e7UOtES/M
 xTVnsqYqJhhA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 11:40:30 -0700
IronPort-SDR: GDPN1+eizLHMI4RvOywmD5b/mFMXbKkmU3TsHCxALIXUWr4OxPJOOMYoT/k5WDC5EfJPoeYUF5
 TCDFv9vooUmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="272504719"
Received: from jbrandeb-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.134.73.141])
 by orsmga002.jf.intel.com with ESMTP; 17 Apr 2020 11:40:28 -0700
Date: Fri, 17 Apr 2020 11:40:27 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: <andrew@daynix.com>
Message-ID: <20200417114027.0000363b@intel.com>
In-Reply-To: <20200417110627.3589435-1-andrew@daynix.com>
References: <20200417110627.3589435-1-andrew@daynix.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fixed issue with LSC pending.
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 17 Apr 2020 14:06:27 +0300
<andrew@daynix.com> wrote:

> From: Andrew Melnychenko <andrew@daynix.com>
> 
> Bug: https://bugzilla.redhat.com/show_bug.cgi?id=1707441
> The issue was detected with QEMU and doesn't reproduce on Windows guest.
> CTRL_EXT.IAME is disabled by
> rev 0a8047ac68e50e4ccbadcfc6b6b070805b976885:
> "to avoid disruption from potential programs that access the registers
> directly."
> So let's leave it like that and add interrupt pending clearance
> using write to ICR. It fixes the issue when removed cable can't be detected
> by the driver.

Thanks for your patch! I think you may want to add a correctly
formatted Fixes: tag.

Please beware, this interrupt code is very tricky and difficult to get
right, we had a "small" change in e1000 that took months to iron out
and get working correctly, and in the meantime broke a bunch of stuff.

So, explaining root cause in your commit message, and a comment below
to help future code editors understand the code/functionality better
would be a good idea, IMO. Also, the QEMU behavior often doesn't do a
very good job of matching real hardware (esp with side effect
registers like ICR), so sometimes it is better to just fix QEMU, did
you consider that in this case?


> 
> Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 177c6da80c57..064bb4a47131 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1898,6 +1898,9 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
>  	struct e1000_hw *hw = &adapter->hw;
>  	u32 icr = er32(ICR);
>  

I'd really like to see a comment in the code here explaining what is
going on. f.e.

	/* if auto-mask is not enabled we need to explicitly
	 * clear the interrupt asserted bit in ICR to allow
	 * more interrupts
	 */
> +	if (!(er32(CTRL_EXT) & E1000_CTRL_EXT_IAME))
> +		ew32(ICR, icr & ~E1000_ICR_INT_ASSERTED);
> +
>  	if (icr & adapter->eiac_mask)
>  		ew32(ICS, (icr & adapter->eiac_mask));



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

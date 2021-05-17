Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0538A386BAB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 22:48:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1487640594;
	Mon, 17 May 2021 20:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atLCL5Urz2f4; Mon, 17 May 2021 20:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5CB540194;
	Mon, 17 May 2021 20:48:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5612D1BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43DD2401B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="1ZpNYLsT";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="Cq5gGnOu"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qf2GegCgAhzh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 20:48:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9890140172
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 20:48:37 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621284514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=N9j0B7b156ySsfMwDJsNRd7Lot/GWP1durNGX4F30bE=;
 b=1ZpNYLsTCuxDd2w4It1l3dHPjwwAqXAEgSY+DEPNfEPoHcR+Tj8HSX/lM6OuPLk7dDZQVW
 W1mANCzHmyx/moYnbSqJIsfksQzHubt7JiZM2zKDIcbWHzozO2ubMZ64DlHO+vvi6SI3/u
 kzgUMF1r1LiMVSf6GAg4a80TbFVuMBAThFvwPAqShd0TKE41wvAv3ecwduS+Wu1jdbDg0I
 AbAfl/Kx/MAGDQmSaMwvUS+//Ee8ZAgjroZ+SaUJfqQ5dTIfSI6X60+ohc6ZLvj7Z1TR8t
 CqFlk/za3NV3QACI21PFNIS7CqVMAmhb4Di/XCXQ8oCYUumaEBmQw4P267xG8Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621284514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=N9j0B7b156ySsfMwDJsNRd7Lot/GWP1durNGX4F30bE=;
 b=Cq5gGnOum9YEtmqRoidToVZ0cJKjg3O1ZDCn247dy6VTZmmSgwiY8J34jS0r/5mY/3Ru7v
 WBWf4Bc9muZaDeDA==
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20210504092340.00006c61@intel.com>
Date: Mon, 17 May 2021 22:48:33 +0200
Message-ID: <87pmxpdr32.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH tip:irq/core v1] genirq: remove
 auto-set of the mask when setting the hint
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
Cc: "juri.lelli@redhat.com" <juri.lelli@redhat.com>,
 "peterz@infradead.org" <peterz@infradead.org>, abelits@marvell.com,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Nitesh Lal <nilal@redhat.com>, "frederic@kernel.org" <frederic@kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, netdev@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 04 2021 at 09:23, Jesse Brandeburg wrote:
> I'd add in addition that irqbalance daemon *stopped* paying attention
> to hints quite a while ago, so I'm not quite sure what purpose they
> serve.

The hint was added so that userspace has a better understanding where it
should place the interrupt. So if irqbalanced ignores it anyway, then
what's the point of the hint? IOW, why is it still used drivers?

Now there is another aspect to that. What happens if irqbalanced does
not run at all and a driver relies on the side effect of the hint
setting the initial affinity. Bah...

While none of the drivers (except the perf muck) actually prevents
userspace from fiddling with the affinity (via IRQF_NOBALANCING) a
deeper inspection shows that they actually might rely on the current
behaviour if irqbalanced is disabled. Of course every driver has its own
convoluted way to do that and all of those functions are well
documented. What a mess.

If the hint still serves a purpose then we can provide a variant which
solely applies the hint and does not fiddle with the actual affinity,
but if the hint is useless anyway then we have a way better option to
clean that up.

Most users are in networking, there are a few in crypto, a couple of
leftovers in scsi, virtio and a handfull of oddball drivers.

The perf muck wants to be cleaned up anyway as it's just crystal clear
abuse.

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

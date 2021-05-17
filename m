Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4550D383CEE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 21:08:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0744A404FC;
	Mon, 17 May 2021 19:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TPH5ec_g54PV; Mon, 17 May 2021 19:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C87B6404C9;
	Mon, 17 May 2021 19:08:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02E3E1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:08:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4F3383CBE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="o9SQmC70";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="e0aQcF3w"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e67O5JzueQHH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 19:08:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48B8283CBB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:08:30 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621278508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CZq0Zc1ElW6yPz6imj2oxDmoySZoSSEBMbiufUA2Zmg=;
 b=o9SQmC70s2eFvxz//H6OLHxYHDqY03vKEABdmcJffUJdxoDE87/lhAJMMZVY2Dwze1oLsn
 zQgHg1g7DlquvL0lXHsQKQZ4CFqYDHyZSrDXTTKUcrxeUH2CGy41KWgB620tLMpaygbqVR
 6j+VVrHb7m5+VPg2F/w78jRZ4o2me/U07mY4WQpWYY8J1iJHN5CSuxBf26syFS2tbRkWa7
 MBfFKEgk5mVCma/Or3ouChFirAD3Ev4R5uo7+jq4PJpCgKQoPA7Ehfx2jKKHe1uqKMz4lB
 Q1VvgjDheJp1mUFX3NqVjFSclKy0ySROj49btfkJRKs03KvwAGdj0yBp0+ASoQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621278508;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CZq0Zc1ElW6yPz6imj2oxDmoySZoSSEBMbiufUA2Zmg=;
 b=e0aQcF3w2r0jSv9EnzJ3s3M+MP2CDaqYaTFGXis35a5At/TqI3mnTBo4LHbiRLWFFb0+5r
 qoL7yx7aWNgupPDQ==
To: Robin Murphy <robin.murphy@arm.com>, Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "frederic\@kernel.org" <frederic@kernel.org>,
 "juri.lelli\@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <d1d5e797-49ee-4968-88c6-c07119343492@arm.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
 <d1d5e797-49ee-4968-88c6-c07119343492@arm.com>
Date: Mon, 17 May 2021 21:08:27 +0200
Message-ID: <874kf1faac.ffs@nanos.tec.linutronix.de>
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
Cc: "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 netdev@vger.kernel.org, "peterz@infradead.org" <peterz@infradead.org>,
 Alex Belits <abelits@marvell.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 linux-kernel@vger.kernel.org, "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 intel-wired-lan@lists.osuosl.org,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 17 2021 at 19:50, Robin Murphy wrote:

> On 2021-05-17 19:08, Thomas Gleixner wrote:
>> On Mon, May 17 2021 at 18:26, Robin Murphy wrote:
>>> On 2021-05-17 17:57, Nitesh Lal wrote:
>>> I'm not implying that there isn't a bug, or that this code ever made
>>> sense in the first place, just that fixing it will unfortunately be a
>>> bit more involved than a simple revert. This patch as-is *will* subtly
>>> break at least the system PMU drivers currently using
>> 
>> s/using/abusing/
>> 
>>> irq_set_affinity_hint() - those I know require the IRQ affinity to
>>> follow whichever CPU the PMU context is bound to, in order to meet perf
>>> core's assumptions about mutual exclusion.
>> 
>> Which driver is that?
>
> Right now, any driver which wants to control an IRQ's affinity and also 
> build as a module, for one thing. I'm familiar with drivers/perf/ where 
> a basic pattern has been widely copied;

Bah. Why the heck can't people talk and just go and rumage until they
find something which hopefully does what they want...

The name of that function should have rang all alarm bells...

> some of the callers in other subsystems appear to *expect* it to set
> the underlying affinity as well, but whether any of those added within
> the last 6 years represent a functional dependency rather than just a
> performance concern I don't know.

Sigh. Let me do yet another tree wide audit...

Thanks,

        tglx


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

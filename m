Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD13383BED
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 20:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E80F40394;
	Mon, 17 May 2021 18:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KfR5v3lyC9uU; Mon, 17 May 2021 18:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DC75402CC;
	Mon, 17 May 2021 18:08:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9D8341BF308
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9862F607F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="Ey7OfTMI";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="nwk42rkP"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MskIQQ3JFnOS for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 18:08:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3BA206058C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 18:08:52 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621274929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CvTjUMP0IFpl0qRUVo9p7Gf+50VNC5rcsZbQA53CimU=;
 b=Ey7OfTMIuqEtByYZx90mXd53djFEoEu8K6IQPlvipZNXg5ghONNRHkNCn3ng4fZHJ14yVJ
 GJFvsrF4jaDT1+cvSLA20ljvzp6GSJku4d78C4Cl9fB+KBVB6k3f9aAEbnFAygXcIBDtoa
 dZQSyUeukUjJ+r7QVVaTL2WMe2VWaCxzYKzcGwcQEKSHyNyhpuw482nShODXmgnLX53zj0
 FNDDJY5gMC1aK6TVCRecA6Mj0F9fHIdZGSDYxUF0THBl2/Qu2LsiPsOHutrwBUp5iHhR+W
 ShmIS0ZMS9bRH5pEk0GZOCGZBu3XBYTzL065HM+NcjX/kLs6ukQ09rczJrw+Ig==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621274929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CvTjUMP0IFpl0qRUVo9p7Gf+50VNC5rcsZbQA53CimU=;
 b=nwk42rkPCNh3s3mfln/GYYElC6A2IeHtvkPV0s3OY/6QuCU3sny3CL8c02/ZY3eO7ySjyt
 gJbDII33Hb8QQmAg==
To: Robin Murphy <robin.murphy@arm.com>, Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "frederic\@kernel.org" <frederic@kernel.org>,
 "juri.lelli\@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
Date: Mon, 17 May 2021 20:08:48 +0200
Message-ID: <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
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

On Mon, May 17 2021 at 18:26, Robin Murphy wrote:
> On 2021-05-17 17:57, Nitesh Lal wrote:
> I'm not implying that there isn't a bug, or that this code ever made 
> sense in the first place, just that fixing it will unfortunately be a 
> bit more involved than a simple revert. This patch as-is *will* subtly 
> break at least the system PMU drivers currently using

s/using/abusing/

> irq_set_affinity_hint() - those I know require the IRQ affinity to 
> follow whichever CPU the PMU context is bound to, in order to meet perf 
> core's assumptions about mutual exclusion.

Which driver is that?

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

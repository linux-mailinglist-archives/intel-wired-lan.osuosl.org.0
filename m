Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5FA383DC0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 21:47:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADBC360AFD;
	Mon, 17 May 2021 19:47:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0-9Nv-S6ZZpn; Mon, 17 May 2021 19:47:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B1C060ABA;
	Mon, 17 May 2021 19:47:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2CB1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:47:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6B76A40257
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="WT4bXOeo";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="4GxHSpNZ"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRa_TigjtS5A for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 19:47:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 926004024C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:47:15 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621280833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PpozXE9Eg8reNXM2Sd0imFqDURR7dGqzmLBtJPdjcXE=;
 b=WT4bXOeoC+ZgH20z5dJSPmzeEJizXclBOtClrdp4waF8XiJ9eYKKO5ZVSjO8HKNDaJbHjJ
 /GamRxcZTVMMTAms7SqJ+UGZ47Dy8vjlNjJaiycBChJ4rUZBTSYim17/iPesXu5KwJVj4E
 G/e7XtdXD0HRyELDnIdr0iy/Ncen4MzYCCgHLcJeGusokoXbQnni2QFIz6UwCVcBh9dpCE
 3sraYiKeMQERVsEnhLvAEVsQpsw3l9H2O1YT2po81RmZzrFPBVEEGvYaQBrOpONU5S3qB4
 ybNFo1I235w7fAAh0/sXOlMH5G6zncY6opF8A5dUrRdayHcgVd0+GmZzbdhyYw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621280833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=PpozXE9Eg8reNXM2Sd0imFqDURR7dGqzmLBtJPdjcXE=;
 b=4GxHSpNZswHYqUYSoeQLyu68tGD1lxN1swfD+vqX8hilV/B9yRXxT8SOH0B7kuSEayiXCI
 AQwV0hZYJX2NtIDg==
To: Nitesh Lal <nilal@redhat.com>, Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAFki+L=LDizBJmFUieMDg9J=U6mn6XxTPPkAaWiyppTouTzaqw@mail.gmail.com>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <CAFki+L=LDizBJmFUieMDg9J=U6mn6XxTPPkAaWiyppTouTzaqw@mail.gmail.com>
Date: Mon, 17 May 2021 21:47:12 +0200
Message-ID: <87y2cddtxb.ffs@nanos.tec.linutronix.de>
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
 "peterz@infradead.org" <peterz@infradead.org>,
 Alex Belits <abelits@marvell.com>, Ingo Molnar <mingo@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>, Marc Zyngier <maz@kernel.org>,
 "jinyuqi@huawei.com" <jinyuqi@huawei.com>, intel-wired-lan@lists.osuosl.org,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "frederic@kernel.org" <frederic@kernel.org>,
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

Nitesh,

On Mon, May 17 2021 at 14:21, Nitesh Lal wrote:
> On Mon, May 17, 2021 at 1:26 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> We can use irq_set_affinity() to set the hint mask as well, however, maybe
> there is a specific reason behind separating those two in the
> first place (maybe not?).

Yes, because kernel side settings might overwrite the hint.

> But even in this case, we have to either modify the PMU drivers' IRQs
> affinity from the userspace or we will have to make changes in the existing
> request_irq code path.

Adjusting them from user space does not work for various reasons,
especially CPU hotplug.

> I am not sure about the latter because we already have the required controls
> to adjust the device IRQ mask (by using default_smp_affinity or by modifying
> them manually).

default_smp_affinity does not help at all and there is nothing a module
can modify manually.

I'll send out a patch series which cleans that up soon.

Thanks,

        tglx


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

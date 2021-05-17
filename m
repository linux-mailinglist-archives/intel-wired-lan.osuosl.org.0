Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D72A5383DB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 21:44:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C99160B01;
	Mon, 17 May 2021 19:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUy0vXPeu0wZ; Mon, 17 May 2021 19:44:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 529C760724;
	Mon, 17 May 2021 19:44:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 993921BF33B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 939E240225
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="GMYgkfTv";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="3ZyX7mXA"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QVDa9-_IxZC3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 19:43:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDB7640214
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 19:43:58 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621280634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TN3eCy4K3v+FJgfvmzzc0Rr5EDmqsacmFrs0RMJDVzU=;
 b=GMYgkfTvzOMMSYG9Z5Kji7SNPPQjvR1SKqkMheQ6jKoITXDpRcEdvARxgbXnKTWYkntFHj
 BUIU7NV37f613bfJ4PeoRd7NpKwCWOBtaLEzt8p7y8nZCm/Ifltx+SkLgVpeVyW2hGOtHW
 PfYX3ELXMcstAsw3RMrFuK8ZrhC1PrkdnJCiscbgMyIQ5UImP6GfQucc89ZNoPa6z8jJui
 FimZKiy4fnQJ/X8Y4hOJsLqOmLCIj3Yb9S/polhLWIj8LTk91yjIDmtqsfq1eplvo/qY4K
 EbjLDncfAPa28ZTl+7yPnazbGGM+iGGsYbJvYsu2ov+ftPq+wCMJfeRaz+D/nA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621280634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TN3eCy4K3v+FJgfvmzzc0Rr5EDmqsacmFrs0RMJDVzU=;
 b=3ZyX7mXAoc/FzM/YFz4cWDS/4vd5Id0khZi3a2JYcqlfmTT9UfJfYFndAYNdZJb4+iWbnS
 41OIcwEdsCM+biBg==
To: Robin Murphy <robin.murphy@arm.com>, Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 "frederic\@kernel.org" <frederic@kernel.org>,
 "juri.lelli\@redhat.com" <juri.lelli@redhat.com>,
 Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <874kf1faac.ffs@nanos.tec.linutronix.de>
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <87sg2lz0zz.ffs@nanos.tec.linutronix.de>
 <d1d5e797-49ee-4968-88c6-c07119343492@arm.com>
 <874kf1faac.ffs@nanos.tec.linutronix.de>
Date: Mon, 17 May 2021 21:43:54 +0200
Message-ID: <871ra5f8n9.ffs@nanos.tec.linutronix.de>
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

On Mon, May 17 2021 at 21:08, Thomas Gleixner wrote:
> On Mon, May 17 2021 at 19:50, Robin Murphy wrote:
>> some of the callers in other subsystems appear to *expect* it to set
>> the underlying affinity as well, but whether any of those added within
>> the last 6 years represent a functional dependency rather than just a
>> performance concern I don't know.
>
> Sigh. Let me do yet another tree wide audit...

It's clearly only the perf muck which has a functional dependency.

None of the other usage sites has IRQF_NOBALANCING set which clearly
makes this a hint because user space can freely muck with the affinity.

Thanks,

        tglx



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

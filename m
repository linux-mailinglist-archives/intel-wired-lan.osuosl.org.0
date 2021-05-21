Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2F138D00B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 23:45:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91BE24183B;
	Fri, 21 May 2021 21:45:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1kYEQHkxsNGl; Fri, 21 May 2021 21:45:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 545B4414DE;
	Fri, 21 May 2021 21:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C7B6E1BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 21:45:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B38AC402B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 21:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="GWPNOh34";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="ys1EeWOd"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0rdgMvZTj5SX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 21:45:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15E7340285
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 21:45:18 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621633514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XaPyYtGVTJJud1M86TNOLs+rsQI2Kj9lnXY3H+cu/B0=;
 b=GWPNOh34mwS1P2HssdlKXWYC2cb0/7ReSUe88lhO6VM4W67K+8jaNdN8J1QWRZKOCLZLek
 obNhTVmcA5eECX4vLfE+2ewnqfM/obokPSvUsKqeHpp2FNJlJFkezOS+ankHC3USbbYBhO
 JxOmEOXlZgcrwxQx2MO2bpdr3TzCJ4gwjrOtRz4xqLIgIXC9EW4tufADmasY68QKks/eBk
 oHkXV0k9J2uwivI0KgsTFxkCMCQfVmuu6GRr9USMiKFNX0/uB2UqPIF+ycpUjf8Dw/DxRH
 vBzB05qF5vJ/LYbp39ehcGCxW3E1AgdJw9h8vZTc6eP8x5PGBx+YOCtWarNtVg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621633514;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=XaPyYtGVTJJud1M86TNOLs+rsQI2Kj9lnXY3H+cu/B0=;
 b=ys1EeWOdNdNZ7QDxXGBp6GDvs0ZkBupG3nrlJ/lE35qgxunHJzjnNadxRQswz2zQMVaPrI
 8Tsdrf+ncPocWqCA==
To: Lijun Pan <lijunp213@gmail.com>
In-Reply-To: <CAOhMmr6p2a=Dgz3Q=cbEoXJjbBjBdJm1Vwt60Si+JDCdbOEVaw@mail.gmail.com>
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
 <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
 <87zgwo9u79.ffs@nanos.tec.linutronix.de>
 <87wnrs9tvp.ffs@nanos.tec.linutronix.de>
 <CAOhMmr6p2a=Dgz3Q=cbEoXJjbBjBdJm1Vwt60Si+JDCdbOEVaw@mail.gmail.com>
Date: Fri, 21 May 2021 23:45:14 +0200
Message-ID: <87eedzahhx.ffs@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] genirq: Provide new interfaces for
 affinity hints
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
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 Nitesh Lal <nilal@redhat.com>, "frederic@kernel.org" <frederic@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>, pjwaskiewicz@gmail.com,
 Neil Horman <nhorman@tuxdriver.com>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 Marcelo Tosatti <mtosatti@redhat.com>, linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 netdev@vger.kernel.org,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 21 2021 at 10:45, Lijun Pan wrote:
> On Fri, May 21, 2021 at 7:48 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>> +/**
>> + * irq_update_affinity_hint - Update the affinity hint
>> + * @irq:       Interrupt to update
>> + * @cpumask:   cpumask pointer (NULL to clear the hint)
>> + *
>> + * Updates the affinity hint, but does not change the affinity of the interrupt.
>> + */
>> +static inline int
>> +irq_update_affinity_hint(unsigned int irq, const struct cpumask *m)
>> +{
>> +       return __irq_apply_affinity_hint(irq, m, true);
>> +}
>
> Should it be:
> return __irq_apply_affinity_hint(irq, m, false);
> here?

Of course. Copy & Pasta should be forbidden.

Thanks for spotting it!

       tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

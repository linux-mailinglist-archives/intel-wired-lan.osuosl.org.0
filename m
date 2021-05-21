Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C24A538C615
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 13:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C4A38458A;
	Fri, 21 May 2021 11:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6XczPKUb4uR6; Fri, 21 May 2021 11:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64556844DD;
	Fri, 21 May 2021 11:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF9AD1BF389
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BC34B40F88
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:56:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linutronix.de header.b="jrrijcDW";
 dkim=neutral reason="invalid (unsupported algorithm ed25519-sha256)"
 header.d=linutronix.de header.b="pzOgjIPE"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dt4YN5E2VjKI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 11:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5619240F82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 11:56:14 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1621598170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mkWCZPQm4Sq8eRx/19smgC/LUP5WutmsllFmC78x3iM=;
 b=jrrijcDW62qctMPrxCPXE+I3Q90yWYLVqGQ/yxRh12V/HvAA4nCM4b766r4kA8aSn4+W6E
 SnRcFBlQvE0mrX89gDciuHuQz771KRrNl1rzuPHyZ7IOQOKeKFvJjJI/wOkLb6sDJpvn9q
 TgadlGc0X/rM2/PgucKpLTCyxxYD915Z+IIh5R86eu4bzWFOfnGAlLAdiRl+7RS8wzUa4O
 zUy3nLU2rk9dFpcvjfjfPfe15jnqoj9aLPNzfzFFf4JT5BYRKOaHYUjUsIyJwEPstKdLu1
 8o9h1bEaNR5IEyG46taJYm8nVwLh9LGpPGvwj9eMvzQn3aSouG7k+mhy6HNnPQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1621598170;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=mkWCZPQm4Sq8eRx/19smgC/LUP5WutmsllFmC78x3iM=;
 b=pzOgjIPEze+IzdbjPO3qovTvTCQJdEkxS1LKiSfgOooS/j3Pkf4u1ZVW+rw51h6LKK/SxF
 /aR/hPOxq6scYiBg==
To: Nitesh Lal <nilal@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Marcelo Tosatti <mtosatti@redhat.com>
In-Reply-To: <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
 <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
Date: Fri, 21 May 2021 13:56:10 +0200
Message-ID: <87zgwo9u79.ffs@nanos.tec.linutronix.de>
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
 "bhelgaas@google.com" <bhelgaas@google.com>, pjwaskiewicz@gmail.com,
 Neil Horman <nhorman@tuxdriver.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, jbrandeb@kernel.org,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Nitesh,

On Thu, May 20 2021 at 20:03, Nitesh Lal wrote:
> On Thu, May 20, 2021 at 5:57 PM Nitesh Lal <nilal@redhat.com> wrote:
>> I think here to ensure that we are not breaking any of the drivers we have
>> to first analyze all the existing drivers and understand how they are using
>> this API.
>> AFAIK there are three possible scenarios:
>>
>> - A driver use this API to spread the IRQs
>>   + For this case we should be safe considering the spreading is naturally
>>     done from the IRQ subsystem itself.
>
> Forgot to mention another thing in the above case is to determine whether
> it is true for all architectures or not as Thomas mentioned.

Yes.

>>
>> - A driver use this API to actually set the hint
>>   + These drivers should have no functional impact because of this revert

Correct.


>> - Driver use this API to force a certain affinity mask
>>   + In this case we have to replace the API with the irq_force_affinity()

irq_set_affinity() or irq_set_affinity_and_hint()

>> I can start looking into the individual drivers, however, testing them will
>> be a challenge.

The only way to do that is to have the core infrastructure added and
then send patches changing it in the way you think. The relevant
maintainers/developers should be able to tell you when your analysis
went south. :)

Been there, done that. It's just lots of work :)

Thanks,

        tglx
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A69C838C89B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 May 2021 15:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51C4284472;
	Fri, 21 May 2021 13:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ooxqekjjlDf; Fri, 21 May 2021 13:46:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63C9184445;
	Fri, 21 May 2021 13:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 004001BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 13:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E083940F43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 13:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f5tgNEg4SqCn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 May 2021 13:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F22BD404F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621604797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=pxEOV+Bz/B1tAe8FeS+TqChUcoqHhutaFnjDp8o1QJQ=;
 b=KdkRxvg2JdYBm/qZMNgDxCNc/LVW3+MbtzvKftMAAkA7fX6Okw729x/LnH+k9e9XbpiF9D
 VBWX2FsxTqugQelnJ65Z1dgJywclrsDbO2Eh3Q+2LvLiSfIWEzW//zt2gdA+nxj3z6Q2sz
 56HLTltRohF1I0jqo4CVt1vYRrDOWAQ=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-UYQSNi8cOOy6ZHeoZS-Lvg-1; Fri, 21 May 2021 09:46:33 -0400
X-MC-Unique: UYQSNi8cOOy6ZHeoZS-Lvg-1
Received: by mail-lj1-f197.google.com with SMTP id
 k30-20020a2e6f1e0000b02900fd86165caaso2345324ljc.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 May 2021 06:46:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pxEOV+Bz/B1tAe8FeS+TqChUcoqHhutaFnjDp8o1QJQ=;
 b=PWaTxQtmwiTkw67tTTWXx2ikZ3HEadtFx3/uTj49PSW5a4j5LcEevnSWl/v1xZ5mFy
 RsFYO36j0Bm/7ysf3l8NCyVSFwof71VbdX8DVpwTaHHS0OkqRmk1n0pVpGvjorRG3fpA
 GP2IUQsfIZl1ZdvCEjTGwA1pzoUaO47yboEmYEDfPDc07tFLsCDmrrkP8XQav3HNoKEf
 /uoEUSc2owg7iz44jmWq2SQy2vH888pQhjJgx4QULnqyuZJCVe8D/XciIek5IWmO+eP9
 czZpuZE26U/bvyz+X/c4+G0jMe9LM+/ediamacdueIfUD36EcyNjGyanHYsLEgx1Auq+
 fJIA==
X-Gm-Message-State: AOAM531WMtzt1GsKhr1KU3TrWZygFV86fGDsyqa3pl94DRL5QDPVHWKs
 cNPX8wTiERvWo3Yq70PYVBRp3U479WoR9atecaoJvSs4H2IDftrFaysBG0FCVfY0uAiIQ4bNixa
 EBa1gXjUMN+1QsNs2BIV03ioUCSav4WkEHKvbCrRUBXLb0w==
X-Received: by 2002:a2e:9802:: with SMTP id a2mr6897030ljj.232.1621604792375; 
 Fri, 21 May 2021 06:46:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlGxBda5A/LzKGja1+OEN8tx6PjZF4MfUkV3JmKj4AkWLhF+MPQT6UkdSN2h3rzdDqbYrS1zrIy9/RGgGSqN4=
X-Received: by 2002:a2e:9802:: with SMTP id a2mr6896994ljj.232.1621604792081; 
 Fri, 21 May 2021 06:46:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
 <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
 <87zgwo9u79.ffs@nanos.tec.linutronix.de>
In-Reply-To: <87zgwo9u79.ffs@nanos.tec.linutronix.de>
From: Nitesh Lal <nilal@redhat.com>
Date: Fri, 21 May 2021 09:46:20 -0400
Message-ID: <CAFki+LnKycMFYTGTswX9vpMepNiCW6BL5TFMTuKZSniab5=4SA@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 Marc Zyngier <maz@kernel.org>, "jinyuqi@huawei.com" <jinyuqi@huawei.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
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

On Fri, May 21, 2021 at 7:56 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Nitesh,
>
> On Thu, May 20 2021 at 20:03, Nitesh Lal wrote:
> > On Thu, May 20, 2021 at 5:57 PM Nitesh Lal <nilal@redhat.com> wrote:
> >> I think here to ensure that we are not breaking any of the drivers we have
> >> to first analyze all the existing drivers and understand how they are using
> >> this API.
> >> AFAIK there are three possible scenarios:
> >>
> >> - A driver use this API to spread the IRQs
> >>   + For this case we should be safe considering the spreading is naturally
> >>     done from the IRQ subsystem itself.
> >
> > Forgot to mention another thing in the above case is to determine whether
> > it is true for all architectures or not as Thomas mentioned.
>
> Yes.
>
> >>
> >> - A driver use this API to actually set the hint
> >>   + These drivers should have no functional impact because of this revert
>
> Correct.
>
>
> >> - Driver use this API to force a certain affinity mask
> >>   + In this case we have to replace the API with the irq_force_affinity()
>
> irq_set_affinity() or irq_set_affinity_and_hint()

Ah yes! my bad. _force_ doesn't check the mask against the online CPUs.
Hmm, I didn't realize that you also added irq_set_affinity_and_hint()
in your last patchset.

>
> >> I can start looking into the individual drivers, however, testing them will
> >> be a challenge.
>
> The only way to do that is to have the core infrastructure added and

Right.

> then send patches changing it in the way you think. The relevant
> maintainers/developers should be able to tell you when your analysis
> went south. :)

Ack will start looking into this.


--
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

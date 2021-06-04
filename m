Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A74A39C16C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 22:36:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0467540638;
	Fri,  4 Jun 2021 20:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjhHtvrxGbYX; Fri,  4 Jun 2021 20:36:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 748A040677;
	Fri,  4 Jun 2021 20:36:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94CD81BF834
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 20:36:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8305C401E8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 20:36:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LutDLiwY8_OA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 20:36:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A12D40164
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 20:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622838961;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Y6Thexy0S9yAdfMWlPeLLADSbYeQgKUJsnhXYbRk/4M=;
 b=LX8Qqs7BVgCL9at8Bj4fCgiqP/bmt04jRoEtUvBDk0T1UaN6pIzOXBtZ+33FgUi6Dp8ukr
 xBOwAcaiO3597eAZppToLkBuOsNXAhzENa6vkNUxkKGt4dgyW/EBOWoEzctSg4ddi2XjNg
 sxc817Efquq+XVHI+u2aC2wFxaEVuoM=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-407-yWt6gqQROreJKPCT_UMFEA-1; Fri, 04 Jun 2021 16:35:59 -0400
X-MC-Unique: yWt6gqQROreJKPCT_UMFEA-1
Received: by mail-lj1-f198.google.com with SMTP id
 z19-20020a2eb5330000b02900eeda415d13so4780592ljm.23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Jun 2021 13:35:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y6Thexy0S9yAdfMWlPeLLADSbYeQgKUJsnhXYbRk/4M=;
 b=NtMfaSEKKXLK5EmQ9N9pL9OvBf79QaMOJ58tLov0NfHTELRLBc0PNfj/4NVanuIeDt
 OJ90nzJursde7Zrj8IpxG3A07a3O3dPT9fqYf09Pgud98crJwFtA6VGZtPceMGQitqbY
 zMVJlHwnH2h+0DOA784JPthyDMluOQ1htJdEx0YCnpISCJC6p4M8yCTJx/GmMzcTZabf
 NM7Gm6Qk7AS8JIxskhATOnRKclUAHeH+OZNE6Lm6s2tVY22DgY2X2zjp9SyQU9NqKSHJ
 8/X18MJCgAEKLXaJNEKpdrHF8QoPq8NLHmYSzVm+66AZGG17X6pUBCu0MjLLkrhNjE4W
 wpag==
X-Gm-Message-State: AOAM531h2cX02Q3XPnUcUkNaH0cTOK0sBA+JfRpi4DZ4d9Dd6VFNd46I
 gXOUPqpOqYcP64919f/WvTW+GKSwDx/YmJR77ExMrnrfs77gdKRS9dgW2ugL8VQNoW3PLuqrRyw
 ybOIN1V/mdlpR0QmtgUGGj3+ZsMQzAn4yQszf/N67TD27cQ==
X-Received: by 2002:a2e:83ce:: with SMTP id s14mr4802998ljh.30.1622838957784; 
 Fri, 04 Jun 2021 13:35:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyA8sfpDISd7W3a8IsW6/YiM57Zw+/p+NaHoiuAPg8X6bW9cLXRUw/b5biIXrpjtTnIR6xsL3IgHzsQtEI3hbs=
X-Received: by 2002:a2e:83ce:: with SMTP id s14mr4802957ljh.30.1622838957476; 
 Fri, 04 Jun 2021 13:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210504092340.00006c61@intel.com>
 <87pmxpdr32.ffs@nanos.tec.linutronix.de>
 <CAFki+Lkjn2VCBcLSAfQZ2PEkx-TR0Ts_jPnK9b-5ne3PUX37TQ@mail.gmail.com>
 <87im3gewlu.ffs@nanos.tec.linutronix.de>
 <CAFki+L=gp10W1ygv7zdsee=BUGpx9yPAckKr7pyo=tkFJPciEg@mail.gmail.com>
 <CAFki+L=eQoMq+mWhw_jVT-biyuDXpxbXY5nO+F6HvCtpbG9V2w@mail.gmail.com>
 <CAFki+LkB1sk3mOv4dd1D-SoPWHOs28ZwN-PqL_6xBk=Qkm40Lw@mail.gmail.com>
 <87zgwo9u79.ffs@nanos.tec.linutronix.de>
 <87wnrs9tvp.ffs@nanos.tec.linutronix.de>
 <CAFki+LkqBHnVYB5VBx_8Ch0u8RfXrJsRzxyuDfHhbR-dCeN3Lg@mail.gmail.com>
 <87bl93ahc4.ffs@nanos.tec.linutronix.de>
In-Reply-To: <87bl93ahc4.ffs@nanos.tec.linutronix.de>
From: Nitesh Lal <nilal@redhat.com>
Date: Fri, 4 Jun 2021 16:35:45 -0400
Message-ID: <CAFki+LmW1d1f-mdFq8ovGERDRMkM7o=urmmQZi9cwXoR+Ydm=w@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
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

On Fri, May 21, 2021 at 5:48 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Fri, May 21 2021 at 12:13, Nitesh Lal wrote:
> > On Fri, May 21, 2021 at 8:03 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >> Provide new interfaces:
> >>
> >>   irq_update_affinity_hint() - Only sets the affinity hint pointer
> >>   irq_apply_affinity_hint()  - Set the pointer and apply the affinity to
> >>                                the interrupt
> >>
> >
> > Any reason why you ruled out the usage of irq_set_affinity_and_hint()?
> > IMHO the latter makes it very clear what the function is meant to do.
>
> You're right. I was trying to phase the existing hint setter out, but
> that's probably pointless overengineering for no real value. Let me redo
> that.
>

Thomas, are you planning to send a v2 for this soon or did I somehow miss
it?

Since your other patch "genirq: Export affinity setter for modules" is
already in linux-next, I have started looking into the drivers where
we can use that.

On thinking about this whole chunk a little more, I do wonder about the
reason why we are still sticking with the hints.

The two reasons that I could come up with are:
- We are not entirely sure if irqbalance still consumes this or not
- For future use by some other userspace daemon  (?)

Does that sound right?

-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

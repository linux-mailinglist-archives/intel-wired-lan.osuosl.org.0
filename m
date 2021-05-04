Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDCD372C0E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 May 2021 16:30:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 162AF843C2;
	Tue,  4 May 2021 14:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MVo3fMcwsBG8; Tue,  4 May 2021 14:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F39EF843BC;
	Tue,  4 May 2021 14:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CACC71BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 14:29:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8A83402C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 14:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwjKP6J7FdXI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 May 2021 14:29:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1581D4010A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 14:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620138564;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=/C/wTNOTCb+yGfszfpaIVYIq+8oCD0tOIWtXOH684UQ=;
 b=OyYxFR1j4KehwpRmCFywOBvwaMw7Wjd+nQjQMIkoj9XLuyv8ZWbNmAJJgLM3MiaLrIfNGE
 kqciXjRUoEWLoKb+m9Pe2/74WvEVCg1V49XSXt/Jhx+drdOTe7EYCwKHM0pBwDmdAGsrMy
 h8pzs4ltdFGoaXhUGRbCXmM0cv1Qkag=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-brmxzPKwM_CGlGmXkxLrkw-1; Tue, 04 May 2021 10:29:22 -0400
X-MC-Unique: brmxzPKwM_CGlGmXkxLrkw-1
Received: by mail-ej1-f72.google.com with SMTP id
 w23-20020a1709061857b029039ea04b02fdso3199164eje.22
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 May 2021 07:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/C/wTNOTCb+yGfszfpaIVYIq+8oCD0tOIWtXOH684UQ=;
 b=GYbtDmIYhrWVZdzMAUhk5jkGjLPlzwBd+r7EQ5y345MzVxPCIDVFZcjc8ZeYjh0uID
 rQAr3vWqYe0IphJac1Na88HmJ5PzCT02RE16dYo2m2kL6hyaXtvz6OW5EmGRINsjMxwE
 qKuxiTdsq4G6BUc9b7E6SRHyQIT8xpa4ctoNPDtx19exER5jVGdn4KV/jJfhz2DRgpBu
 tx97Q5l8dvHXRqtLpMHF2COPl/masCyc9dWu48glZVlH+XGb2hiVkIJruh7aLK3m6XOH
 bSfVQfVSo/NQLirR7IuO9ocZhY2sgX12AqNuMp7FrIg7O/PEsEQ0+yEsBYMkrnryG46n
 5loQ==
X-Gm-Message-State: AOAM530orN11g22OLePIa6WXneSCKD/++1mGV92VvQEDdB6wsOw+PBA9
 SF1HdEejiBHmMoX7BJmGyTk3G8/a0esSJJkzBVx6b9JxSC70+iFcNoOr3iIYHgm4aKJwg8VHUjj
 wW01R0Fs9NMJX15JjE4fGxSnl2RR79ouv6peZJCcXqk+65A==
X-Received: by 2002:a17:906:9a02:: with SMTP id
 ai2mr22704506ejc.279.1620138561245; 
 Tue, 04 May 2021 07:29:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBQGqUZtw6piWjtshZQhonbqeKOMWr75L9XDey1rFpJCXv1AQK+Jw5/m9KuadTFtTp9gtXISJlA+uPKf1wTjE=
X-Received: by 2002:a17:906:9a02:: with SMTP id
 ai2mr22704467ejc.279.1620138560926; 
 Tue, 04 May 2021 07:29:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
In-Reply-To: <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Tue, 4 May 2021 10:29:09 -0400
Message-ID: <CAFki+L=D8aS_jub0KHAkfsnvvJ_w8_mMYbaHeZ-GkQF1s_0WDQ@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Tue, 04 May 2021 14:30:25 +0000
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
 "frederic@kernel.org" <frederic@kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "zhangshaokun@hisilicon.com" <zhangshaokun@hisilicon.com>,
 "rppt@linux.vnet.ibm.com" <rppt@linux.vnet.ibm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>,
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

On Tue, May 4, 2021 at 8:15 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-05-01 03:18, Jesse Brandeburg wrote:
> > It was pointed out by Nitesh that the original work I did in 2014
> > to automatically set the interrupt affinity when requesting a
> > mask is no longer necessary. The kernel has moved on and no
> > longer has the original problem, BUT the original patch
> > introduced a subtle bug when booting a system with reserved or
> > excluded CPUs. Drivers calling this function with a mask value
> > that included a CPU that was currently or in the future
> > unavailable would generally not update the hint.
> >
> > I'm sure there are a million ways to solve this, but the simplest
> > one is to just remove a little code that tries to force the
> > affinity, as Nitesh has shown it fixes the bug and doesn't seem
> > to introduce immediate side effects.
>
> Unfortunately, I think there are quite a few other drivers now relying
> on this behaviour, since they are really using irq_set_affinity_hint()
> as a proxy for irq_set_affinity().

That's true.

> Partly since the latter isn't
> exported to modules, but also I have a vague memory of it being said
> that it's nice to update the user-visible hint to match when the
> affinity does have to be forced to something specific.

If you see the downside of it we are forcing the affinity to match the hint
mask without considering the default SMP affinity mask.

Also, we are repeating things here. First, we set certain mask for a device
IRQ via request_irq code path which does consider the default SMP mask but
then we are letting the driver over-write it.

If we want to set the IRQ mask in a certain way then it should be done at
the time of initial setup itself.

Do you know about a workload/use case that can show the benefit of
this behavior? As then we can try fixing it in the right way.

--
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

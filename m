Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AFA386C15
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 May 2021 23:13:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D602E83C61;
	Mon, 17 May 2021 21:13:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lccEqLv0Jh2b; Mon, 17 May 2021 21:13:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C042F83CDB;
	Mon, 17 May 2021 21:13:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2EA1BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:13:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06AA640172
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ceNMu2vOUFmK for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 May 2021 21:13:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4A8DD40109
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 21:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621286015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=cMVyazJ1DXkMnUs3j/wPGjHkILobShDj4cNdkiPTOO8=;
 b=XMZWst7ydUAPvHnQBCTohbWkG9zK+py4++JbbirJS76e/un0297vWvMJO4gYM/Fl9Wija3
 V/C4zDeU26Tx2u5EfolbCm7XTDv1vHZqWBcSK/9LL6c1srvt45s+VAKzNi331wUYaHIs35
 PeWyhXmMMcOwRuoBo8oAx+EoEuOGiNY=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-0uaCPU4cPp--YmkO5qxLZQ-1; Mon, 17 May 2021 17:13:31 -0400
X-MC-Unique: 0uaCPU4cPp--YmkO5qxLZQ-1
Received: by mail-lj1-f199.google.com with SMTP id
 c16-20020a2ea7900000b02900ef529209ccso3648270ljf.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 May 2021 14:13:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cMVyazJ1DXkMnUs3j/wPGjHkILobShDj4cNdkiPTOO8=;
 b=Ytcs3Fmr5StTbabn4d4iGzTO/DLxPUaGixI4Dj+i1WPhup8QybGBauPXS/HhCPd8YD
 5E1rZMctbXZ9FM99y/Hg31JazXGYBhPsjeRlxQnAukqC6JAUi6q8lvE4DsK19lB2tOFo
 Bf+9ODO3D/Bo7NTdXT2+xjxvPmazSdQplvKe0D+wgx7R9tSxX41YYbTtj1qRXGLR2hae
 jCunNOmYq8TbaEaQieVmY4HgfHtJOQGwSVerAIJoNxeJHKtlbI+sRJZG5vS2X8/kBUXN
 5jp6c9SOGj/D3HnD+2kQnLwEt7rnSh0j1jZhGnIMyC3srDB8fK/d76WF59U8xS7KOMNd
 mksQ==
X-Gm-Message-State: AOAM530rajOjB+FAVkv95sdUdWIiqeCkxajRg0jG/jpiBB9j238tLSox
 agrGaRDRkgE6egkXFLRaZdp+30bAOPB6tvtgjMxWJwlgt6qb8bKb+yX76592+SUysi6ppfpaTPl
 Deg2BuSg6CG71bgKa0gI5kpCo2y+zG6TeesZ/Y6wlpKDVrw==
X-Received: by 2002:a05:6512:3b0f:: with SMTP id
 f15mr1283925lfv.384.1621286010102; 
 Mon, 17 May 2021 14:13:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyqIbTFw79dJ0F4QTNj1vmQA/K7J9iPzeYKZygGXoFgqrcehoZoCiXVL8VcdElnx9bU093vnbhjyUBh7vmtE5k=
X-Received: by 2002:a05:6512:3b0f:: with SMTP id
 f15mr1283890lfv.384.1621286009804; 
 Mon, 17 May 2021 14:13:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210501021832.743094-1-jesse.brandeburg@intel.com>
 <16d8ca67-30c6-bb4b-8946-79de8629156e@arm.com>
 <20210504092340.00006c61@intel.com>
 <CAFki+LmR-o+Fng21ggy48FUX7RhjjpjO87dn3Ld+L4BK2pSRZg@mail.gmail.com>
 <bf1d4892-0639-0bbf-443e-ba284a8ed457@arm.com>
 <CAFki+L=LDizBJmFUieMDg9J=U6mn6XxTPPkAaWiyppTouTzaqw@mail.gmail.com>
 <87y2cddtxb.ffs@nanos.tec.linutronix.de>
In-Reply-To: <87y2cddtxb.ffs@nanos.tec.linutronix.de>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 17 May 2021 17:13:18 -0400
Message-ID: <CAFki+L=RaSZXASAaAxBf=RJqXWju+pkSj3ftMkmoqCLPfg0v=g@mail.gmail.com>
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
 "bhelgaas@google.com" <bhelgaas@google.com>,
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

On Mon, May 17, 2021 at 3:47 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Nitesh,
>
> On Mon, May 17 2021 at 14:21, Nitesh Lal wrote:
> > On Mon, May 17, 2021 at 1:26 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > We can use irq_set_affinity() to set the hint mask as well, however, maybe
> > there is a specific reason behind separating those two in the
> > first place (maybe not?).
>
> Yes, because kernel side settings might overwrite the hint.
>
> > But even in this case, we have to either modify the PMU drivers' IRQs
> > affinity from the userspace or we will have to make changes in the existing
> > request_irq code path.
>
> Adjusting them from user space does not work for various reasons,
> especially CPU hotplug.
>
> > I am not sure about the latter because we already have the required controls
> > to adjust the device IRQ mask (by using default_smp_affinity or by modifying
> > them manually).
>
> default_smp_affinity does not help at all and there is nothing a module
> can modify manually.

Right, it will not help a module.

>
> I'll send out a patch series which cleans that up soon.

Ack, thanks.

>
> Thanks,
>
>         tglx
>
>


--
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

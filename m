Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF4C3B48A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 20:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9A6242280;
	Fri, 25 Jun 2021 18:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2S2wGOZAzrXB; Fri, 25 Jun 2021 18:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0695F4227D;
	Fri, 25 Jun 2021 18:12:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506A41BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 17:52:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4878D4227D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 17:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7_c1j97tthM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 17:52:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D80CE4227C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624643541;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Np0xO1RJa8Fe+o0fE+8kFFb6yFJ3EzhbKHebm61tvY8=;
 b=EMsy/twQiSuiWXxDvsqMXKElfFERbu+jKS+iBmRoj8bxzjJHtTjmc6r1n79zCy2lTZr6Xd
 Aol6V7D/3tLjzIACkY4zhFov46ZSfVA/FfUKahyBLPiaYZEb36i/OsSfQxE86xjLzYVEMG
 LW4+gHO1Ej/9EKoAmqeQDXMP5pi/NLA=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-lPb54kZRNbS1ZjG8iO_SmA-1; Fri, 25 Jun 2021 13:52:20 -0400
X-MC-Unique: lPb54kZRNbS1ZjG8iO_SmA-1
Received: by mail-lj1-f197.google.com with SMTP id
 z8-20020a2e8e880000b02901703789676bso3562743ljk.10
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 10:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Np0xO1RJa8Fe+o0fE+8kFFb6yFJ3EzhbKHebm61tvY8=;
 b=K+rULtyC6sjonhB0HnZJz0o0mn7dNtrOz0vM2M1Va9dyq8ICjgJ4IFL7vzGYINX9RC
 y8bZed4kD6slnLqMdmBMHACDuzr7GG+79zqFXyXG+UhGH+ojHdYMWJxBSHWf4b6RR2CV
 8/E3MZbqO5DcJsKeX2g8Bfrelyeo629udnoKFxewyVOiz4bfGGCnGc48lsjCnDt/sF25
 CIpCVZQ0c6gTrqx7p/XDdyeTYazwMWzuxYUhDaUtK08HNOwldy7Vc6TnWnPpORhYDdfk
 t0hwIdyVoJmVa4bUBvNhq6XljFgKhtuvDE9VQHi/kyKLX20/5d4L3L6uepLH0JFQBp3O
 mM8g==
X-Gm-Message-State: AOAM5320ykXSkywptDtT7ZC3Wxd5Vb+GrAeUaqV+lub2bcvRgh3xPzhV
 0Y/PAYBJYvuK4eKIOoqrY0QHprC5pfStTpQ4iqyTltBL4NaJUyJIgmacA8u1ONA6rugo/OT/eCU
 z4Ho6Mmj3CLbjLu6Tk07+lf3SNn8ziYBEDXB5kLDJY/rXbg==
X-Received: by 2002:a05:6512:1188:: with SMTP id
 g8mr9091340lfr.114.1624643538722; 
 Fri, 25 Jun 2021 10:52:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwv3ONlbYdOAJeKoocH2JT7i37U2k3Ba34lvXyyU9Xl8b/vh+ACiLOhDBLiq7MSlh/s914KOVChB9p0l3+RVAk=
X-Received: by 2002:a05:6512:1188:: with SMTP id
 g8mr9091276lfr.114.1624643538381; 
 Fri, 25 Jun 2021 10:52:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-2-nitesh@redhat.com>
In-Reply-To: <20210617182242.8637-2-nitesh@redhat.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Fri, 25 Jun 2021 13:52:04 -0400
Message-ID: <CAFki+Ln=OS1unuybbD0MKmeJwZci66j6m5OjpNvKDN74E0qw2Q@mail.gmail.com>
To: linux-kernel@vger.kernel.org, linux-api@vger.kernel.org, 
 linux-scsi@vger.kernel.org
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 25 Jun 2021 18:12:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 01/14] genirq: Provide new
 interfaces for affinity hints
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
Cc: Juri Lelli <juri.lelli@redhat.com>, ajit.khaparde@broadcom.com,
 jassisinghbrar@gmail.com, peterz@infradead.org, linux-pci@vger.kernel.org,
 james.smart@broadcom.com, govind@gmx.com, Alaa Hleihel <ahleihel@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, Stefan Assmann <sassmann@redhat.com>,
 sfr@canb.auug.org.au, borisp@nvidia.com, Marc Zyngier <maz@kernel.org>,
 sathya.prakash@broadcom.com, kashyap.desai@broadcom.com,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, pjwaskiewicz@gmail.com,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 sriharsha.basavapatna@broadcom.com, Neil Horman <nhorman@tuxdriver.com>,
 shivasharan.srikanteshwara@broadcom.com, netdev@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, Kamal Heib <kheib@redhat.com>,
 tariqt@nvidia.com, stephen@networkplumber.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Tomas Henzl <thenzl@redhat.com>,
 saeedm@nvidia.com, akpm@linux-foundation.org, Ken Cox <jkc@redhat.com>,
 jbrandeb@kernel.org, davem@davemloft.net, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 17, 2021 at 2:23 PM Nitesh Narayan Lal <nitesh@redhat.com> wrote:
>
> From: Thomas Gleixner <tglx@linutronix.de>
>
> The discussion about removing the side effect of irq_set_affinity_hint() of
> actually applying the cpumask (if not NULL) as affinity to the interrupt,
> unearthed a few unpleasantries:
>
>   1) The modular perf drivers rely on the current behaviour for the very
>      wrong reasons.
>
>   2) While none of the other drivers prevents user space from changing
>      the affinity, a cursorily inspection shows that there are at least
>      expectations in some drivers.
>
> #1 needs to be cleaned up anyway, so that's not a problem
>
> #2 might result in subtle regressions especially when irqbalanced (which
>    nowadays ignores the affinity hint) is disabled.
>
> Provide new interfaces:
>
>   irq_update_affinity_hint()  - Only sets the affinity hint pointer
>   irq_set_affinity_and_hint() - Set the pointer and apply the affinity to
>                                 the interrupt
>
> Make irq_set_affinity_hint() a wrapper around irq_apply_affinity_hint() and
> document it to be phased out.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> Link: https://lore.kernel.org/r/20210501021832.743094-1-jesse.brandeburg@intel.com
> ---
>  include/linux/interrupt.h | 41 ++++++++++++++++++++++++++++++++++++++-
>  kernel/irq/manage.c       |  8 ++++----
>  2 files changed, 44 insertions(+), 5 deletions(-)
>
> diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
> index 2ed65b01c961..4ca491a76033 100644
> --- a/include/linux/interrupt.h
> +++ b/include/linux/interrupt.h
> @@ -328,7 +328,46 @@ extern int irq_force_affinity(unsigned int irq, const struct cpumask *cpumask);
>  extern int irq_can_set_affinity(unsigned int irq);
>  extern int irq_select_affinity(unsigned int irq);
>
> -extern int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m);
> +extern int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
> +                                    bool setaffinity);
> +
> +/**
> + * irq_update_affinity_hint - Update the affinity hint
> + * @irq:       Interrupt to update
> + * @cpumask:   cpumask pointer (NULL to clear the hint)
> + *
> + * Updates the affinity hint, but does not change the affinity of the interrupt.
> + */
> +static inline int
> +irq_update_affinity_hint(unsigned int irq, const struct cpumask *m)
> +{
> +       return __irq_apply_affinity_hint(irq, m, false);
> +}
> +
> +/**
> + * irq_set_affinity_and_hint - Update the affinity hint and apply the provided
> + *                          cpumask to the interrupt
> + * @irq:       Interrupt to update
> + * @cpumask:   cpumask pointer (NULL to clear the hint)
> + *
> + * Updates the affinity hint and if @cpumask is not NULL it applies it as
> + * the affinity of that interrupt.
> + */
> +static inline int
> +irq_set_affinity_and_hint(unsigned int irq, const struct cpumask *m)
> +{
> +       return __irq_apply_affinity_hint(irq, m, true);
> +}
> +
> +/*
> + * Deprecated. Use irq_update_affinity_hint() or irq_set_affinity_and_hint()
> + * instead.
> + */
> +static inline int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
> +{
> +       return irq_set_affinity_and_hint(irq, m);
> +}
> +
>  extern int irq_update_affinity_desc(unsigned int irq,
>                                     struct irq_affinity_desc *affinity);
>
> diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
> index ef30b4762947..837b63e63111 100644
> --- a/kernel/irq/manage.c
> +++ b/kernel/irq/manage.c
> @@ -487,7 +487,8 @@ int irq_force_affinity(unsigned int irq, const struct cpumask *cpumask)
>  }
>  EXPORT_SYMBOL_GPL(irq_force_affinity);
>
> -int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
> +int __irq_apply_affinity_hint(unsigned int irq, const struct cpumask *m,
> +                             bool setaffinity)
>  {
>         unsigned long flags;
>         struct irq_desc *desc = irq_get_desc_lock(irq, &flags, IRQ_GET_DESC_CHECK_GLOBAL);
> @@ -496,12 +497,11 @@ int irq_set_affinity_hint(unsigned int irq, const struct cpumask *m)
>                 return -EINVAL;
>         desc->affinity_hint = m;
>         irq_put_desc_unlock(desc, flags);
> -       /* set the initial affinity to prevent every interrupt being on CPU0 */
> -       if (m)
> +       if (m && setaffinity)
>                 __irq_set_affinity(irq, m, false);
>         return 0;
>  }
> -EXPORT_SYMBOL_GPL(irq_set_affinity_hint);
> +EXPORT_SYMBOL_GPL(__irq_apply_affinity_hint);
>
>  static void irq_affinity_notify(struct work_struct *work)
>  {
> --
> 2.27.0
>

It turns out that this patch has an issue. The new interfaces are not
added under the #ifdef (CONFIG_SMP)'s else section.
I will fix it and send a v2 with other changes.


--
Thanks

Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

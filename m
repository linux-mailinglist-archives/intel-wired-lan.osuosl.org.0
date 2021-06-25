Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492013B49FC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jun 2021 23:09:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8DBB040592;
	Fri, 25 Jun 2021 21:09:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1Hiy-RDtZwN; Fri, 25 Jun 2021 21:09:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 778D0400BD;
	Fri, 25 Jun 2021 21:09:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C16041BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 21:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA26B400BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 21:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45Ug7UiqCY24 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jun 2021 21:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4C02840025
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 21:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624655298;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=8ZDICObM3KXek2Hb3yoYurGVvyXCqbMuKZU9WccmR1E=;
 b=DWfL8hLf6RsN8v6vR+QK3l/KkUsTnb4xTrOPKeCaQuvJ22XJd9/PpXIYkyi8dCO3t/ynyk
 9oq0zDAWEfaXZRuvg6QYmirBVzi248iY+DHLUr//hUGFS1I9n4Y+wG4PjAsFDbePGJllHJ
 0r5WWvPaXf9biEAhxSqXUCBlz1V3YcE=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-NY6VJSL2P5Gy47rc5xlY2w-1; Fri, 25 Jun 2021 17:08:16 -0400
X-MC-Unique: NY6VJSL2P5Gy47rc5xlY2w-1
Received: by mail-lj1-f197.google.com with SMTP id
 v3-20020a2e99030000b0290144dc7b6cf0so3806890lji.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jun 2021 14:08:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ZDICObM3KXek2Hb3yoYurGVvyXCqbMuKZU9WccmR1E=;
 b=BMWNAxBSkbWLpiCyvbQJ+j37zrx+ODsADdfLc+vHCOr6mldZHifXUAa2yRtnzCpFGM
 VhkhKltfh13QfYrrsBPCdEztcbhKyBtc0KfgUotuqqP7fYBaYcUTliqBGX9KlzWO1vyu
 fa7rnddprNr/M7Hkeaunp/w8jSYubPW+yRtj9GF2uPZZNz8fvivB+qoX0bocFsiLrs5e
 2LVrI3qcsy4pqcjzNjcuF1GesQRjqA5LodUx4OwIyfLkKzXjuAeFvYRf+EKmd/wtl1il
 +PwdeVO5bqNkgJT4xA5vgopqsdB72xORcEzmCrRLXJhSuUfI5n8ER4gKy9rJ880n0bMQ
 5uWA==
X-Gm-Message-State: AOAM531l3/geKeqj2bna4RrXGanb+lutT12kVtOsvmI/6T/IouFZFvjg
 X0M6fhklnDKTA1o9fKjiKflXrl59kpWcKErfbInlcH8dYb89t6H0fxOk9C4YGbIlU8fzpQNPyqk
 VYhsscm4v12dhxLH7xjkMz1c6+9QWIgLpvIdekvXoThT63A==
X-Received: by 2002:a19:520b:: with SMTP id m11mr9732704lfb.548.1624655295111; 
 Fri, 25 Jun 2021 14:08:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUexlIFHXeeKXO03SmwGePdENz2CjY0tC2d9T70zel0UdMzzrYS7rF2Shg08+5Cqm1V6fr5JNcCCdgzQuLKqk=
X-Received: by 2002:a19:520b:: with SMTP id m11mr9732628lfb.548.1624655294717; 
 Fri, 25 Jun 2021 14:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-15-nitesh@redhat.com>
 <YNBHQvo1uDfBbr5c@unreal>
In-Reply-To: <YNBHQvo1uDfBbr5c@unreal>
From: Nitesh Lal <nilal@redhat.com>
Date: Fri, 25 Jun 2021 17:08:03 -0400
Message-ID: <CAFki+L=2nVA3FB03BjuXbj+di28LhVUzo9P9WoJyxoQFggt0VQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 25 Jun 2021 21:09:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 14/14] net/mlx4: Use
 irq_update_affinity_hint
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, james.smart@broadcom.com,
 govind@gmx.com, ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com,
 sfr@canb.auug.org.au, linux-scsi@vger.kernel.org, borisp@nvidia.com,
 maz@kernel.org, sathya.prakash@broadcom.com, kashyap.desai@broadcom.com,
 intel-wired-lan@lists.osuosl.org, abelits@marvell.com,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 robin.murphy@arm.com, rostedt@goodmis.org, luobin9@huawei.com,
 rppt@linux.vnet.ibm.com, bhelgaas@google.com, tglx@linutronix.de,
 somnath.kotur@broadcom.com, shiraz.saleem@intel.com, pjwaskiewicz@gmail.com,
 Nitesh Narayan Lal <nitesh@redhat.com>, sreekanth.reddy@broadcom.com,
 sriharsha.basavapatna@broadcom.com, nhorman@tuxdriver.com,
 shivasharan.srikanteshwara@broadcom.com, linux-api@vger.kernel.org,
 mtosatti@redhat.com, kheib@redhat.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, stephen@networkplumber.org, sumit.saxena@broadcom.com,
 thenzl@redhat.com, netdev@vger.kernel.org, saeedm@nvidia.com,
 akpm@linux-foundation.org, jkc@redhat.com, jbrandeb@kernel.org,
 davem@davemloft.net, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 21, 2021 at 4:02 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> On Thu, Jun 17, 2021 at 02:22:42PM -0400, Nitesh Narayan Lal wrote:
> > The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> > that is consumed by the userspace to distribute the interrupts. However,
> > under the hood irq_set_affinity_hint() also applies the provided cpumask
> > (if not NULL) as the affinity for the given interrupt which is an
> > undocumented side effect.
> >
> > To remove this side effect irq_set_affinity_hint() has been marked
> > as deprecated and new interfaces have been introduced. Hence, replace the
> > irq_set_affinity_hint() with the new interface irq_update_affinity_hint()
> > that only updates the affinity_hint pointer.
> >
> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > ---
> >  drivers/net/ethernet/mellanox/mlx4/eq.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/mellanox/mlx4/eq.c b/drivers/net/ethernet/mellanox/mlx4/eq.c
> > index 9e48509ed3b2..f549d697ca95 100644
> > --- a/drivers/net/ethernet/mellanox/mlx4/eq.c
> > +++ b/drivers/net/ethernet/mellanox/mlx4/eq.c
> > @@ -244,9 +244,9 @@ static void mlx4_set_eq_affinity_hint(struct mlx4_priv *priv, int vec)
> >           cpumask_empty(eq->affinity_mask))
> >               return;
> >
> > -     hint_err = irq_set_affinity_hint(eq->irq, eq->affinity_mask);
> > +     hint_err = irq_update_affinity_hint(eq->irq, eq->affinity_mask);
> >       if (hint_err)
> > -             mlx4_warn(dev, "irq_set_affinity_hint failed, err %d\n", hint_err);
> > +             mlx4_warn(dev, "irq_update_affinity_hint failed, err %d\n", hint_err);
> >  }
> >  #endif
> >
> > @@ -1124,7 +1124,7 @@ static void mlx4_free_irqs(struct mlx4_dev *dev)
> >               if (eq_table->eq[i].have_irq) {
> >                       free_cpumask_var(eq_table->eq[i].affinity_mask);
> >  #if defined(CONFIG_SMP)
> > -                     irq_set_affinity_hint(eq_table->eq[i].irq, NULL);
> > +                     irq_update_affinity_hint(eq_table->eq[i].irq, NULL);
> >  #endif
>
> This #if/endif can be deleted.

I think we also can get rid of the other #if/endif CONFIG_SMP
occurrences that are present around mlx4_set_eq_affinity_hint()
definition and call, isn't it?
There is already a check-in interrupt.h so doing it again in the
driver looks like an unwanted repetition IMHO.

>
> Thanks,
> Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
>


-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101C63C84E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 14:57:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3ED6B4053C;
	Wed, 14 Jul 2021 12:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GDRZMHH_8y4; Wed, 14 Jul 2021 12:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 370C040256;
	Wed, 14 Jul 2021 12:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DCED1BF83A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2BCB04056A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AIE1o8QNkdgt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jul 2021 12:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 24F8140566
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 12:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626267415;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=raZzmrSm7aAF93XtBd5NdebdkvP4rzoUtxpQ14Vvgi8=;
 b=YSGQxx/P/js+w8W0ywRLPHlB4ntHt3v9xhBFAbiPzCmvRshPwPP9Kp6+mszzPXm3FlA9kH
 VePyjelIMjGEf1M+KUmFYoFe3bADaOefBc/Jx4PO1cC6ofRrka/b+Xh0Nq3RrrSqDy6wEX
 I+hObQYmFMA3tdRvyBQbv1+gAfCFCrY=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-vkM7I7yLPm-WNcWRKE_fPA-1; Wed, 14 Jul 2021 08:56:54 -0400
X-MC-Unique: vkM7I7yLPm-WNcWRKE_fPA-1
Received: by mail-lj1-f200.google.com with SMTP id
 p9-20020a2e80490000b0290184499f2aceso1105345ljg.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jul 2021 05:56:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=raZzmrSm7aAF93XtBd5NdebdkvP4rzoUtxpQ14Vvgi8=;
 b=aC/zrmljRSEVM09oVpsPCHfjtT0ToLU9DFsfa3RFTCjtCLCOErXo+0UJL3PSUyQEHH
 8ziJsIcYjhzaaHA1SYQyTKtPsLFjXQjQr4uzP44nhbogi0728O8SUCJpnpWmAumzJjGU
 dNN3pjYkSgD+1xsTSGxP6Uhn5QbPMs3gs563Po6hR4CHeOVaEyR3OXkrwN6HXQJydXlt
 316t8qtyc4+k2ou0jR6KlL/xUUNTlUubbkxCEZ3Shl6120ki5f0cdstqf2SK30RZgqHT
 H5W2gp9Z6Ijdtp05s3MHuVC+9LGQiTY6/NfCXpsR/PKZ6MzivlBiEwllJybxDF2SjL+p
 l+Ww==
X-Gm-Message-State: AOAM531G0nYvpXhnU/Aqk6LvX408VfunXwIs+8v1pGG1dPuUDmeKoqyn
 zRHG9iptX4d2FEFJZUXLBLIDvnHyu6xEbu0h1Y/E43WgO5hr1JjDFicHYyGzvcyt08Ryl/l8M+V
 EfH1dHCYUUjdPIYMd2c+wG0kYU+o7ISEhm0vNd8ttYuslIg==
X-Received: by 2002:a19:7d05:: with SMTP id y5mr7890025lfc.159.1626267412762; 
 Wed, 14 Jul 2021 05:56:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx8jmr/n3HvyYiI0el6kooSvghZovJs9ESz6mJmR0hmZCuQ98JAONelY4P6o0p0ninDERR/o2eRUttWE5gB5mc=
X-Received: by 2002:a19:7d05:: with SMTP id y5mr7889951lfc.159.1626267412400; 
 Wed, 14 Jul 2021 05:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210713211502.464259-1-nitesh@redhat.com>
 <20210713211502.464259-7-nitesh@redhat.com>
 <YO7SiFE1dE0dFhkE@unreal>
In-Reply-To: <YO7SiFE1dE0dFhkE@unreal>
From: Nitesh Lal <nilal@redhat.com>
Date: Wed, 14 Jul 2021 08:56:41 -0400
Message-ID: <CAFki+Lm-CpKZai1fV5aMJzEb-x+003m8wLQShSrYpyNh3XC50Q@mail.gmail.com>
To: Leon Romanovsky <leonro@nvidia.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v3 06/14] RDMA/irdma: Use
 irq_set_affinity_and_hint
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
 james.smart@broadcom.com, "Ismail, Mustafa" <mustafa.ismail@intel.com>,
 govind@gmx.com, Alaa Hleihel <ahleihel@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, Stefan Assmann <sassmann@redhat.com>,
 sfr@canb.auug.org.au, linux-scsi@vger.kernel.org, borisp@nvidia.com,
 Marc Zyngier <maz@kernel.org>, sathya.prakash@broadcom.com,
 kashyap.desai@broadcom.com, "Nikolova,
 Tatyana E" <tatyana.e.nikolova@intel.com>,
 Chandrakanth Patil <chandrakanth.patil@broadcom.com>,
 intel-wired-lan@lists.osuosl.org, Alex Belits <abelits@marvell.com>,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, Al Stone <ahs3@redhat.com>, pjwaskiewicz@gmail.com,
 Nitesh Narayan Lal <nitesh@redhat.com>,
 Sreekanth Reddy <sreekanth.reddy@broadcom.com>,
 sriharsha.basavapatna@broadcom.com, Neil Horman <nhorman@tuxdriver.com>,
 shivasharan.srikanteshwara@broadcom.com, linux-api@vger.kernel.org,
 Marcelo Tosatti <mtosatti@redhat.com>, Kamal Heib <kheib@redhat.com>,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Tomas Henzl <thenzl@redhat.com>,
 netdev@vger.kernel.org, saeedm@nvidia.com, akpm@linux-foundation.org,
 Ken Cox <jkc@redhat.com>, jbrandeb@kernel.org, davem@davemloft.net,
 benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 14, 2021 at 8:03 AM Leon Romanovsky <leonro@nvidia.com> wrote:
>
> On Tue, Jul 13, 2021 at 05:14:54PM -0400, Nitesh Narayan Lal wrote:
> > The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> > that is consumed by the userspace to distribute the interrupts and to apply
> > the provided mask as the affinity for its interrupts. However,
> > irq_set_affinity_hint() applying the provided cpumask as an affinity for
> > the interrupt is an undocumented side effect.
> >
> > To remove this side effect irq_set_affinity_hint() has been marked
> > as deprecated and new interfaces have been introduced. Hence, replace the
> > irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> > where the provided mask needs to be applied as the affinity and
> > affinity_hint pointer needs to be set and replace with
> > irq_update_affinity_hint() where only affinity_hint needs to be updated.
> >
> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > ---
> >  drivers/infiniband/hw/irdma/hw.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> > index 7afb8a6a0526..7f13a051d4de 100644
> > --- a/drivers/infiniband/hw/irdma/hw.c
> > +++ b/drivers/infiniband/hw/irdma/hw.c
> > @@ -537,7 +537,7 @@ static void irdma_destroy_irq(struct irdma_pci_f *rf,
> >       struct irdma_sc_dev *dev = &rf->sc_dev;
> >
> >       dev->irq_ops->irdma_dis_irq(dev, msix_vec->idx);
> > -     irq_set_affinity_hint(msix_vec->irq, NULL);
> > +     irq_update_affinity_hint(msix_vec->irq, NULL);
> >       free_irq(msix_vec->irq, dev_id);
> >  }
> >
> > @@ -1087,7 +1087,7 @@ irdma_cfg_ceq_vector(struct irdma_pci_f *rf, struct irdma_ceq *iwceq,
> >       }
> >       cpumask_clear(&msix_vec->mask);
> >       cpumask_set_cpu(msix_vec->cpu_affinity, &msix_vec->mask);
> > -     irq_set_affinity_hint(msix_vec->irq, &msix_vec->mask);
> > +     irq_set_affinity_and_hint(msix_vec->irq, &msix_vec->mask);
>
> I think that it needs to be irq_update_affinity_hint().
>

Ah! I got a little confused from our last conversation about mlx5.

IIUC mlx5 sub-function use case uses irdma (?) and that's why I thought
that perhaps we would also want to define the affinity here from the beginning.

In any case, I will make the change and re-post.

--
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4B63AEA29
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 15:38:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6491160660;
	Mon, 21 Jun 2021 13:38:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Gn2pwg05Lk5; Mon, 21 Jun 2021 13:38:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59507605AA;
	Mon, 21 Jun 2021 13:38:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6024F1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 13:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 49CCC83134
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 13:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9T2K2uDZMN70 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 13:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8843583123
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 13:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624280401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+YgUj6PMWgTlE2/zJGxRd3Re9nIIH1KzyMdqnBdCris=;
 b=NshFqbYhGz0LJGEjt4HnVbJ8/yFLztaBPJ6VbQ2zVwaNLvZwNVSQZUTsPwI30ZEXWXgHVf
 EvcQ/3OA9exewT3wzbnXPPi9ceWFysL+/XARCVEnwKitJ5tIPAa1AKnQ38k0ik3kxiONkb
 Z5TJd/8jaLKws/w0aG0MG73m40gwx0c=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-180-mBxQwFkjNnyaHFz-felbDw-1; Mon, 21 Jun 2021 08:59:58 -0400
X-MC-Unique: mBxQwFkjNnyaHFz-felbDw-1
Received: by mail-lj1-f199.google.com with SMTP id
 b42-20020a05651c0b2ab029016b628e5f99so1394707ljr.5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 05:59:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+YgUj6PMWgTlE2/zJGxRd3Re9nIIH1KzyMdqnBdCris=;
 b=asRNIC7uX6HiRty6L6CQnRvJGROhh2aAw92ajQkUl22R2o9fSY7sgFbmY9AZBzi3hS
 wcb601k/wdNEx3nI4erAhlsc+e5kYKGT9Ijj1Aj+lkMeVECrlFWqB6FBnG4CaklEtUAw
 R5X/fzhowClatJlX57xbC+DIuQRgqChCnCVqaBSsPquLKnkYYP44lgxS19Zyolqazm0k
 tBuREBGwCv20B0gIP/pBN8RrrE+frIylUNykxFmUDBE8UYcWdnQxgbTijkZXYMSz02jG
 fItdvx+OthzMaWcU+7vtFJ+/9LS3gEYdDPtYCdPshlEdNhpaoHcFgQ23P/flfYGEOVMZ
 Kn4A==
X-Gm-Message-State: AOAM5323/lwS9Hpeh0qas6d8GuTXeSDlqlxDtnW7qRrm/BWIRaxvKYMg
 6j6ZOQk6OmmBEjhTONGNHPqef1dDjYNxAm6cebzcp5VGpC3v7c316ETmm53/Cem+W/R2LPTrsq6
 OUXQF1Lg5pvNIHG/3wMJsNYZE2v/RP25Gn5y2WhuqRZPvjg==
X-Received: by 2002:a05:651c:211e:: with SMTP id
 a30mr12543858ljq.14.1624280396492; 
 Mon, 21 Jun 2021 05:59:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzgIQ11ykk0gwSlBTwdhqnda7mKHULal69m5BhjOHqEt21B5fLii3Df/yGCCr/pjsOr3FghqA8GvR4oD/ugEpM=
X-Received: by 2002:a05:651c:211e:: with SMTP id
 a30mr12543807ljq.14.1624280396133; 
 Mon, 21 Jun 2021 05:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-15-nitesh@redhat.com>
 <YNBHQvo1uDfBbr5c@unreal>
In-Reply-To: <YNBHQvo1uDfBbr5c@unreal>
From: Nitesh Lal <nilal@redhat.com>
Date: Mon, 21 Jun 2021 08:59:44 -0400
Message-ID: <CAFki+LkVBjL_D24-DCFyctHFwFZuy4KhV0dGz=8jC0U16vZpFQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Mon, 21 Jun 2021 13:38:11 +0000
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
>

Ack will get rid of them in v2.

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

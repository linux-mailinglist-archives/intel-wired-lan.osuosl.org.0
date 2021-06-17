Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7583A3ABCFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 21:38:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CEBFD60AC0;
	Thu, 17 Jun 2021 19:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V50PXfcj2fvp; Thu, 17 Jun 2021 19:37:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B984360AB9;
	Thu, 17 Jun 2021 19:37:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A06971BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:34:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AFC860AC0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJSzWshFgodL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 19:34:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44B1960AB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623958473;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=0QVbZGtUMKX0YcURF5RZf3wyVH9YC9/0j+v5ommj7wg=;
 b=WiX+suhnsAGnaXGZTnC1JjpKjH+hTDHbXayiN13pFL3mtcjowmwQDbB9KiAxkCSbO04PLN
 AlUIy/zswui5E1Vhh2Z1v7xOhic5tjODbCWv1WOYhEqof16LAgj6h9TLe6+zyXyOkTuJkY
 CGnNnWXu/nY4LgX2iyyARJFjNUhBKBU=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-234-hZ4o_VbPM_CxWG_TUDb_sQ-1; Thu, 17 Jun 2021 15:34:32 -0400
X-MC-Unique: hZ4o_VbPM_CxWG_TUDb_sQ-1
Received: by mail-lj1-f199.google.com with SMTP id
 y26-20020a2e95da0000b029014871079360so3859178ljh.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 12:34:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QVbZGtUMKX0YcURF5RZf3wyVH9YC9/0j+v5ommj7wg=;
 b=CeFSu3qGPD1N3IKi9loJUGhSRmJPpiBYCz3aFvve0H1kP29PnE66u8Tyb9PLa1TU4A
 bbPc3sfOpHX/W6ObkduuAFAjsCiFfehYMDZBUXB4vj2H6kMn+f91YG8eStZlEEQFcInt
 kJQaQDdecCSt1PK3aOW/+vwlNIHeNZxWrkyK4Sv2g1eQ8Z8Orr6jknjMsTq19MDz/0BB
 40jDiTqBKkCm6NNHDB7U0GKsSLzS6uKoGlzrSLTYB0vKS4Msohh1fSfcu8fMIxkpf4I1
 S4tOfPK037LHRw/W7fbghsQPKkZjOx9t3Zgz7a2m0JsmluRJghkzhDk6aKAyKxDQHC3e
 PvfA==
X-Gm-Message-State: AOAM533VE+wlHM/IBadpRnBmLe2lSEA/U4RZ1mxTB9v3iJ8qBrebEZhh
 RrdOnezDymd0zTHX4D57PhuS7BIsnwoV3oHD0x0CCggcS4L7dK+Aj5aF+ec2ZCa8JJ93cQ5lkvj
 jXjS1v/NWPE6KMMYQVHDV53VY84ZrCiZkq1MYswynA4MnEA==
X-Received: by 2002:a05:6512:3d15:: with SMTP id
 d21mr5249849lfv.252.1623958470527; 
 Thu, 17 Jun 2021 12:34:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHcTsgvmvxoF61BXQGGx1dFhjz2R0T1Tg7FJZcTOE3TdflaZaCIihOhmtf7XN6SK1XYVxxcMtvKOgOo8AUTTw=
X-Received: by 2002:a05:6512:3d15:: with SMTP id
 d21mr5249784lfv.252.1623958470194; 
 Thu, 17 Jun 2021 12:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-5-nitesh@redhat.com>
 <ddee52a6-ac70-6e2d-b48e-e9bf38c94265@arm.com>
In-Reply-To: <ddee52a6-ac70-6e2d-b48e-e9bf38c94265@arm.com>
From: Nitesh Lal <nilal@redhat.com>
Date: Thu, 17 Jun 2021 15:34:18 -0400
Message-ID: <CAFki+LkTqThGZDGui4N6Ko-Z8PMPtX7m-KPm0BM4SvbAxrOqVw@mail.gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nilal@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 17 Jun 2021 19:37:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 04/14] scsi: megaraid_sas: Use
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, james.smart@broadcom.com,
 govind@gmx.com, ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com,
 sfr@canb.auug.org.au, linux-scsi@vger.kernel.org, borisp@nvidia.com,
 maz@kernel.org, sathya.prakash@broadcom.com, kashyap.desai@broadcom.com,
 intel-wired-lan@lists.osuosl.org, abelits@marvell.com,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 rostedt@goodmis.org, luobin9@huawei.com, rppt@linux.vnet.ibm.com,
 bhelgaas@google.com, tglx@linutronix.de, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, pjwaskiewicz@gmail.com,
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

On Thu, Jun 17, 2021 at 3:31 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-06-17 19:22, Nitesh Narayan Lal wrote:
> > The driver uses irq_set_affinity_hint() specifically for the high IOPS
> > queue interrupts for two purposes:
> >
> > - To set the affinity_hint which is consumed by the userspace for
> >    distributing the interrupts
> >
> > - To apply an affinity that it provides
> >
> > The driver enforces its own affinity to bind the high IOPS queue interrupts
> > to the local NUMA node. However, irq_set_affinity_hint() applying the
> > provided cpumask as an affinity for the interrupt is an undocumented side
> > effect.
> >
> > To remove this side effect irq_set_affinity_hint() has been marked
> > as deprecated and new interfaces have been introduced. Hence, replace the
> > irq_set_affinity_hint() with the new interface irq_set_affinity_and_hint()
> > that clearly indicates the purpose of the usage and is meant to apply the
> > affinity and set the affinity_hint pointer. Also, replace
> > irq_set_affinity_hint() with irq_update_affinity_hint() when only
> > affinity_hint needs to be updated.
> >
> > Change the megasas_set_high_iops_queue_affinity_hint function name to
> > megasas_set_high_iops_queue_affinity_and_hint to clearly indicate that the
> > function is setting both affinity and affinity_hint.
> >
> > Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> > ---
> >   drivers/scsi/megaraid/megaraid_sas_base.c | 25 ++++++++++++++---------
> >   1 file changed, 15 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
> > index 4d4e9dbe5193..54f4eac09589 100644
> > --- a/drivers/scsi/megaraid/megaraid_sas_base.c
> > +++ b/drivers/scsi/megaraid/megaraid_sas_base.c
> > @@ -5666,7 +5666,7 @@ megasas_setup_irqs_msix(struct megasas_instance *instance, u8 is_probe)
> >                               "Failed to register IRQ for vector %d.\n", i);
> >                       for (j = 0; j < i; j++) {
> >                               if (j < instance->low_latency_index_start)
> > -                                     irq_set_affinity_hint(
> > +                                     irq_update_affinity_hint(
> >                                               pci_irq_vector(pdev, j), NULL);
> >                               free_irq(pci_irq_vector(pdev, j),
> >                                        &instance->irq_context[j]);
> > @@ -5709,7 +5709,7 @@ megasas_destroy_irqs(struct megasas_instance *instance) {
> >       if (instance->msix_vectors)
> >               for (i = 0; i < instance->msix_vectors; i++) {
> >                       if (i < instance->low_latency_index_start)
> > -                             irq_set_affinity_hint(
> > +                             irq_update_affinity_hint(
> >                                   pci_irq_vector(instance->pdev, i), NULL);
> >                       free_irq(pci_irq_vector(instance->pdev, i),
> >                                &instance->irq_context[i]);
> > @@ -5840,22 +5840,27 @@ int megasas_get_device_list(struct megasas_instance *instance)
> >   }
> >
> >   /**
> > - * megasas_set_high_iops_queue_affinity_hint -       Set affinity hint for high IOPS queues
> > - * @instance:                                        Adapter soft state
> > - * return:                                   void
> > + * megasas_set_high_iops_queue_affinity_and_hint -   Set affinity and hint
> > + *                                                   for high IOPS queues
> > + * @instance:                                                Adapter soft state
> > + * return:                                           void
> >    */
> >   static inline void
> > -megasas_set_high_iops_queue_affinity_hint(struct megasas_instance *instance)
> > +megasas_set_high_iops_queue_affinity_and_hint(struct megasas_instance *instance)
> >   {
> >       int i;
> > +     unsigned int irq;
> >       int local_numa_node;
> > +     const struct cpumask *mask;
> >
> >       if (instance->perf_mode == MR_BALANCED_PERF_MODE) {
> >               local_numa_node = dev_to_node(&instance->pdev->dev);
>
> Drive-by nit: you could assign mask in this scope.
>

Sure

> > -             for (i = 0; i < instance->low_latency_index_start; i++)
> > -                     irq_set_affinity_hint(pci_irq_vector(instance->pdev, i),
> > -                             cpumask_of_node(local_numa_node));
> > +             for (i = 0; i < instance->low_latency_index_start; i++) {
> > +                     irq = pci_irq_vector(instance->pdev, i);
> > +                     mask = cpumask_of_node(local_numa_node);
> > +                     irq_update_affinity_hint(irq, mask);
>
> And this doesn't seem to match what the commit message says?
>

Clearly, thanks for catching it.
This should be irq_set_affinity_and_hint().

> Robin.
>
> > +             }
> >       }
> >   }
> >
> > @@ -5944,7 +5949,7 @@ megasas_alloc_irq_vectors(struct megasas_instance *instance)
> >               instance->msix_vectors = 0;
> >
> >       if (instance->smp_affinity_enable)
> > -             megasas_set_high_iops_queue_affinity_hint(instance);
> > +             megasas_set_high_iops_queue_affinity_and_hint(instance);
> >   }
> >
> >   /**
> >
>


-- 
Thanks
Nitesh

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

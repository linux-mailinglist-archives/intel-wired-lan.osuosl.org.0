Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 422683EDCF2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Aug 2021 20:16:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6CDD460795;
	Mon, 16 Aug 2021 18:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9_dR1jSpN6-g; Mon, 16 Aug 2021 18:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 665B260788;
	Mon, 16 Aug 2021 18:16:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBF9C1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 18:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4E8D4043C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 18:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blKFmCj8YFJY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Aug 2021 18:11:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9384C403BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 18:11:58 +0000 (UTC)
Received: by mail-io1-xd35.google.com with SMTP id a21so9233456ioq.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Aug 2021 11:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OgXtNKQVWNS/t9DnTxT4k+sKuavXVHdSyozmTrDmIzs=;
 b=VQMcJfqDIF28JPMngb0oQ/7fJS4RV/h/jGqHDfDcji1nnRVIW5va2razqqgzHvBHOS
 TGfaCQjdn1vsY7Aam4D1pRST+6Ff/b4jXbQdLkSUS/jeJp2FMDX4bx1t2rZgASQVXNPn
 WOJw/pN70skdHEW9+0y1qly5biPDnQ+jn9qcKqMzwA6DZEksN2oYTuSgCkTJlXiMqKBz
 Et09bRVTahG0zDEiaW3HwGOd6dqWseR7SEYxBZQ4cNJ2DaOZuDpgFczJoNGB3XsmyVO1
 YQZzJ7c0yfYdDp8kx9lkckpUCjm21/JIkZG4vjROEk/KkAooM4GdibKsTu5Il6ecpfmq
 277w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OgXtNKQVWNS/t9DnTxT4k+sKuavXVHdSyozmTrDmIzs=;
 b=E1V4BeOyb4QYpGKkVI2XSMHOkEfEnlM9QEmU3y3VMM/dGlOQgcS465kX38/jeE4POx
 MQAAw2yKQKgPX/VUodQPdsefoYaW/AWHIlgZzW5MukHM5OD0DUw1epA5/hR/luZY+RFU
 AK11bg0zd76+rvpxw7awtIGDOEgs/9Jh3edAD7Ewny/ZZun1QDJ4a3vQ8ehblgMqZ5Eg
 qJcXUmqYjJMlxTdAG8Y1UKDj9zfv59vcJkIQbwS4BvRvL0z3gBsIYczZiZW4shSfOKCU
 Q501bDi3/7ff4rEhISzlv1eehepqM+xdbnIuWSpz8VstoyGwyiihV9VFmmFvs+KYTNMG
 VjLg==
X-Gm-Message-State: AOAM533gYJZp2Z3jbIriQ40/U5XwlZn2qiIFjyIjVuJNz6Cb+SO+JV/a
 tfBmVaDctpCR+xcaamCIpLYlWXKAQXYRn8XHYyU=
X-Google-Smtp-Source: ABdhPJxe4xcrw0U4Dd1whvty55tfoYVW3p2Pw16+UKKJO6nXVsQXetYWVAQeXSpRs8A+FqzmkFphq0Q/eIfOk9SMXqI=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr150414ioe.166.1629137517690; 
 Mon, 16 Aug 2021 11:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210720232624.1493424-1-nitesh@redhat.com>
 <20210720232624.1493424-11-nitesh@redhat.com>
In-Reply-To: <20210720232624.1493424-11-nitesh@redhat.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Mon, 16 Aug 2021 13:11:47 -0500
Message-ID: <CABb+yY3Wz57dYZ8pa5zHatGRu1RFmyRK+UvN+B8txCcOUTPQzw@mail.gmail.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
X-Mailman-Approved-At: Mon, 16 Aug 2021 18:16:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 10/14] mailbox: Use
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, mustafa.ismail@intel.com,
 peterz@infradead.org, linux-pci@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, _govind@gmx.com,
 james.smart@broadcom.com, govind@gmx.com,
 Tushar Khandelwal <Tushar.Khandelwal@arm.com>, minlei@redhat.com,
 ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com, kabel@kernel.org,
 Stephen Rothwell <sfr@canb.auug.org.au>, martin.petersen@oracle.com,
 linux-scsi@vger.kernel.org, borisp@nvidia.com, Marc Zyngier <maz@kernel.org>,
 sathya.prakash@broadcom.com, emilne@redhat.com, kashyap.desai@broadcom.com,
 tatyana.e.nikolova@intel.com, chandrakanth.patil@broadcom.com,
 intel-wired-lan@lists.osuosl.org, Yongqiang Niu <yongqiang.niu@mediatek.com>,
 abelits@marvell.com, nilal@redhat.com, jejb@linux.ibm.com,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, dick.kennedy@broadcom.com,
 faisal.latif@intel.com, suganath-prabu.subramani@broadcom.com,
 frederic@kernel.org, Robin Murphy <robin.murphy@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, rppt@linux.vnet.ibm.com,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, somnath.kotur@broadcom.com,
 shiraz.saleem@intel.com, ahs3@redhat.com, pjwaskiewicz@gmail.com,
 sreekanth.reddy@broadcom.com, sriharsha.basavapatna@broadcom.com,
 nhorman@tuxdriver.com, shivasharan.srikanteshwara@broadcom.com,
 "<netdev@vger.kernel.org>" <netdev@vger.kernel.org>, mtosatti@redhat.com,
 kheib@redhat.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 tariqt@nvidia.com, stephen@networkplumber.org, sumit.saxena@broadcom.com,
 poros@redhat.com, Bjorn Andersson <bjorn.andersson@linaro.org>,
 thenzl@redhat.com, linux-api@vger.kernel.org,
 Baolin Wang <baolin.wang7@gmail.com>, saeedm@nvidia.com,
 Andrew Morton <akpm@linux-foundation.org>, jkc@redhat.com, jbrandeb@kernel.org,
 "David S . Miller" <davem@davemloft.net>, leonro@nvidia.com, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 20, 2021 at 6:27 PM Nitesh Narayan Lal <nitesh@redhat.com> wrote:
>
> The driver uses irq_set_affinity_hint() to:
>
> - Set the affinity_hint which is consumed by the userspace for
>   distributing the interrupts
>
> - Enforce affinity
>
> As per commit 6ac17fe8c14a ("mailbox: bcm-flexrm-mailbox: Set IRQ affinity
> hint for FlexRM ring IRQs") the latter is done to ensure that the FlexRM
> ring interrupts are evenly spread across all available CPUs. However, since
> commit a0c9259dc4e1 ("irq/matrix: Spread interrupts on allocation") the
> spreading of interrupts is dynamically performed at the time of allocation.
> Hence, there is no need for the drivers to enforce their own affinity for
> the spreading of interrupts.
>
> Also, irq_set_affinity_hint() applying the provided cpumask as an affinity
> for the interrupt is an undocumented side effect. To remove this side
> effect irq_set_affinity_hint() has been marked as deprecated and new
> interfaces have been introduced. Hence, replace the irq_set_affinity_hint()
> with the new interface irq_update_affinity_hint() that only sets the
> affinity_hint pointer.
>
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  drivers/mailbox/bcm-flexrm-mailbox.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mailbox/bcm-flexrm-mailbox.c b/drivers/mailbox/bcm-flexrm-mailbox.c
> index 78073ad1f2f1..16982c13d323 100644
> --- a/drivers/mailbox/bcm-flexrm-mailbox.c
> +++ b/drivers/mailbox/bcm-flexrm-mailbox.c
> @@ -1298,7 +1298,7 @@ static int flexrm_startup(struct mbox_chan *chan)
>         val = (num_online_cpus() < val) ? val / num_online_cpus() : 1;
>         cpumask_set_cpu((ring->num / val) % num_online_cpus(),
>                         &ring->irq_aff_hint);
> -       ret = irq_set_affinity_hint(ring->irq, &ring->irq_aff_hint);
> +       ret = irq_update_affinity_hint(ring->irq, &ring->irq_aff_hint);
>         if (ret) {
>                 dev_err(ring->mbox->dev,
>                         "failed to set IRQ affinity hint for ring%d\n",
> @@ -1425,7 +1425,7 @@ static void flexrm_shutdown(struct mbox_chan *chan)
>
>         /* Release IRQ */
>         if (ring->irq_requested) {
> -               irq_set_affinity_hint(ring->irq, NULL);
> +               irq_update_affinity_hint(ring->irq, NULL);
>                 free_irq(ring->irq, ring);
>                 ring->irq_requested = false;
>         }
>
Seems ok to me. But I don't have the h/w to test.

Acked-by: Jassi Brar <jaswinder.singh@linaro.org>

cheers.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

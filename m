Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCCE3E2DF9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Aug 2021 17:53:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A703A6076A;
	Fri,  6 Aug 2021 15:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R-2mwe6keDS6; Fri,  6 Aug 2021 15:53:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF53860ABF;
	Fri,  6 Aug 2021 15:53:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2631BF32D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 15:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 74ACF40194
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 15:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A_zu8N3cD3va for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Aug 2021 15:52:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 106EE400D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Aug 2021 15:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628265132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ocgP4yowhB/EUlnSIxuQMOG6kjLjSAHTmb8OYmd4EOQ=;
 b=Kr6m1tpPchjzWu25UwcCdoz89ETW1+vRd7RRMfRNYX4nGIxHvllkR0L2F5v5mFFixMHvUc
 JVeauVsbuSHqa0uzlJC2AqY9UW8RYUadGgK6czeLNAlX6KJLtbiOUdtYD6YYzQW2FzzXX8
 dM9TF6Z098Bd+L/N5iDlu/5sscf8AAw=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-G23xhEWNMSCYuzObjAvZwA-1; Fri, 06 Aug 2021 11:52:11 -0400
X-MC-Unique: G23xhEWNMSCYuzObjAvZwA-1
Received: by mail-lf1-f70.google.com with SMTP id
 bu41-20020a05651216a9b02903c171c5bf72so711468lfb.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Aug 2021 08:52:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ocgP4yowhB/EUlnSIxuQMOG6kjLjSAHTmb8OYmd4EOQ=;
 b=l4yQCgrQRdirEZEITroHI63i4wiOSB8RqqKx5KMKS9yPu5V3IcRPelYXVMtvYjP4a9
 6SAf8+ODpEuX6CyiddoMLkZ7gm63mtDqNYg/UkKELLHxXMWMVqziAEN5PoZB4iqAKzzy
 u4ZbQQktKkLEsduaus96oKdST18HVc3ePs9DUF3bVYtM8fw58Y7oLq1gYNwcdpUqeKcA
 9n5Ub1i9OAGrZshUJyxbinWr+qkYxhtcUF4mjwW67efUVbkDeibzDKiMEQ9+HHYeV0hD
 CUIyQDcJdAFxA973tSJhsbJWh6VfeqAwU9w868+J3W9wwH33yKstLxmt9N/WIii2DZng
 dc+A==
X-Gm-Message-State: AOAM531qkhASQg1n3tRyqcn5qGoXr2xkyoVUdw9WCYYYBRqXoavlb82F
 TpgRrJukCMtXrH/+LF73k1UazHSHTVmpynbUlVybFXLCA6SQiYX4RFfxBPaHE6SCswYnNUU3l1/
 w0JIpemppRkS6XfBnaev3FwCvySJCWSg+IzsAy/JiEEgaIA==
X-Received: by 2002:ac2:446d:: with SMTP id y13mr8071862lfl.632.1628265130051; 
 Fri, 06 Aug 2021 08:52:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz9NmyUDGHNtqA5+JG3Fj8AovGBdtXdP/uo+X1AK+D5LYRCKOEMar1/c1smD31PF3dDW/0pEabI/MsAyUK/eQ0=
X-Received: by 2002:ac2:446d:: with SMTP id y13mr8071774lfl.632.1628265129728; 
 Fri, 06 Aug 2021 08:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210720232624.1493424-1-nitesh@redhat.com>
 <20210720232624.1493424-2-nitesh@redhat.com>
In-Reply-To: <20210720232624.1493424-2-nitesh@redhat.com>
From: Ming Lei <ming.lei@redhat.com>
Date: Fri, 6 Aug 2021 23:51:58 +0800
Message-ID: <CAFj5m9+9asdQOCRHb0tZ=XSD-sOj+RLEDVEAObN81Z9y1JcgQg@mail.gmail.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=minlei@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Fri, 06 Aug 2021 15:52:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 01/14] genirq: Provide new
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
Cc: juri.lelli@redhat.com, ajit.khaparde@broadcom.com, jassisinghbrar@gmail.com,
 peterz@infradead.org, linux-pci@vger.kernel.org, viresh.kumar@linaro.org,
 _govind@gmx.com, James Smart <james.smart@broadcom.com>,
 mustafa.ismail@intel.com, govind@gmx.com, Tushar.Khandelwal@arm.com,
 ahleihel@redhat.com, mingo@kernel.org, sassmann@redhat.com, kabel@kernel.org,
 sfr@canb.auug.org.au, "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, borisp@nvidia.com, maz@kernel.org,
 sathya.prakash@broadcom.com, Ewan Milne <emilne@redhat.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>, tatyana.e.nikolova@intel.com,
 chandrakanth.patil@broadcom.com, intel-wired-lan@lists.osuosl.org,
 yongqiang.niu@mediatek.com, abelits@marvell.com, nilal@redhat.com,
 jejb@linux.ibm.com, chunkuang.hu@kernel.org, dick.kennedy@broadcom.com,
 faisal.latif@intel.com, suganath-prabu.subramani@broadcom.com,
 frederic@kernel.org, Robin Murphy <robin.murphy@arm.com>, rostedt@goodmis.org,
 rppt@linux.vnet.ibm.com, kuba@kernel.org, bhelgaas@google.com,
 tglx@linutronix.de, somnath.kotur@broadcom.com, shiraz.saleem@intel.com,
 ahs3@redhat.com, pjwaskiewicz@gmail.com, sreekanth.reddy@broadcom.com,
 sriharsha.basavapatna@broadcom.com, nhorman@tuxdriver.com,
 shivasharan.srikanteshwara@broadcom.com, netdev@vger.kernel.org,
 mtosatti@redhat.com, kheib@redhat.com, linux-kernel@vger.kernel.org,
 tariqt@nvidia.com, stephen@networkplumber.org, sumit.saxena@broadcom.com,
 poros@redhat.com, bjorn.andersson@linaro.org, thenzl@redhat.com,
 linux-api@vger.kernel.org, baolin.wang7@gmail.com, saeedm@nvidia.com,
 akpm@linux-foundation.org, jkc@redhat.com, jbrandeb@kernel.org,
 davem@davemloft.net, leonro@nvidia.com, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 21, 2021 at 7:26 AM Nitesh Narayan Lal <nitesh@redhat.com> wrote:
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

Reviewed-by: Ming Lei <ming.lei@redhat.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5533AEA28
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 15:38:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B049E83163;
	Mon, 21 Jun 2021 13:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yuvqKc6bigAB; Mon, 21 Jun 2021 13:38:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD82A82F9B;
	Mon, 21 Jun 2021 13:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 903CD1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BA8C60689
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 95RxytUGoVTQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 08:01:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 139656066F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:23 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1B5F961156;
 Mon, 21 Jun 2021 08:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624262483;
 bh=xkIVlbEuJDCy/58h9s+rXKkCBkl+0cKos+yjyqiA2ks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u2g8JzKD4v4BtPFaM377n22YOz19qDW8FDr/F6xVWyQRWzCgygQYMyg2ToGzRI8EU
 F+y+BRT0TzfXol6Be0CqTpJ2Ug5vR+2GX3SPKM36A8yGVoqtoHi1Ab4nqfBBF2Xn00
 t1Iv53NuBY0HAIj1hIbMHjJz/NaXQ4HZOHQ1TPdqGosS6/c/dZKDRUJMwEh7CT1R89
 awvM/3rgZ2BNiCGuZ7AQLyAelNCYbPafo6JHOFLxnrmwUszf30dhVra0yrnAfUg1ZS
 kByFHj5hDrRnB+FYupkp4/Epz+uTj6N7x1U8lSSdIlplOZdDT/Xl72oGga+5K5/F+y
 EjUbrIZ3Fp8Jw==
Date: Mon, 21 Jun 2021 11:01:20 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <YNBHUMRqc+s0JesY@unreal>
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-14-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617182242.8637-14-nitesh@redhat.com>
X-Mailman-Approved-At: Mon, 21 Jun 2021 13:38:11 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 13/14] net/mlx5: Use
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
 intel-wired-lan@lists.osuosl.org, abelits@marvell.com, nilal@redhat.com,
 dick.kennedy@broadcom.com, faisal.latif@intel.com,
 suganath-prabu.subramani@broadcom.com, frederic@kernel.org,
 robin.murphy@arm.com, rostedt@goodmis.org, luobin9@huawei.com,
 rppt@linux.vnet.ibm.com, bhelgaas@google.com, tglx@linutronix.de,
 somnath.kotur@broadcom.com, shiraz.saleem@intel.com, pjwaskiewicz@gmail.com,
 sreekanth.reddy@broadcom.com, sriharsha.basavapatna@broadcom.com,
 nhorman@tuxdriver.com, shivasharan.srikanteshwara@broadcom.com,
 netdev@vger.kernel.org, mtosatti@redhat.com, kheib@redhat.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, stephen@networkplumber.org,
 sumit.saxena@broadcom.com, thenzl@redhat.com, linux-api@vger.kernel.org,
 saeedm@nvidia.com, akpm@linux-foundation.org, jkc@redhat.com,
 jbrandeb@kernel.org, davem@davemloft.net, benve@cisco.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 17, 2021 at 02:22:41PM -0400, Nitesh Narayan Lal wrote:
> The driver uses irq_set_affinity_hint() to update the affinity_hint mask
> that is consumed by the userspace to distribute the interrupts. However,
> under the hood irq_set_affinity_hint() also applies the provided cpumask
> (if not NULL) as the affinity for the given interrupt which is an
> undocumented side effect.
> 
> To remove this side effect irq_set_affinity_hint() has been marked
> as deprecated and new interfaces have been introduced. Hence, replace the
> irq_set_affinity_hint() with the new interface irq_update_affinity_hint()
> that only updates the affinity_hint pointer.
> 
> Signed-off-by: Nitesh Narayan Lal <nitesh@redhat.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/pci_irq.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

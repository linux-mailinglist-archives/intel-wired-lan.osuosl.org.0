Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD213AEA27
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 15:38:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38C8540136;
	Mon, 21 Jun 2021 13:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpPDHgiCEgU9; Mon, 21 Jun 2021 13:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 364A4400F0;
	Mon, 21 Jun 2021 13:38:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 234621BF59F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F7ED403DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XI-AXbG2PfJL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 08:01:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2C6C240378
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:01:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9F3816109F;
 Mon, 21 Jun 2021 08:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1624262469;
 bh=gPO/dZoq96/4oBsyGc1ThSkFDnPfX3ZoVFD1snea8ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HoNf1YGzRXgmHTU0loB2T4/SVEkLSsgPC2LdgggESiQ/uR8KVA7Vc9FK+lMaTqEn3
 LCRUsDfVsGZ96ib/C5wbKl9kCzUcPfOYfn/MEH75lKXjG2Zm/TiV6awVNAKtdtCTM6
 JwR+eb3iepOdUsq7+qZp6+Ls9y2fPIbHlDgID+r0bqzE4Jpkh2E75XwNcCxIwPGCvD
 S6QIF89nU708IuCQcUBIQ/f3kUCMfYrUZTabOAvyNZLYAiz2pe+PADAE3lLRajHYDg
 VuEVdVy4jo0EFD+c3bqZ4hMTpFn+OiBNEuhL+eZpl0rb6ax5Culn7vFTzt6buowbaw
 eKMm/dci8g3Mg==
Date: Mon, 21 Jun 2021 11:01:06 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <YNBHQvo1uDfBbr5c@unreal>
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-15-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617182242.8637-15-nitesh@redhat.com>
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

On Thu, Jun 17, 2021 at 02:22:42PM -0400, Nitesh Narayan Lal wrote:
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
>  drivers/net/ethernet/mellanox/mlx4/eq.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/mellanox/mlx4/eq.c b/drivers/net/ethernet/mellanox/mlx4/eq.c
> index 9e48509ed3b2..f549d697ca95 100644
> --- a/drivers/net/ethernet/mellanox/mlx4/eq.c
> +++ b/drivers/net/ethernet/mellanox/mlx4/eq.c
> @@ -244,9 +244,9 @@ static void mlx4_set_eq_affinity_hint(struct mlx4_priv *priv, int vec)
>  	    cpumask_empty(eq->affinity_mask))
>  		return;
>  
> -	hint_err = irq_set_affinity_hint(eq->irq, eq->affinity_mask);
> +	hint_err = irq_update_affinity_hint(eq->irq, eq->affinity_mask);
>  	if (hint_err)
> -		mlx4_warn(dev, "irq_set_affinity_hint failed, err %d\n", hint_err);
> +		mlx4_warn(dev, "irq_update_affinity_hint failed, err %d\n", hint_err);
>  }
>  #endif
>  
> @@ -1124,7 +1124,7 @@ static void mlx4_free_irqs(struct mlx4_dev *dev)
>  		if (eq_table->eq[i].have_irq) {
>  			free_cpumask_var(eq_table->eq[i].affinity_mask);
>  #if defined(CONFIG_SMP)
> -			irq_set_affinity_hint(eq_table->eq[i].irq, NULL);
> +			irq_update_affinity_hint(eq_table->eq[i].irq, NULL);
>  #endif

This #if/endif can be deleted.

Thanks,
Reviewed-by: Leon Romanovsky <leonro@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

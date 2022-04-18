Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4467F505D94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 19:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971EF40BAD;
	Mon, 18 Apr 2022 17:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-4AHMXUz-rt; Mon, 18 Apr 2022 17:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9107940BA3;
	Mon, 18 Apr 2022 17:39:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 539FF1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F4CD40BA3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:39:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nako4ey-FHJM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 17:39:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B428740438
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 17:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650303591; x=1681839591;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oXo/QPoLwcbb7sHSUsxAGl9pqn0ndImlQcoCnhT9XcE=;
 b=ga7A9/n0BUgR/LeWiR1flrAG47KMJfDKPIpCF5GF58zIMOSc6H8Q3FDF
 iTOxsfrhheesZNX424PZdYlnO67RdGaucNUFENC65zl5DMwXL0/QWBbjc
 ZsDf5tBn+TRKfkx1AEhuRG4OCW2Rfy8HeAzYQinEEk//avQIcZuzV4Y0p
 9AG7MR0ryuPPwhsIHBQaeDVru9lfMDob5dTpOSRxi4T1KY2ZwBfpUXgCt
 4VMC/uE2wOYzF4HAxEp7Or2ygcz3onzGKqJCNe/VewAK/+0MZBdKyPNbR
 fOqKiVnNwQxK8Ij8nBgkGrrjJhTLPN8xojtdhE4isTk5iChNq5b2hBozv w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="263749205"
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="263749205"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 10:39:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,270,1643702400"; d="scan'208";a="804370380"
Received: from alanadu-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.251.2.172])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 10:39:49 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jeff Evanson <jeff.evanson@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John
 Fastabend <john.fastabend@gmail.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org
In-Reply-To: <20220415210421.11217-1-jeff.evanson@qsc.com>
References: <20220415210421.11217-1-jeff.evanson@qsc.com>
Date: Mon, 18 Apr 2022 13:39:48 -0400
Message-ID: <871qxu5lzv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2] Fix race in igc_xdp_xmit_zc
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
Cc: jeff.evanson@qsc.com, jeff.evanson@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

Jeff Evanson <jeff.evanson@gmail.com> writes:

> in igc_xdp_xmit_zc, initialize next_to_use while holding the netif_tx_lock
> to prevent racing with other users of the tx ring

Some style things to change:
 - Some more details on what is the effect of the race condition, and
 perhaps the conditions to reproduce it (what I could imagine is that
 you would need two applications (one using AF_XDP and another one using
 AF_PACKET, for example) sending packets to the same queue.
 - I think this patch is solving a real problem, so directing this patch
 to the net-queue (using 'PATCH net-queue' as subject prefix) would make
 sense.
 - Please add the 'Fixes:' tag so this commit can be applied to any
 stable tree that makes sense.

Apart from those style changes, the code looks good.

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

>
> Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 1c00ee310c19..a36a18c84aeb 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2598,7 +2598,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  	struct netdev_queue *nq = txring_txq(ring);
>  	union igc_adv_tx_desc *tx_desc = NULL;
>  	int cpu = smp_processor_id();
> -	u16 ntu = ring->next_to_use;
> +	u16 ntu;
>  	struct xdp_desc xdp_desc;
>  	u16 budget;
>  
> @@ -2607,6 +2607,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  
>  	__netif_tx_lock(nq, cpu);
>  
> +	ntu = ring->next_to_use;
> +
>  	budget = igc_desc_unused(ring);
>  
>  	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> -- 
> 2.17.1
>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

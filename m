Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123C550862D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Apr 2022 12:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7437240B99;
	Wed, 20 Apr 2022 10:41:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rL-zrIOyaDfX; Wed, 20 Apr 2022 10:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7243A40BAA;
	Wed, 20 Apr 2022 10:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FC971BF5A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4AAB341E7A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ly7Fhbnc2Gbh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Apr 2022 10:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2FF4741903
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Apr 2022 10:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650451259; x=1681987259;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=potqXVYX3OmiIRlmNKrPcjYJve3h2E3TfCZOfajoLII=;
 b=jRQLXEFE7O+xbTplljjZhrYH6m+bRiOATr4uKMlPQKjbLHdw+F38WDcC
 fuv7VNv1BFe3uedHKJ/+mOtkC/5htYOwRbUmUuluGlIpgUkdpztZOtIp9
 wMM+k+Wn1vPYL/CLRq/++62LGlcuaEp4JCV7T6pVTXdhlG/GNVuw26oO6
 Z8Me8DOlZuea+oW8XrGhR0m+DbPZ4G4ciE38aMvwS6eKsPQ3wtJqiNvTU
 Hv//Qh87AvlyE5c3+CvYaOI05K1HRAkfJwCqEBYFkSrC3aAKmQOW+tHtn
 TXiUvgJO1qxCDSehwR3SZ1rt8/PosqQpBCKilHvRtWdi/hI9vZn1CuvZ5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="263759956"
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="263759956"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 03:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,275,1643702400"; d="scan'208";a="555142556"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga007.jf.intel.com with ESMTP; 20 Apr 2022 03:40:55 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 23KAer2s026937; Wed, 20 Apr 2022 11:40:53 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Jeff Evanson <jeff.evanson@gmail.com>
Date: Wed, 20 Apr 2022 12:37:08 +0200
Message-Id: <20220420103708.1841070-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415210421.11217-1-jeff.evanson@qsc.com>
References: <20220415210421.11217-1-jeff.evanson@qsc.com>
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jeff Evanson <jeff.evanson@gmail.com>
Date: Fri, 15 Apr 2022 15:04:21 -0600

> in igc_xdp_xmit_zc, initialize next_to_use while holding the netif_tx_lock
> to prevent racing with other users of the tx ring
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

Please don't break the RCT (reverse christmas tree) style here. You
should move it to the bottom of the declaration block, ideally
combine it with the declaration of @budget as they're both u16s.

>  	struct xdp_desc xdp_desc;
>  	u16 budget;
>  
> @@ -2607,6 +2607,8 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
>  
>  	__netif_tx_lock(nq, cpu);
>  
> +	ntu = ring->next_to_use;
> +

There's no need for this empty newline I believe.

>  	budget = igc_desc_unused(ring);
>  
>  	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget--) {
> -- 
> 2.17.1

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

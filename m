Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F24D185F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Mar 2022 13:54:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85E404090E;
	Tue,  8 Mar 2022 12:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r2L83JPBUsae; Tue,  8 Mar 2022 12:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E2B040901;
	Tue,  8 Mar 2022 12:54:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1E451BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F68082890
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H535RRhwS0lF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Mar 2022 12:54:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CE6F2818BE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Mar 2022 12:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646744066; x=1678280066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0T14saHEBTpCKfGqSe8NbuOhFvGpALcbihrkiXvDH9c=;
 b=AH702w24UMoHRlCPybrzWkZwgtVc89aU2tXSNkSolGDtVq1RkBmHntqq
 VRPVfNl9ijECVGuv0AT4T934fTPbbNKsjkTFtrF66ijDi99tR7Z7aMBCv
 Prn/0ex6V4sLlLICkugpbvAAm9vaoOtSNC+SYGUsKa86K8f7NTky1JZIR
 FqGlaMVofbUTj+n7HQ9i18Dvi+m3GBYbg+2/Xtt/lWcaPxlQp+GCod1H6
 olQ4OsZ40YjfjH7Mo/rCWiJ/awlBeyumNV53bx02bzWhtwa0zBEVefukO
 Y7FJG/3UH2q9LsOjCONtIvUoeQARzOdF0cecTcb/m4tzyxlVnmCm2QNFh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="242113005"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="242113005"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:54:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="687910697"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 08 Mar 2022 04:54:22 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 228CsL1V001091; Tue, 8 Mar 2022 12:54:21 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue,  8 Mar 2022 13:51:59 +0100
Message-Id: <20220308125159.1843373-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220307174739.55899-1-maciej.fijalkowski@intel.com>
References: <20220307174739.55899-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: fix NULL pointer
 dereference in ice_update_vsi_tx_ring_stats()
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
Cc: netdev@vger.kernel.org, dan.carpenter@oracle.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 7 Mar 2022 18:47:39 +0100

> It is possible to do NULL pointer dereference in routine that updates
> Tx ring stats. Currently only stats and bytes are updated when ring
> pointer is valid, but later on ring is accessed to propagate gathered Tx
> stats onto VSI stats.
> 
> Change the existing logic to move to next ring when ring is NULL.
> 
> Fixes: e72bba21355d ("ice: split ice_ring onto Tx/Rx separate structs")
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 289e5c99e313..d3f8b6468b92 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6145,8 +6145,9 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
>  		u64 pkts = 0, bytes = 0;
>  
>  		ring = READ_ONCE(rings[i]);
> -		if (ring)
> -			ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);
> +		if (!ring)
> +			continue;
> +		ice_fetch_u64_stats_per_ring(&ring->syncp, ring->stats, &pkts, &bytes);

Nice catch, thanks!

Acked-by: Alexander Lobakin <alexandr.lobakin@intel.com>

>  		vsi_stats->tx_packets += pkts;
>  		vsi_stats->tx_bytes += bytes;
>  		vsi->tx_restart += ring->tx_stats.restart_q;

                                   ^^^^
                                   lol

> -- 
> 2.33.1

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

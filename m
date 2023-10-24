Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDF47D51F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34BFC84901;
	Tue, 24 Oct 2023 13:38:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34BFC84901
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698154691;
	bh=X6plavl/SVQgm6gy72Atl02UQEeLjz0HgOT13+BFuoU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pi2er2mEKcTSrNZRjZnNbrczBUbeFBc20g+mB0iUnVFe1V/OC0nYiU2uMUCwC9YVw
	 iSoSec+VKHTm0pdfiMCjlDfPkB9Tknrlt/SqOg9dPgRgUfY81+GzADe8eSigA5Zq43
	 R159Xdc3QH5F+i8PlwDOlK+VZ+XF249+smmKNL+/UHG6hW4wPSReR6ff2Fg3XHpDXE
	 X+GOwZFhQZ3yrMIan7uA++GHoNXBARL4topJzS8wrly3nBZgkoG9P1Va1ensVxgPkZ
	 nrjRReWhpavYdq3r3GcIuzs52tH6fh0h7NCmd+L3rVwG4Ez7jDqFARgLPx+mZz8p3y
	 cbQaDOO5y7NEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9F4Kt68lEbK; Tue, 24 Oct 2023 13:38:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 179C78490A;
	Tue, 24 Oct 2023 13:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 179C78490A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA3151BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AF25184904
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:38:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF25184904
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e1LzvDtrN26j for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:38:04 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD3FE84901
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD3FE84901
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="367282539"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="367282539"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="787786624"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="787786624"
Received: from wasp.igk.intel.com (HELO wasp) ([10.102.20.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:38:01 -0700
Date: Tue, 24 Oct 2023 15:12:54 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Message-ID: <ZTfC1u4BxG55rZ6o@wasp>
References: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698154683; x=1729690683;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QIgqv1zy6de6ySpoMeSvp9+xL+aseEWSVZkQRUp9/Lc=;
 b=XyuTJ4C1wdR99/VBEvoYt8JxAyPi50P53IJ+OsVuUxbFQYntmc/2FbXY
 WWw1rB2eyFmeTglptwWSM1r8bWxBOyEMdXIg+NflCuKEjTPdqUK5mqjxC
 wEGFbfTJexDYUd0sJUPuKsp3JtwL270a4Hla4f0pluIw/WO6y1UrOVPUq
 KUjnLVv6ViMf6svyKk1zKvskE7414eWCnqcHF/PryEfYNf5W6N5ITYpPw
 EYuQPOb6NANdkyV/NF6p9IMPzdcoasev+yeQr4LCSHxWI2km0rs2vf76c
 /QFXJXmNKvxtMC1+fJMMTAV5IEUcySEhCeQGD+ov/5hZpetLDNdo1Xhq3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XyuTJ4C1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Reset VF on Tx MDD event
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
Cc: lukasz.czapnik@intel.com, intel-wired-lan@lists.osuosl.org,
 Liang-min Wang <liang-min.wang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 24, 2023 at 01:29:12PM +0200, Pawel Chmielewski wrote:
> From: Liang-min Wang <liang-min.wang@intel.com>
> 
> In cases when VF sends malformed packets that are classified as malicious,
> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
> for several minutes being unusable.
> 
> When MDD event occurs, perform graceful VF reset to quickly bring VF
> back to operational state.
> 
> Signed-off-by: Liang-min Wang <liang-min.wang@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 66095e9b094e..cf9fd1f168f7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1836,8 +1836,13 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  			vf->mdd_tx_events.count++;
>  			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
>  			if (netif_msg_tx_err(pf))
> -				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
> +				dev_info(dev,
> +					 "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
>  					 vf->vf_id);
> +			dev_info(dev,
> +				 "PF-to-VF reset on VF %d due to Tx MDD TX_TCLAN event\n",
> +				 vf->vf_id);
> +			ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  		}
>  
>  		reg = rd32(hw, VP_MDET_TX_TDPU(vf->vf_id));
> @@ -1846,8 +1851,13 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  			vf->mdd_tx_events.count++;
>  			set_bit(ICE_MDD_VF_PRINT_PENDING, pf->state);
>  			if (netif_msg_tx_err(pf))
> -				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
> +				dev_info(dev,
> +					 "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
>  					 vf->vf_id);
> +			dev_info(dev,
> +				 "PF-to-VF reset on VF %d due to Tx MDD TX_TCLAN event\n",
> +				 vf->vf_id);
You forgot to change TX_TCLAN to TX_TDPU.

> +			ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  		}
>  
>  		reg = rd32(hw, VP_MDET_RX(vf->vf_id));
> -- 
> 2.37.3
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

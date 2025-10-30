Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 012F5C1F32C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 10:11:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E02283EB0;
	Thu, 30 Oct 2025 09:11:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X9Fgj-5cqNZM; Thu, 30 Oct 2025 09:11:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8410383EB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761815461;
	bh=9gakzxZ5GNCC7SwNZxDjGrovAgTBojsRZrhnkv6GvlY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0Smt1zv0c1AgybeBv2QlAF+VrLzia+m31i3RIUk0bG/9p+qDuli5/jG/zN+YebgQ4
	 gfVequFg7pVe+Uk+WzH0ZSVpw1JcyDoAttkumHep27u+jMMStzA6eM1hVy6uRSBy1i
	 DzUp5w2IzHUM21q2T7+93DStgbcdPYs9wt+WKJAT4bnSqPaRB7NBKE3Wfw7ULOiauM
	 lx/97Fy5Ol6K/y77LUe/4t6oWQtMXjSdeE/jPC+xaR5y0WQN/DmlYHnlzi7lnLGn/X
	 qrcF9vsOPLNc+uH5TwbWG8lkZNvqQAtYd5kpqpp8BX/t6DFRtGYXAbGMMLzkXc03uh
	 fTI7zE2PdRbgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8410383EB2;
	Thu, 30 Oct 2025 09:11:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F837CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0D0241151
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WCKx5DPlkm3H for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 09:10:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01A9841147
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01A9841147
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01A9841147
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 09:10:57 +0000 (UTC)
Received: from [192.168.0.5] (ip5f5af134.dynamic.kabel-deutschland.de
 [95.90.241.52])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 58A29617C4FA1;
 Thu, 30 Oct 2025 10:10:38 +0100 (CET)
Message-ID: <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
Date: Thu, 30 Oct 2025 10:10:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal,


Thank you for your patch. For the summary, I’d add:

ice: Use netif_get_num_default_rss_queues() to decrease queue number

Am 30.10.25 um 09:30 schrieb Michal Swiatkowski:
> On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
> Forest) loading ice driver with default values can lead to queue/irq
> exhaustion. It will result in no additional resources for SR-IOV.

Could you please elaborate how to make the queue/irq exhaustion visible?

> In most cases there is no performance reason for more than half
> num_cpus(). Limit the default value to it using generic
> netif_get_num_default_rss_queues().
> 
> Still, using ethtool the number of queues can be changed up to
> num_online_cpus(). It can be done by calling:
> $ethtool -L ethX combined $(nproc)
> 
> This change affects only the default queue amount.

How would you judge the regression potential, that means for people 
where the defaults work good enough, and the queue number is reduced now?


Kind regards,

Paul


> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v2 --> v3:
>   * use $(nproc) in command example in commit message
> 
> v1 --> v2:
>   * Follow Olek's comment and switch from custom limiting to the generic
>     netif_...() function.
>   * Add more info in commit message (Paul)
>   * Dropping RB tags, as it is different patch now
> ---
>   drivers/net/ethernet/intel/ice/ice_irq.c |  5 +++--
>   drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++++----
>   2 files changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index 30801fd375f0..1d9b2d646474 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -106,9 +106,10 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
>   #define ICE_RDMA_AEQ_MSIX 1
>   static int ice_get_default_msix_amount(struct ice_pf *pf)
>   {
> -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> +	return ICE_MIN_LAN_OICR_MSIX + netif_get_num_default_rss_queues() +
>   	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
> -	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
> +	       (ice_is_rdma_ena(pf) ? netif_get_num_default_rss_queues() +
> +				      ICE_RDMA_AEQ_MSIX : 0);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index bac481e8140d..e366d089bef9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -159,12 +159,14 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
>   
>   static u16 ice_get_rxq_count(struct ice_pf *pf)
>   {
> -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_rxq_count(pf),
> +		   netif_get_num_default_rss_queues());
>   }
>   
>   static u16 ice_get_txq_count(struct ice_pf *pf)
>   {
> -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_txq_count(pf),
> +		   netif_get_num_default_rss_queues());
>   }
>   
>   /**
> @@ -907,13 +909,15 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
>   		if (vsi->type == ICE_VSI_CHNL)
>   			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
>   		else
> -			vsi->rss_size = min_t(u16, num_online_cpus(),
> +			vsi->rss_size = min_t(u16,
> +					      netif_get_num_default_rss_queues(),
>   					      max_rss_size);
>   		vsi->rss_lut_type = ICE_LUT_PF;
>   		break;
>   	case ICE_VSI_SF:
>   		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
> -		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
> +		vsi->rss_size = min_t(u16, netif_get_num_default_rss_queues(),
> +				      max_rss_size);
>   		vsi->rss_lut_type = ICE_LUT_VSI;
>   		break;
>   	case ICE_VSI_VF:


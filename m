Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4013BBE1F90
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Oct 2025 09:45:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A41A061AE4;
	Thu, 16 Oct 2025 07:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X801y5wBO7-N; Thu, 16 Oct 2025 07:45:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED7BE61747
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760600710;
	bh=0/P3hqg7qBlZJwUk7Phgp5l8D/KHNKV8isuaNTeO5V4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AIfjOwXTd6sWjG5JUYpizE7uE4VUeqewFb7tl83x7rDTob1lDcLMRfEj0TgeNNY6g
	 XlXwI3WChRXw/gaRTrFFvNknXIlYMHTOkgv41MbBM5Dr25xGklPR4V7hLJxATNsikT
	 1/UNBQ/eH1ASGP2RjCEDSj+ymo9Rr9cOUPjR4sixiIjG6rMW2xY2tBFCejPGBiT61x
	 /n9RsDfA6CtayEVXTad8NdulX4avGbWI5X0zrKb+n27t6P6CVN5wDstpPiRJUttORV
	 Dhh1pIKEoGpSaYQ2xBQgkeLLktZRb42hLsVtEDTGDTQr1DB5rp0euKmDd6Bm2g868J
	 E9KG1Hn734pPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED7BE61747;
	Thu, 16 Oct 2025 07:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DDDD116F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 07:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 31FA441BA1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 07:45:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xi7B9CzRUnmJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Oct 2025 07:45:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D137E41BB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D137E41BB2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D137E41BB2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Oct 2025 07:45:05 +0000 (UTC)
Received: from [192.168.2.212] (p5dc5567b.dip0.t-ipconnect.de [93.197.86.123])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A22AC6028F36A;
 Thu, 16 Oct 2025 09:44:44 +0200 (CEST)
Message-ID: <d6a90d0d-55f9-467a-b414-5ced78d12c54@molgen.mpg.de>
Date: Thu, 16 Oct 2025 09:44:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>
References: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20251016062250.1461903-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: lower default
 irq/queue counts on high-core systems
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


Thank you for the patch. I’d mention the 64 in the summary:

 > ice: lower default irq/queue counts to 64 on > 64 core systems


Am 16.10.25 um 08:22 schrieb Michal Swiatkowski:
> On some high-core systems loading ice driver with default values can
> lead to queue/irq exhaustion. It will result in no additional resources
> for SR-IOV.
> 
> In most cases there is no performance reason for more than 64 queues.
> Limit the default value to 64. Still, using ethtool the number of
> queues can be changed up to num_online_cpus().
> 
> This change affects only the default queue amount on systems with more
> than 64 cores.

Please document a specific system and steps to reproduce the issue.

Please also document how to override the value.

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h     | 20 ++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_irq.c |  6 ++++--
>   drivers/net/ethernet/intel/ice/ice_lib.c |  8 ++++----
>   3 files changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 3d4d8b88631b..354ec2950ff3 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -1133,4 +1133,24 @@ static inline struct ice_hw *ice_get_primary_hw(struct ice_pf *pf)
>   	else
>   		return &pf->adapter->ctrl_pf->hw;
>   }
> +
> +/**
> + * ice_capped_num_cpus - normalize the number of CPUs to a reasonable limit
> + *
> + * This function returns the number of online CPUs, but caps it at suitable
> + * default to prevent excessive resource allocation on systems with very high
> + * CPU counts.
> + *
> + * Note: suitable default is currently at 64, which is reflected in default_cpus
> + * constant. In most cases there is no much benefit for more than 64 and it is a

no*t* much

> + * power of 2 number.
> + *
> + * Return: number of online CPUs, capped at suitable default.
> + */
> +static inline u16 ice_capped_num_cpus(void)

Why not return `unsigned int` or `size_t`?

> +{
> +	const int default_cpus = 64;
> +
> +	return min(num_online_cpus(), default_cpus);
> +}
>   #endif /* _ICE_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index 30801fd375f0..df4d847ca858 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -106,9 +106,11 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
>   #define ICE_RDMA_AEQ_MSIX 1
>   static int ice_get_default_msix_amount(struct ice_pf *pf)
>   {
> -	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
> +	u16 cpus = ice_capped_num_cpus();
> +
> +	return ICE_MIN_LAN_OICR_MSIX + cpus +
>   	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
> -	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
> +	       (ice_is_rdma_ena(pf) ? cpus + ICE_RDMA_AEQ_MSIX : 0);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index bac481e8140d..3c5f8a4b6c6d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -159,12 +159,12 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
>   
>   static u16 ice_get_rxq_count(struct ice_pf *pf)
>   {
> -	return min(ice_get_avail_rxq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_rxq_count(pf), ice_capped_num_cpus());
>   }
>   
>   static u16 ice_get_txq_count(struct ice_pf *pf)
>   {
> -	return min(ice_get_avail_txq_count(pf), num_online_cpus());
> +	return min(ice_get_avail_txq_count(pf), ice_capped_num_cpus());
>   }
>   
>   /**
> @@ -907,13 +907,13 @@ static void ice_vsi_set_rss_params(struct ice_vsi *vsi)
>   		if (vsi->type == ICE_VSI_CHNL)
>   			vsi->rss_size = min_t(u16, vsi->num_rxq, max_rss_size);
>   		else
> -			vsi->rss_size = min_t(u16, num_online_cpus(),
> +			vsi->rss_size = min_t(u16, ice_capped_num_cpus(),
>   					      max_rss_size);
>   		vsi->rss_lut_type = ICE_LUT_PF;
>   		break;
>   	case ICE_VSI_SF:
>   		vsi->rss_table_size = ICE_LUT_VSI_SIZE;
> -		vsi->rss_size = min_t(u16, num_online_cpus(), max_rss_size);
> +		vsi->rss_size = min_t(u16, ice_capped_num_cpus(), max_rss_size);
>   		vsi->rss_lut_type = ICE_LUT_VSI;
>   		break;
>   	case ICE_VSI_VF:

With the changes addressed, feel free to add:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul

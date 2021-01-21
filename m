Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D91F2FE39C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 08:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2941F2079A;
	Thu, 21 Jan 2021 07:17:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7sXrI2rKqCv; Thu, 21 Jan 2021 07:17:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B69A220788;
	Thu, 21 Jan 2021 07:17:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3FEA21BF873
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 07:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 39DA3871AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 07:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KyxttQrnpzdX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 07:17:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2C78871AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 07:17:21 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aea6e.dynamic.kabel-deutschland.de
 [95.90.234.110])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 92C1B2064790F;
 Thu, 21 Jan 2021 08:17:18 +0100 (CET)
To: Brett Creeley <brett.creeley@intel.com>
References: <20210121075247.16666-1-brett.creeley@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <74b3c8c5-f611-d797-49f2-63f260869c1c@molgen.mpg.de>
Date: Thu, 21 Jan 2021 08:17:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210121075247.16666-1-brett.creeley@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix MSI-X vector fallback
 logic
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Brett,


Am 21.01.21 um 08:52 schrieb Brett Creeley:
> The current MSI-X enablement logic tries to enable best-case MSI-X
> vectors and if that fails we only support a bare-minimum set. This
> includes a single MSI-X for 1 Tx and 1 Rx queue and a single MSI-X
> for the OICR interrupt. Unfortunately, the driver fails to load when we
> don't get as many MSI-X as requested for a couple reasons.
> 
> First, the code to allocate MSI-X in the driver tries to allocate
> num_online_cpus() MSI-X for LAN traffic without caring about the number
> of MSI-X actually enabled/requested from the kernel for LAN traffic.
> So, when calling ice_get_res() for the PF VSI, it returns failure
> because the number of available vectors is less than requested. Fix
> this by not allowing the PF VSI to allocation  more than
> pf->num_lan_msix MSI-X vectors and pf->num_lan_msix Rx/Tx queues.
> Limiting the number of queues is done because we don't want more than
> 1 Tx/Rx queue per interrupt due to performance conerns.
> 
> Second, the driver assigns pf->num_lan_msix = 2, to account for LAN
> traffic and the OICR. However, pf->num_lan_msix is only meant for LAN
> MSI-X. This is causing a failure when the PF VSI tries to
> allocate/reserve the minimum pf->num_lan_msix because the OICR MSI-X has
> already been reserved, so there may not be enough MSI-X vectors left.
> Fix this by setting pf->num_lan_msix = 1 for the failure case. Then the
> ICE_MIN_MSIX accounts for the LAN MSI-X and the OICR MSI-X needed for
> the failure case.
> 
> Update the related defines used in ice_ena_msix_range() to align with
> the above behavior and remove the unused RDMA defines because RDMA is
> currently not supported. Also, remove the now incorrect comment.
> 
> Also, prevent users from enabling more combined queues than there are
> MSI-X available via ethtool.
> 
> Fixes: Commit 152b978a1f90 ("ice: Rework ice_ena_msix_range")
> Fixes: Commit 87324e747fde ("ice: Implement ethtool ops for channels")

The word *Commit* does not need to be put in there.

Could you split the ethtool change into a separate commit?

Also, can you document your test setup so the driver failed to load?


Kind regards,

Paul


> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         |  4 +++-
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |  8 ++++----
>   drivers/net/ethernet/intel/ice/ice_lib.c     | 14 +++++++++-----
>   drivers/net/ethernet/intel/ice/ice_main.c    |  8 ++------
>   4 files changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 6efafe7d8a62..619d93f8b54c 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -68,7 +68,9 @@
>   #define ICE_INT_NAME_STR_LEN	(IFNAMSIZ + 16)
>   #define ICE_AQ_LEN		64
>   #define ICE_MBXSQ_LEN		64
> -#define ICE_MIN_MSIX		2
> +#define ICE_MIN_LAN_TXRX_MSIX	1
> +#define ICE_MIN_LAN_OICR_MSIX	1
> +#define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>   #define ICE_FDIR_MSIX		1
>   #define ICE_NO_VSI		0xffff
>   #define ICE_VSI_MAP_CONTIG	0
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index 41427302332c..aebebd2102da 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3265,8 +3265,8 @@ ice_set_rxfh(struct net_device *netdev, const u32 *indir, const u8 *key,
>    */
>   static int ice_get_max_txq(struct ice_pf *pf)
>   {
> -	return min_t(int, num_online_cpus(),
> -		     pf->hw.func_caps.common_cap.num_txq);
> +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> +		    (u16)pf->hw.func_caps.common_cap.num_txq);
>   }
>   
>   /**
> @@ -3275,8 +3275,8 @@ static int ice_get_max_txq(struct ice_pf *pf)
>    */
>   static int ice_get_max_rxq(struct ice_pf *pf)
>   {
> -	return min_t(int, num_online_cpus(),
> -		     pf->hw.func_caps.common_cap.num_rxq);
> +	return min3(pf->num_lan_msix, (u16)num_online_cpus(),
> +		    (u16)pf->hw.func_caps.common_cap.num_rxq);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 3df67486d42d..ad9c22a1b97a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -161,8 +161,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
>   
>   	switch (vsi->type) {
>   	case ICE_VSI_PF:
> -		vsi->alloc_txq = min_t(int, ice_get_avail_txq_count(pf),
> -				       num_online_cpus());
> +		vsi->alloc_txq = min3(pf->num_lan_msix,
> +				      ice_get_avail_txq_count(pf),
> +				      (u16)num_online_cpus());
>   		if (vsi->req_txq) {
>   			vsi->alloc_txq = vsi->req_txq;
>   			vsi->num_txq = vsi->req_txq;
> @@ -174,8 +175,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
>   		if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
>   			vsi->alloc_rxq = 1;
>   		} else {
> -			vsi->alloc_rxq = min_t(int, ice_get_avail_rxq_count(pf),
> -					       num_online_cpus());
> +			vsi->alloc_rxq = min3(pf->num_lan_msix,
> +					      ice_get_avail_rxq_count(pf),
> +					      (u16)num_online_cpus());
>   			if (vsi->req_rxq) {
>   				vsi->alloc_rxq = vsi->req_rxq;
>   				vsi->num_rxq = vsi->req_rxq;
> @@ -184,7 +186,9 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi, u16 vf_id)
>   
>   		pf->num_lan_rx = vsi->alloc_rxq;
>   
> -		vsi->num_q_vectors = max_t(int, vsi->alloc_rxq, vsi->alloc_txq);
> +		vsi->num_q_vectors = min_t(int, pf->num_lan_msix,
> +					   max_t(int, vsi->alloc_rxq,
> +						 vsi->alloc_txq));
>   		break;
>   	case ICE_VSI_VF:
>   		vf = &pf->vf[vsi->vf_id];
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index fb81aa5979e3..e10ca8929f85 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -3430,18 +3430,14 @@ static int ice_ena_msix_range(struct ice_pf *pf)
>   	if (v_actual < v_budget) {
>   		dev_warn(dev, "not enough OS MSI-X vectors. requested = %d, obtained = %d\n",
>   			 v_budget, v_actual);
> -/* 2 vectors each for LAN and RDMA (traffic + OICR), one for flow director */
> -#define ICE_MIN_LAN_VECS 2
> -#define ICE_MIN_RDMA_VECS 2
> -#define ICE_MIN_VECS (ICE_MIN_LAN_VECS + ICE_MIN_RDMA_VECS + 1)
>   
> -		if (v_actual < ICE_MIN_LAN_VECS) {
> +		if (v_actual < ICE_MIN_MSIX) {
>   			/* error if we can't get minimum vectors */
>   			pci_disable_msix(pf->pdev);
>   			err = -ERANGE;
>   			goto msix_err;
>   		} else {
> -			pf->num_lan_msix = ICE_MIN_LAN_VECS;
> +			pf->num_lan_msix = ICE_MIN_LAN_TXRX_MSIX;
>   		}
>   	}
>   
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

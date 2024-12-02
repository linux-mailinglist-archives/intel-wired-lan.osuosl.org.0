Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E89EB9DFCEC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 10:21:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB2D96068F;
	Mon,  2 Dec 2024 09:21:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jkq0oGICf5_X; Mon,  2 Dec 2024 09:20:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D38960787
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733131259;
	bh=kyWYPsy0L1Wynqk4O8s1j2cNudXLdrkkcDjZYI973Xw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RI/mk2moxe2utSlVAMXjcNym/9aTsxwZJluKvrTVe9+Eg86Zde9lqgAVymqYiysi5
	 Pb2b1oyYH0rv3mOyTDLHiUL5fc2GZdAPLaJY2StOnlyOuhBXjVTIMn3sA41+Jpyg8S
	 2drhBHtexRwYxqyFpZinGTL/8R6/AyTRnC/WzQ2AGbznnUsHs0mQMXFOHheVBXficg
	 QLHuewGia89x8NGTEF63lgo50HyZaOskLZ7vejfJ7UTvVfQfWW7b+vFWWRacVDjkzc
	 gMK4v4XxgmaGmA1QXtN/y1oZjZsh4PRoo31y880dpwcOGXhf36Pyp9MjSp//+FI4FB
	 HUDraDLvVXmnQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D38960787;
	Mon,  2 Dec 2024 09:20:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B01301DAA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D5C340566
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:20:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1qNy9P4PuTeJ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2024 09:20:55 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C68644055F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C68644055F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C68644055F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 09:20:54 +0000 (UTC)
X-CSE-ConnectionGUID: lDR9bKxTSNmlgjyXj666Sw==
X-CSE-MsgGUID: b0psGCyRQeKXkpFtyDTKFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33033902"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33033902"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:20:54 -0800
X-CSE-ConnectionGUID: uoZkUQJVTKKE6rSvFQxFWg==
X-CSE-MsgGUID: g+MelOORRsyPg0A13ZBgmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92716714"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:20:50 -0800
Date: Mon, 2 Dec 2024 10:17:53 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Pawel Chmielewski <pawel.chmielewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, pmenzel@molgen.mpg.de,
 wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, rafal.romanowski@intel.com,
 konrad.knitter@intel.com, horms@kernel.org, David.Laight@aculab.com,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Message-ID: <Z017QVzVrZkPg181@mev-dev.igk.intel.com>
References: <20241114122009.97416-5-michal.swiatkowski@linux.intel.com>
 <20241118101630.2936711-1-pawel.chmielewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241118101630.2936711-1-pawel.chmielewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733131255; x=1764667255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IdCpZ4hyHlY0LgniJQ5FhaRcGla8RSFsYoaeRGloUb4=;
 b=a3YJQCVlxn8AiNZauTXsIf70EnfCt70ClGQKEPaqJMS1WgpMw/kkDx8g
 xHK/OofurTpNPO3BdECq9OjScoGmiR2FeM9NJwu7E+GyZfxxs+lgXGaK9
 qTd4qJJRwP9gwBXh9UKnSZWE+fh1y/rn1kDWTr56sWI16k/huQGeR3YHH
 cl891Tc9Jzadak8Q48kqjYS68ToiBUP3a45UCkIe21oS8aaiVz/zh+uv2
 LODfWUIPIAE/TuDnzEaMWwPj2mzbDeFun+dd7RlcUeg4FxyO9Yi+uhNuE
 Rsm+UUrbrlFpa77cINDAB+UQtvxN79zM97MprIQG7wfnveADAgE46Jsxq
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=a3YJQCVl
Subject: Re: [Intel-wired-lan] [PATCH 4/8] ice,
 irdma: move interrupts code to irdma
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

On Mon, Nov 18, 2024 at 11:16:30AM +0100, Pawel Chmielewski wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> Move responsibility of MSI-X requesting for RDMA feature from ice driver
> to irdma driver. It is done to allow simple fallback when there is not
> enough MSI-X available.
> 
> Change amount of MSI-X used for control from 4 to 1, as it isn't needed
> to have more than one MSI-X for this purpose.
> 
> Reduce the maximum number of interrupts requested by irdma to 64.
> This improves the overall utilization of interrupts by the base driver
> for systems with a large number of cores.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
> Proposed change for a v8 of original patch:
>  - Add a limit of 64 of MSI-X for RDMA, as suggested in [1]
> 
> [1]: https://lore.kernel.org/netdev/5eca295e-1675-4779-b0d6-ec8a7550516f@intel.com/

For RDMA I can do it here, but I need to have performance data from
someone suggesting that 64 is enough (maybe even less can be enough).

> ---
>  drivers/infiniband/hw/irdma/hw.c         |  2 -
>  drivers/infiniband/hw/irdma/main.c       | 50 +++++++++++++++++-
>  drivers/infiniband/hw/irdma/main.h       |  4 ++
>  drivers/net/ethernet/intel/ice/ice.h     |  1 -
>  drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
>  drivers/net/ethernet/intel/ice/ice_irq.c |  3 +-
>  include/linux/net/intel/iidc.h           |  2 +
>  7 files changed, 70 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> index ad50b77282f8..69ce1862eabe 100644
> --- a/drivers/infiniband/hw/irdma/hw.c
> +++ b/drivers/infiniband/hw/irdma/hw.c
> @@ -498,8 +498,6 @@ static int irdma_save_msix_info(struct irdma_pci_f *rf)
>  	iw_qvlist->num_vectors = rf->msix_count;
>  	if (rf->msix_count <= num_online_cpus())
>  		rf->msix_shared = true;
> -	else if (rf->msix_count > num_online_cpus() + 1)
> -		rf->msix_count = num_online_cpus() + 1;
>  
>  	pmsix = rf->msix_entries;
>  	for (i = 0, ceq_idx = 0; i < rf->msix_count; i++, iw_qvinfo++) {
> diff --git a/drivers/infiniband/hw/irdma/main.c b/drivers/infiniband/hw/irdma/main.c
> index 3f13200ff71b..f538f4923825 100644
> --- a/drivers/infiniband/hw/irdma/main.c
> +++ b/drivers/infiniband/hw/irdma/main.c
> @@ -206,6 +206,47 @@ static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
>  		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
>  }
>  
> +static int irdma_init_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
> +{
> +	int i;
> +
> +	rf->msix_count = num_online_cpus() + IRDMA_NUM_AEQ_MSIX;
> +
> +	if (rf->msix_count > IRDMA_MAX_MSIX)
> +		rf->msix_count = IRDMA_MAX_MSIX;
> +
> +	rf->msix_entries = kcalloc(rf->msix_count, sizeof(*rf->msix_entries),
> +				   GFP_KERNEL);
> +	if (!rf->msix_entries)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < rf->msix_count; i++)
> +		if (ice_alloc_rdma_qvector(pf, &rf->msix_entries[i]))
> +			break;
> +
> +	if (i < IRDMA_MIN_MSIX) {
> +		for (; i > 0; i--)
> +			ice_free_rdma_qvector(pf, &rf->msix_entries[i]);
> +
> +		kfree(rf->msix_entries);
> +		return -ENOMEM;
> +	}
> +
> +	rf->msix_count = i;
> +
> +	return 0;
> +}
> +
> +static void irdma_deinit_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
> +{
> +	int i;
> +
> +	for (i = 0; i < rf->msix_count; i++)
> +		ice_free_rdma_qvector(pf, &rf->msix_entries[i]);
> +
> +	kfree(rf->msix_entries);
> +}
> +
>  static void irdma_remove(struct auxiliary_device *aux_dev)
>  {
>  	struct iidc_auxiliary_dev *iidc_adev = container_of(aux_dev,
> @@ -216,6 +257,7 @@ static void irdma_remove(struct auxiliary_device *aux_dev)
>  
>  	irdma_ib_unregister_device(iwdev);
>  	ice_rdma_update_vsi_filter(pf, iwdev->vsi_num, false);
> +	irdma_deinit_interrupts(iwdev->rf, pf);
>  
>  	pr_debug("INIT: Gen2 PF[%d] device remove success\n", PCI_FUNC(pf->pdev->devfn));
>  }
> @@ -230,9 +272,7 @@ static void irdma_fill_device_info(struct irdma_device *iwdev, struct ice_pf *pf
>  	rf->gen_ops.unregister_qset = irdma_lan_unregister_qset;
>  	rf->hw.hw_addr = pf->hw.hw_addr;
>  	rf->pcidev = pf->pdev;
> -	rf->msix_count =  pf->num_rdma_msix;
>  	rf->pf_id = pf->hw.pf_id;
> -	rf->msix_entries = &pf->msix_entries[pf->rdma_base_vector];
>  	rf->default_vsi.vsi_idx = vsi->vsi_num;
>  	rf->protocol_used = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ?
>  			    IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
> @@ -281,6 +321,10 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
>  	irdma_fill_device_info(iwdev, pf, vsi);
>  	rf = iwdev->rf;
>  
> +	err = irdma_init_interrupts(rf, pf);
> +	if (err)
> +		goto err_init_interrupts;
> +
>  	err = irdma_ctrl_init_hw(rf);
>  	if (err)
>  		goto err_ctrl_init;
> @@ -311,6 +355,8 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
>  err_rt_init:
>  	irdma_ctrl_deinit_hw(rf);
>  err_ctrl_init:
> +	irdma_deinit_interrupts(rf, pf);
> +err_init_interrupts:
>  	kfree(iwdev->rf);
>  	ib_dealloc_device(&iwdev->ibdev);
>  
> diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
> index 9f0ed6e84471..53a20f2dd681 100644
> --- a/drivers/infiniband/hw/irdma/main.h
> +++ b/drivers/infiniband/hw/irdma/main.h
> @@ -117,6 +117,10 @@ extern struct auxiliary_driver i40iw_auxiliary_drv;
>  
>  #define IRDMA_IRQ_NAME_STR_LEN (64)
>  
> +#define IRDMA_NUM_AEQ_MSIX	1
> +#define IRDMA_MIN_MSIX		2
> +#define IRDMA_MAX_MSIX		64
> +
>  enum init_completion_state {
>  	INVALID_STATE = 0,
>  	INITIAL_STATE,
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index bde04595b592..71525bf4918e 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -96,7 +96,6 @@
>  #define ICE_MIN_LAN_OICR_MSIX	1
>  #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>  #define ICE_FDIR_MSIX		2
> -#define ICE_RDMA_NUM_AEQ_MSIX	4
>  #define ICE_NO_VSI		0xffff
>  #define ICE_VSI_MAP_CONTIG	0
>  #define ICE_VSI_MAP_SCATTER	1
> diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
> index 145b27f2a4ce..bab3e81cad5d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_idc.c
> +++ b/drivers/net/ethernet/intel/ice/ice_idc.c
> @@ -228,61 +228,34 @@ void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos)
>  }
>  EXPORT_SYMBOL_GPL(ice_get_qos_params);
>  
> -/**
> - * ice_alloc_rdma_qvectors - Allocate vector resources for RDMA driver
> - * @pf: board private structure to initialize
> - */
> -static int ice_alloc_rdma_qvectors(struct ice_pf *pf)
> +int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry)
>  {
> -	if (ice_is_rdma_ena(pf)) {
> -		int i;
> -
> -		pf->msix_entries = kcalloc(pf->num_rdma_msix,
> -					   sizeof(*pf->msix_entries),
> -						  GFP_KERNEL);
> -		if (!pf->msix_entries)
> -			return -ENOMEM;
> +	struct msi_map map = ice_alloc_irq(pf, true);
>  
> -		/* RDMA is the only user of pf->msix_entries array */
> -		pf->rdma_base_vector = 0;
> -
> -		for (i = 0; i < pf->num_rdma_msix; i++) {
> -			struct msix_entry *entry = &pf->msix_entries[i];
> -			struct msi_map map;
> +	if (map.index < 0)
> +		return -ENOMEM;
>  
> -			map = ice_alloc_irq(pf, false);
> -			if (map.index < 0)
> -				break;
> +	entry->entry = map.index;
> +	entry->vector = map.virq;
>  
> -			entry->entry = map.index;
> -			entry->vector = map.virq;
> -		}
> -	}
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(ice_alloc_rdma_qvector);
>  
>  /**
>   * ice_free_rdma_qvector - free vector resources reserved for RDMA driver
>   * @pf: board private structure to initialize
> + * @entry: MSI-X entry to be removed
>   */
> -static void ice_free_rdma_qvector(struct ice_pf *pf)
> +void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry)
>  {
> -	int i;
> -
> -	if (!pf->msix_entries)
> -		return;
> -
> -	for (i = 0; i < pf->num_rdma_msix; i++) {
> -		struct msi_map map;
> +	struct msi_map map;
>  
> -		map.index = pf->msix_entries[i].entry;
> -		map.virq = pf->msix_entries[i].vector;
> -		ice_free_irq(pf, map);
> -	}
> -
> -	kfree(pf->msix_entries);
> -	pf->msix_entries = NULL;
> +	map.index = entry->entry;
> +	map.virq = entry->vector;
> +	ice_free_irq(pf, map);
>  }
> +EXPORT_SYMBOL_GPL(ice_free_rdma_qvector);
>  
>  /**
>   * ice_adev_release - function to be mapped to AUX dev's release op
> @@ -382,12 +355,6 @@ int ice_init_rdma(struct ice_pf *pf)
>  		return -ENOMEM;
>  	}
>  
> -	/* Reserve vector resources */
> -	ret = ice_alloc_rdma_qvectors(pf);
> -	if (ret < 0) {
> -		dev_err(dev, "failed to reserve vectors for RDMA\n");
> -		goto err_reserve_rdma_qvector;
> -	}
>  	pf->rdma_mode |= IIDC_RDMA_PROTOCOL_ROCEV2;
>  	ret = ice_plug_aux_dev(pf);
>  	if (ret)
> @@ -395,8 +362,6 @@ int ice_init_rdma(struct ice_pf *pf)
>  	return 0;
>  
>  err_plug_aux_dev:
> -	ice_free_rdma_qvector(pf);
> -err_reserve_rdma_qvector:
>  	pf->adev = NULL;
>  	xa_erase(&ice_aux_id, pf->aux_idx);
>  	return ret;
> @@ -412,6 +377,5 @@ void ice_deinit_rdma(struct ice_pf *pf)
>  		return;
>  
>  	ice_unplug_aux_dev(pf);
> -	ice_free_rdma_qvector(pf);
>  	xa_erase(&ice_aux_id, pf->aux_idx);
>  }
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index 1a7d446ab5f1..80c9ee2e64c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -84,11 +84,12 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
>  	return entry;
>  }
>  
> +#define ICE_RDMA_AEQ_MSIX 1
>  static int ice_get_default_msix_amount(struct ice_pf *pf)
>  {
>  	return ICE_MIN_LAN_OICR_MSIX + num_online_cpus() +
>  	       (test_bit(ICE_FLAG_FD_ENA, pf->flags) ? ICE_FDIR_MSIX : 0) +
> -	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_NUM_AEQ_MSIX : 0);
> +	       (ice_is_rdma_ena(pf) ? num_online_cpus() + ICE_RDMA_AEQ_MSIX : 0);
>  }
>  
>  /**
> diff --git a/include/linux/net/intel/iidc.h b/include/linux/net/intel/iidc.h
> index 1c1332e4df26..13274c3def66 100644
> --- a/include/linux/net/intel/iidc.h
> +++ b/include/linux/net/intel/iidc.h
> @@ -78,6 +78,8 @@ int ice_del_rdma_qset(struct ice_pf *pf, struct iidc_rdma_qset_params *qset);
>  int ice_rdma_request_reset(struct ice_pf *pf, enum iidc_reset_type reset_type);
>  int ice_rdma_update_vsi_filter(struct ice_pf *pf, u16 vsi_id, bool enable);
>  void ice_get_qos_params(struct ice_pf *pf, struct iidc_qos_params *qos);
> +int ice_alloc_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
> +void ice_free_rdma_qvector(struct ice_pf *pf, struct msix_entry *entry);
>  
>  /* Structure representing auxiliary driver tailored information about the core
>   * PCI dev, each auxiliary driver using the IIDC interface will have an
> -- 
> 2.37.3
> 

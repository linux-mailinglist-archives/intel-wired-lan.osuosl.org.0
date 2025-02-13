Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4B5A34E5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 20:20:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 82C3183F65;
	Thu, 13 Feb 2025 19:20:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsrqB-fk29jr; Thu, 13 Feb 2025 19:20:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 006C683F64
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739474444;
	bh=+9ICXTkfApxxTMpl1Xvqr27zkDdl4NmBC/7SI1EkYeA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EJvX86V7/JWlYNs4nw6Wn0SgtrhvwqNF/mhLoyLc7OpCzWMLZd4dOBC5UzI2Is1A7
	 4Gso5g/HcTsM6cyaCYSW7qNZic11lU2NbqKothFcWc7NQHQiNnVHTcSOqXVPqXD3WC
	 5jAw5J4m1OpZkNU9lTQu9AsVaRjMgUx82APY9U8GeHP0Y4RclLIFkTLNdUbDoyUFPY
	 tIzoZJbb9DoahYKZBYchJCzt+l9mGotq+So22IK6f00GFox6ZDHYxYuzfcTxpQtMeu
	 VFeDgoXmF1X0OtzBQkhOZCdvLqFLb/tQR9b6frK89ciMgJQLonwBSsCeJh3LbB7BC5
	 2go+lGUK2qSjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 006C683F64;
	Thu, 13 Feb 2025 19:20:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 78EC612D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D06A607AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:20:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4_CXr9BpaHkr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 19:20:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0F7D06077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0F7D06077A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0F7D06077A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 19:20:39 +0000 (UTC)
X-CSE-ConnectionGUID: HVsC1erkTHeYAT4auuQa5A==
X-CSE-MsgGUID: inikiwD8R2KdGrguG5o8uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50845877"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50845877"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:20:39 -0800
X-CSE-ConnectionGUID: Iwa5s9FDQlqLXEXxew6+4A==
X-CSE-MsgGUID: lc36L7AOSAatuC3jZicEXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="118158570"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.21.71])
 ([10.246.21.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:20:35 -0800
Message-ID: <8e533834-4564-472f-b29b-4f1cb7730053@linux.intel.com>
Date: Thu, 13 Feb 2025 20:20:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: himasekharx.reddy.pucha@intel.com, pmenzel@molgen.mpg.de,
 marcin.szycik@intel.com, netdev@vger.kernel.org, rafal.romanowski@intel.com,
 konrad.knitter@intel.com, pawel.chmielewski@intel.com, horms@kernel.org,
 David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com,
 jacob.e.keller@intel.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20241203065817.13475-1-michal.swiatkowski@linux.intel.com>
 <20241203065817.13475-6-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20241203065817.13475-6-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474440; x=1771010440;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MJvGzEAVvXDo67jLs3QBQsFAm8wqFuqKtzvY+7kPN2o=;
 b=M2kII6b66cO7IhihQQNwg3VcdxwpEfbEkbUaXBLAzj+oIhSx4qdxv9nV
 t1SDkT0WL7iXgwq24acAMMspMivd+1gIPst7IkT8C2kOVXzS4y1B2qXzz
 fgHM8Lj1tvz3765D9yLNbudx0oxIsJEdN7Ug1NRt33a2NWYqKDHfZPqOf
 Fl7fEQhFIn+JDFWHKUN4MO0apQiqPRxrkSlL/4+ewKvbh8znAmwfA5/0q
 PFRFLmPyWJ2vvZknMLrxiqrQpMBC7L4TA/eV8fFiobj7B5z+AdVVUAZQr
 4JIISr2ALib8K1KjABpAJbgST6+nz/nxYMswh0FYGfRtpIacnq/pQ5qn9
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=M2kII6b6
Subject: Re: [Intel-wired-lan] [iwl-next v9 5/9] ice,
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



On 03.12.2024 07:58, Michal Swiatkowski wrote:
> Move responsibility of MSI-X requesting for RDMA feature from ice driver
> to irdma driver. It is done to allow simple fallback when there is not
> enough MSI-X available.
> 
> Change amount of MSI-X used for control from 4 to 1, as it isn't needed
> to have more than one MSI-X for this purpose.

Hi, I'm observing KASAN reports or kernel panic when attempting to remove irdma
with this patchset, most probably this patch being the culprit, since it touches
functions from splat.

Reproducer:
  sudo rmmod irdma

Minified splat(s):
  BUG: KASAN: use-after-free in irdma_remove+0x257/0x2d0 [irdma]
  Call Trace:
   <TASK>
   ? __pfx__raw_spin_lock_irqsave+0x10/0x10
   ? kfree+0x253/0x450
   ? irdma_remove+0x257/0x2d0 [irdma]
   kasan_report+0xed/0x120
   ? irdma_remove+0x257/0x2d0 [irdma]
   irdma_remove+0x257/0x2d0 [irdma]
   auxiliary_bus_remove+0x56/0x80
   device_release_driver_internal+0x371/0x530
   ? kernfs_put.part.0+0x147/0x310
   driver_detach+0xbf/0x180
   bus_remove_driver+0x11b/0x2a0
   auxiliary_driver_unregister+0x1a/0x50
   irdma_exit_module+0x40/0x4c [irdma]
  
  Oops: general protection fault, probably for non-canonical address 0xdffffc0000000000: 0000 [#1] PREEMPT SMP KASAN NOPTI
  KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
  RIP: 0010:ice_free_rdma_qvector+0x2a/0xa0 [ice]
  Call Trace:
   ? ice_free_rdma_qvector+0x2a/0xa0 [ice]
   irdma_remove+0x179/0x2d0 [irdma]
   auxiliary_bus_remove+0x56/0x80
   device_release_driver_internal+0x371/0x530
   ? kobject_put+0x61/0x4b0
   driver_detach+0xbf/0x180
   bus_remove_driver+0x11b/0x2a0
   auxiliary_driver_unregister+0x1a/0x50
   irdma_exit_module+0x40/0x4c [irdma]

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/infiniband/hw/irdma/main.h       |  3 ++
>  drivers/net/ethernet/intel/ice/ice.h     |  1 -
>  include/linux/net/intel/iidc.h           |  2 +
>  drivers/infiniband/hw/irdma/hw.c         |  2 -
>  drivers/infiniband/hw/irdma/main.c       | 46 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_idc.c | 64 ++++++------------------
>  drivers/net/ethernet/intel/ice/ice_irq.c |  3 +-
>  7 files changed, 65 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/main.h b/drivers/infiniband/hw/irdma/main.h
> index 9f0ed6e84471..ef9a9b79d711 100644
> --- a/drivers/infiniband/hw/irdma/main.h
> +++ b/drivers/infiniband/hw/irdma/main.h
> @@ -117,6 +117,9 @@ extern struct auxiliary_driver i40iw_auxiliary_drv;
>  
>  #define IRDMA_IRQ_NAME_STR_LEN (64)
>  
> +#define IRDMA_NUM_AEQ_MSIX	1
> +#define IRDMA_MIN_MSIX		2
> +
>  enum init_completion_state {
>  	INVALID_STATE = 0,
>  	INITIAL_STATE,
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index f497f7d6eb71..14a90c916d43 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -97,7 +97,6 @@
>  #define ICE_MIN_LAN_OICR_MSIX	1
>  #define ICE_MIN_MSIX		(ICE_MIN_LAN_TXRX_MSIX + ICE_MIN_LAN_OICR_MSIX)
>  #define ICE_FDIR_MSIX		2
> -#define ICE_RDMA_NUM_AEQ_MSIX	4
>  #define ICE_NO_VSI		0xffff
>  #define ICE_VSI_MAP_CONTIG	0
>  #define ICE_VSI_MAP_SCATTER	1
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
> index 3f13200ff71b..1ee8969595d3 100644
> --- a/drivers/infiniband/hw/irdma/main.c
> +++ b/drivers/infiniband/hw/irdma/main.c
> @@ -206,6 +206,43 @@ static void irdma_lan_unregister_qset(struct irdma_sc_vsi *vsi,
>  		ibdev_dbg(&iwdev->ibdev, "WS: LAN free_res for rdma qset failed.\n");
>  }
>  
> +static int irdma_init_interrupts(struct irdma_pci_f *rf, struct ice_pf *pf)
> +{
> +	int i;
> +
> +	rf->msix_count = num_online_cpus() + IRDMA_NUM_AEQ_MSIX;
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
> @@ -216,6 +253,7 @@ static void irdma_remove(struct auxiliary_device *aux_dev)
>  
>  	irdma_ib_unregister_device(iwdev);
>  	ice_rdma_update_vsi_filter(pf, iwdev->vsi_num, false);
> +	irdma_deinit_interrupts(iwdev->rf, pf);
>  
>  	pr_debug("INIT: Gen2 PF[%d] device remove success\n", PCI_FUNC(pf->pdev->devfn));
>  }
> @@ -230,9 +268,7 @@ static void irdma_fill_device_info(struct irdma_device *iwdev, struct ice_pf *pf
>  	rf->gen_ops.unregister_qset = irdma_lan_unregister_qset;
>  	rf->hw.hw_addr = pf->hw.hw_addr;
>  	rf->pcidev = pf->pdev;
> -	rf->msix_count =  pf->num_rdma_msix;
>  	rf->pf_id = pf->hw.pf_id;
> -	rf->msix_entries = &pf->msix_entries[pf->rdma_base_vector];
>  	rf->default_vsi.vsi_idx = vsi->vsi_num;
>  	rf->protocol_used = pf->rdma_mode & IIDC_RDMA_PROTOCOL_ROCEV2 ?
>  			    IRDMA_ROCE_PROTOCOL_ONLY : IRDMA_IWARP_PROTOCOL_ONLY;
> @@ -281,6 +317,10 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
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
> @@ -311,6 +351,8 @@ static int irdma_probe(struct auxiliary_device *aux_dev, const struct auxiliary_
>  err_rt_init:
>  	irdma_ctrl_deinit_hw(rf);
>  err_ctrl_init:
> +	irdma_deinit_interrupts(rf, pf);
> +err_init_interrupts:
>  	kfree(iwdev->rf);
>  	ib_dealloc_device(&iwdev->ibdev);
>  
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


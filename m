Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D531BAC3277
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 May 2025 07:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C91EA80808;
	Sun, 25 May 2025 05:24:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id coG04m0KbgFZ; Sun, 25 May 2025 05:24:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 983BA8080B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748150650;
	bh=B75YSALI4/7Eq7EZqbZGPxr/BsYOYK7c/4597QJVTl0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2GMoUY3EITdvYmMhme5AwVHpBBll5VcOhUFaF2ILPjjTFgFfow99+Y1FeT6JsLEkP
	 965nM5kgbW7Q7Aj2+R+v/wduCjPY4uyoWE4IriMzGE2IG8hJSIVEkReX4Xd7nrqi0w
	 lGEHHdfXPP5YPp9br+/Aa+wrIXNNiovdin0hmGq3IeoKxzxh2353SyT2GC4WlsjjBD
	 OIL7UU7jAEw0cLvJZnF9yzFtaX9f4ztUakI65LwYg6TV7ql4D5o9V7/B0HcOYCF/1o
	 Qq0/1dzkztRud51VjDmQihVAM+ggn7cwaKTx11ujG4jNw8RwbEKxiC3f4IMtd5COwE
	 Xv/zX/HzWrEcA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 983BA8080B;
	Sun, 25 May 2025 05:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1280E68
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 May 2025 05:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 041A2807EC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 May 2025 05:24:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1LNk7b1JA-FU for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 May 2025 05:24:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2D9E807EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2D9E807EB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2D9E807EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 May 2025 05:24:06 +0000 (UTC)
Received: from [192.168.2.107] (p5b13a30a.dip0.t-ipconnect.de [91.19.163.10])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 45C1161E64783;
 Sun, 25 May 2025 07:23:36 +0200 (CEST)
Message-ID: <86b40e25-23af-4542-86de-415677b38486@molgen.mpg.de>
Date: Sun, 25 May 2025 07:23:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, jgg@nvidia.com, leon@kernel.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Joshua Hay <joshua.a.hay@intel.com>
References: <20250523170435.668-1-tatyana.e.nikolova@intel.com>
 <20250523170435.668-2-tatyana.e.nikolova@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250523170435.668-2-tatyana.e.nikolova@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [iwl-next 1/6] idpf: use reserved RDMA
 vectors from control plane
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

Dear Tatyana,


Thank you for your patch.

Am 23.05.25 um 19:04 schrieb Tatyana Nikolova:
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> Fetch the number of reserved RDMA vectors from the control plane.
> Adjust the number of reserved LAN vectors if necessary. Adjust the
> minimum number of vectors the OS should reserve to include RDMA; and
> fail if the OS cannot reserve enough vectors for the minimum number of
> LAN and RDMA vectors required. Create a separate msix table for the
> reserved RDMA vectors, which will just get handed off to the RDMA core
> device to do with what it will.

How can this all be tested? It’d be great if you added the commands and 
outputs.

> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h      | 28 +++++++-
>   drivers/net/ethernet/intel/idpf/idpf_lib.c  | 74 +++++++++++++++++----
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h |  1 +
>   drivers/net/ethernet/intel/idpf/virtchnl2.h |  5 +-
>   4 files changed, 92 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 66544faab710..8ef7120e6717 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -489,10 +489,11 @@ struct idpf_vc_xn_manager;
>    * @flags: See enum idpf_flags
>    * @reset_reg: See struct idpf_reset_reg
>    * @hw: Device access data
> - * @num_req_msix: Requested number of MSIX vectors
>    * @num_avail_msix: Available number of MSIX vectors
>    * @num_msix_entries: Number of entries in MSIX table
>    * @msix_entries: MSIX table
> + * @num_rdma_msix_entries: Available number of MSIX vectors for RDMA
> + * @rdma_msix_entries: RDMA MSIX table
>    * @req_vec_chunks: Requested vector chunk data
>    * @mb_vector: Mailbox vector data
>    * @vector_stack: Stack to store the msix vector indexes
> @@ -542,10 +543,11 @@ struct idpf_adapter {
>   	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
>   	struct idpf_reset_reg reset_reg;
>   	struct idpf_hw hw;
> -	u16 num_req_msix;
>   	u16 num_avail_msix;
>   	u16 num_msix_entries;
>   	struct msix_entry *msix_entries;
> +	u16 num_rdma_msix_entries;
> +	struct msix_entry *rdma_msix_entries;
>   	struct virtchnl2_alloc_vectors *req_vec_chunks;
>   	struct idpf_q_vector mb_vector;
>   	struct idpf_vector_lifo vector_stack;
> @@ -609,6 +611,17 @@ static inline int idpf_is_queue_model_split(u16 q_model)
>   bool idpf_is_capability_ena(struct idpf_adapter *adapter, bool all,
>   			    enum idpf_cap_field field, u64 flag);
>   
> +/**
> + * idpf_is_rdma_cap_ena - Determine if RDMA is supported
> + * @adapter: private data struct
> + *
> + * Return: true if RDMA capability is enabled, false otherwise
> + */
> +static inline bool idpf_is_rdma_cap_ena(struct idpf_adapter *adapter)
> +{
> +	return idpf_is_cap_ena(adapter, IDPF_OTHER_CAPS, VIRTCHNL2_CAP_RDMA);
> +}
> +
>   #define IDPF_CAP_RSS (\
>   	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
>   	VIRTCHNL2_CAP_RSS_IPV4_TCP	|\
> @@ -663,6 +676,17 @@ static inline u16 idpf_get_reserved_vecs(struct idpf_adapter *adapter)
>   	return le16_to_cpu(adapter->caps.num_allocated_vectors);
>   }
>   
> +/**
> + * idpf_get_reserved_rdma_vecs - Get reserved RDMA vectors
> + * @adapter: private data struct
> + *
> + * Return: number of vectors reserved for RDMA
> + */
> +static inline u16 idpf_get_reserved_rdma_vecs(struct idpf_adapter *adapter)
> +{
> +	return le16_to_cpu(adapter->caps.num_rdma_allocated_vectors);
> +}
> +
>   /**
>    * idpf_get_default_vports - Get default number of vports
>    * @adapter: private data struct
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index aa755dedb41d..0d5c57502cac 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -87,6 +87,8 @@ void idpf_intr_rel(struct idpf_adapter *adapter)
>   	idpf_deinit_vector_stack(adapter);
>   	kfree(adapter->msix_entries);
>   	adapter->msix_entries = NULL;
> +	kfree(adapter->rdma_msix_entries);
> +	adapter->rdma_msix_entries = NULL;
>   }
>   
>   /**
> @@ -314,13 +316,33 @@ int idpf_req_rel_vector_indexes(struct idpf_adapter *adapter,
>    */
>   int idpf_intr_req(struct idpf_adapter *adapter)
>   {
> +	u16 num_lan_vecs, min_lan_vecs, num_rdma_vecs = 0, min_rdma_vecs = 0;
>   	u16 default_vports = idpf_get_default_vports(adapter);
>   	int num_q_vecs, total_vecs, num_vec_ids;
>   	int min_vectors, v_actual, err;

Unrelated, but `v_actual` is strangely named, when all other variables 
seem to use vec.

>   	unsigned int vector;
>   	u16 *vecids;
> +	int i;

size_t?

>   
>   	total_vecs = idpf_get_reserved_vecs(adapter);
> +	num_lan_vecs = total_vecs;
> +	if (idpf_is_rdma_cap_ena(adapter)) {
> +		num_rdma_vecs = idpf_get_reserved_rdma_vecs(adapter);
> +		min_rdma_vecs = IDPF_MIN_RDMA_VEC;
> +
> +		if (!num_rdma_vecs) {
> +			/* If idpf_get_reserved_rdma_vecs is 0, vectors are
> +			 * pulled from the LAN pool.
> +			 */
> +			num_rdma_vecs = min_rdma_vecs;
> +		} else if (num_rdma_vecs < min_rdma_vecs) {
> +			dev_err(&adapter->pdev->dev,
> +				"Not enough vectors reserved for RDMA (min: %u, current: %u)\n",
> +				min_rdma_vecs, num_rdma_vecs);
> +			return -EINVAL;
> +		}
> +	}
> +
>   	num_q_vecs = total_vecs - IDPF_MBX_Q_VEC;
>   
>   	err = idpf_send_alloc_vectors_msg(adapter, num_q_vecs);
> @@ -331,52 +353,75 @@ int idpf_intr_req(struct idpf_adapter *adapter)
>   		return -EAGAIN;
>   	}
>   
> -	min_vectors = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
> +	min_lan_vecs = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
> +	min_vectors = min_lan_vecs + min_rdma_vecs;
>   	v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
>   					 total_vecs, PCI_IRQ_MSIX);
>   	if (v_actual < min_vectors) {
> -		dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
> +		dev_err(&adapter->pdev->dev, "Failed to allocate minimum MSIX vectors required: %d\n",
>   			v_actual);
>   		err = -EAGAIN;
>   		goto send_dealloc_vecs;
>   	}
>   
> -	adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
> -					GFP_KERNEL);
> +	if (idpf_is_rdma_cap_ena(adapter)) {
> +		if (v_actual < total_vecs) {
> +			dev_warn(&adapter->pdev->dev,
> +				 "Warning: not enough vectors available. Defaulting to minimum for RDMA and remaining for LAN.\n");

Also log `v_actual`, `total_vecs` and `IDPF_MIN_RDMA_VEC`?

> +			num_rdma_vecs = IDPF_MIN_RDMA_VEC;
> +		}
>   
> +		adapter->rdma_msix_entries =
> +			kcalloc(num_rdma_vecs,
> +				sizeof(struct msix_entry), GFP_KERNEL);
> +		if (!adapter->rdma_msix_entries) {
> +			err = -ENOMEM;
> +			goto free_irq;
> +		}
> +	}
> +
> +	num_lan_vecs = v_actual - num_rdma_vecs;
> +	adapter->msix_entries = kcalloc(num_lan_vecs, sizeof(struct msix_entry),
> +					GFP_KERNEL);
>   	if (!adapter->msix_entries) {
>   		err = -ENOMEM;
> -		goto free_irq;
> +		goto free_rdma_msix;
>   	}
>   
>   	idpf_set_mb_vec_id(adapter);
>   
> -	vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
> +	vecids = kcalloc(v_actual, sizeof(u16), GFP_KERNEL);
>   	if (!vecids) {
>   		err = -ENOMEM;
>   		goto free_msix;
>   	}
>   
> -	num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
> +	num_vec_ids = idpf_get_vec_ids(adapter, vecids, v_actual,
>   				       &adapter->req_vec_chunks->vchunks);
>   	if (num_vec_ids < v_actual) {
>   		err = -EINVAL;
>   		goto free_vecids;
>   	}
>   
> -	for (vector = 0; vector < v_actual; vector++) {
> -		adapter->msix_entries[vector].entry = vecids[vector];
> -		adapter->msix_entries[vector].vector =
> +	for (i = 0, vector = 0; vector < num_lan_vecs; vector++, i++) {
> +		adapter->msix_entries[i].entry = vecids[vector];
> +		adapter->msix_entries[i].vector =
> +			pci_irq_vector(adapter->pdev, vector);

Excuse my ignorance, but why are two counting variables needed, that 
seem to be identical?

> +	}
> +	for (i = 0; i < num_rdma_vecs; vector++, i++) {
> +		adapter->rdma_msix_entries[i].entry = vecids[vector];
> +		adapter->rdma_msix_entries[i].vector =
>   			pci_irq_vector(adapter->pdev, vector);
>   	}
>   
> -	adapter->num_req_msix = total_vecs;
> -	adapter->num_msix_entries = v_actual;
>   	/* 'num_avail_msix' is used to distribute excess vectors to the vports
>   	 * after considering the minimum vectors required per each default
>   	 * vport
>   	 */
> -	adapter->num_avail_msix = v_actual - min_vectors;
> +	adapter->num_avail_msix = num_lan_vecs - min_lan_vecs;
> +	adapter->num_msix_entries = num_lan_vecs;
> +	if (idpf_is_rdma_cap_ena(adapter))
> +		adapter->num_rdma_msix_entries = num_rdma_vecs;
>   
>   	/* Fill MSIX vector lifo stack with vector indexes */
>   	err = idpf_init_vector_stack(adapter);
> @@ -398,6 +443,9 @@ int idpf_intr_req(struct idpf_adapter *adapter)
>   free_msix:
>   	kfree(adapter->msix_entries);
>   	adapter->msix_entries = NULL;
> +free_rdma_msix:
> +	kfree(adapter->rdma_msix_entries);
> +	adapter->rdma_msix_entries = NULL;
>   free_irq:
>   	pci_free_irq_vectors(adapter->pdev);
>   send_dealloc_vecs:
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index b029f566e57c..9cb97397d89b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -57,6 +57,7 @@
>   /* Default vector sharing */
>   #define IDPF_MBX_Q_VEC		1
>   #define IDPF_MIN_Q_VEC		1
> +#define IDPF_MIN_RDMA_VEC	2
>   
>   #define IDPF_DFLT_TX_Q_DESC_COUNT		512
>   #define IDPF_DFLT_TX_COMPLQ_DESC_COUNT		512
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 63deb120359c..80c17e4a394e 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -473,6 +473,8 @@ VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_version_info);
>    *			segment offload.
>    * @max_hdr_buf_per_lso: Max number of header buffers that can be used for
>    *			 an LSO.
> + * @num_rdma_allocated_vectors: Maximum number of allocated RDMA vectors for
> + *				the device.
>    * @pad1: Padding for future extensions.
>    *
>    * Dataplane driver sends this message to CP to negotiate capabilities and
> @@ -520,7 +522,8 @@ struct virtchnl2_get_capabilities {
>   	__le32 device_type;
>   	u8 min_sso_packet_len;
>   	u8 max_hdr_buf_per_lso;
> -	u8 pad1[10];
> +	__le16 num_rdma_allocated_vectors;
> +	u8 pad1[8];
>   };
>   VIRTCHNL2_CHECK_STRUCT_LEN(80, virtchnl2_get_capabilities);


Kind regards,

Paul


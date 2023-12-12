Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAED80F391
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Dec 2023 17:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E355D418FD;
	Tue, 12 Dec 2023 16:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E355D418FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702399885;
	bh=H8Zo1I4T79HDPlwcLR6RJDDa9IzXurCUcbUvn7b9NvI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2D8jovIfrCGbPj+EGSSOFAutHF7xks2XkpkCR4QPxYY8dPRa47gMic2LAiXUuxjMl
	 EovgKanqE9F4ovYP7KcJV8duthvqpADPExBg38MufWnmd9y6QO/yYL5uVhtLv8cSRF
	 PHG2M3cpVEInDJD2qSXSu7WgrGN+fKeWkywxmxezPaDLtL05WFAa/lAqH6j3KzdXQP
	 sgkzhbbNZTCVe1hwQqXt59yUdO1PVBsaH9y7UA7NziR/1viKu1BE72QIoPbDKFEWpO
	 nqzF3304GGXRdSt6/+d1USJfb0KiOFpArw3sdCpvWL8CVxk1Vug3hQWXSZkspf/bTk
	 PlRxUIaNQTtew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GVmRRIMqlGo4; Tue, 12 Dec 2023 16:51:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44E20418BB;
	Tue, 12 Dec 2023 16:51:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44E20418BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C78641BF3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9F1A160BED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F1A160BED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-tTXF6AN4gn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Dec 2023 16:51:17 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE95060A82
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Dec 2023 16:51:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE95060A82
Received: from [141.14.30.220] (rabammel.molgen.mpg.de [141.14.30.220])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9796461E5FE03;
 Tue, 12 Dec 2023 17:50:56 +0100 (CET)
Message-ID: <78ecdb9f-25e9-4847-87ed-6e8b44a7c71d@molgen.mpg.de>
Date: Tue, 12 Dec 2023 17:50:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Kubiak <michal.kubiak@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20231212145546.396273-1-michal.kubiak@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 intel-wired-lan@lists.osuosl.org, alan.brady@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Michal, dear Joshua,


Thank you for your patch.

On 12/12/23 15:55, Michal Kubiak wrote:
> From: Joshua Hay <joshua.a.hay@intel.com>
> 
> Tell hardware to writeback completed descriptors even when interrupts

Should you resend, the verb is spelled with a space: write back.

> are disabled. Otherwise, descriptors might not be written back until
> the hardware can flush a full cacheline of descriptors. This can cause
> unnecessary delays when traffic is light (or even trigger Tx queue
> timeout).

How can the problem be reproduced and the patch be verified?


Kind regards,

Paul


> Fixes: c2d548cad150 ("idpf: add TX splitq napi poll support")
> Fixes: a5ab9ee0df0b ("idpf: add singleq start_xmit and napi poll")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  2 ++
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  6 ++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  7 +++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 23 +++++++++++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  2 ++
>  5 files changed, 38 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> index 34ad1ac46b78..2c6776086130 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_dev.c
> @@ -96,8 +96,10 @@ static int idpf_intr_reg_init(struct idpf_vport *vport)
>  		intr->dyn_ctl = idpf_get_reg_addr(adapter,
>  						  reg_vals[vec_id].dyn_ctl_reg);
>  		intr->dyn_ctl_intena_m = PF_GLINT_DYN_CTL_INTENA_M;
> +		intr->dyn_ctl_intena_msk_m = PF_GLINT_DYN_CTL_INTENA_MSK_M;
>  		intr->dyn_ctl_itridx_s = PF_GLINT_DYN_CTL_ITR_INDX_S;
>  		intr->dyn_ctl_intrvl_s = PF_GLINT_DYN_CTL_INTERVAL_S;
> +		intr->dyn_ctl_wb_on_itr_m = PF_GLINT_DYN_CTL_WB_ON_ITR_M;
>  
>  		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
>  					       IDPF_PF_ITR_IDX_SPACING);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 81288a17da2a..8e1478b7d86c 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -1168,8 +1168,10 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
>  						    &work_done);
>  
>  	/* If work not completed, return budget and polling will return */
> -	if (!clean_complete)
> +	if (!clean_complete) {
> +		idpf_vport_intr_set_wb_on_itr(q_vector);
>  		return budget;
> +	}
>  
>  	work_done = min_t(int, work_done, budget - 1);
>  
> @@ -1178,6 +1180,8 @@ int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget)
>  	 */
>  	if (likely(napi_complete_done(napi, work_done)))
>  		idpf_vport_intr_update_itr_ena_irq(q_vector);
> +	else
> +		idpf_vport_intr_set_wb_on_itr(q_vector);
>  
>  	return work_done;
>  }
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index 1646ff3877ba..b496566ee2aa 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -3639,6 +3639,7 @@ void idpf_vport_intr_update_itr_ena_irq(struct idpf_q_vector *q_vector)
>  					      IDPF_NO_ITR_UPDATE_IDX, 0);
>  
>  	writel(intval, q_vector->intr_reg.dyn_ctl);
> +	q_vector->wb_on_itr = false;
>  }
>  
>  /**
> @@ -3930,8 +3931,10 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>  	clean_complete &= idpf_tx_splitq_clean_all(q_vector, budget, &work_done);
>  
>  	/* If work not completed, return budget and polling will return */
> -	if (!clean_complete)
> +	if (!clean_complete) {
> +		idpf_vport_intr_set_wb_on_itr(q_vector);
>  		return budget;
> +	}
>  
>  	work_done = min_t(int, work_done, budget - 1);
>  
> @@ -3940,6 +3943,8 @@ static int idpf_vport_splitq_napi_poll(struct napi_struct *napi, int budget)
>  	 */
>  	if (likely(napi_complete_done(napi, work_done)))
>  		idpf_vport_intr_update_itr_ena_irq(q_vector);
> +	else
> +		idpf_vport_intr_set_wb_on_itr(q_vector);
>  
>  	/* Switch to poll mode in the tear-down path after sending disable
>  	 * queues virtchnl message, as the interrupts will be disabled after
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index df76493faa75..50761c2d9f3b 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -495,9 +495,11 @@ struct idpf_vec_regs {
>  struct idpf_intr_reg {
>  	void __iomem *dyn_ctl;
>  	u32 dyn_ctl_intena_m;
> +	u32 dyn_ctl_intena_msk_m;
>  	u32 dyn_ctl_itridx_s;
>  	u32 dyn_ctl_itridx_m;
>  	u32 dyn_ctl_intrvl_s;
> +	u32 dyn_ctl_wb_on_itr_m;
>  	void __iomem *rx_itr;
>  	void __iomem *tx_itr;
>  	void __iomem *icr_ena;
> @@ -534,6 +536,7 @@ struct idpf_q_vector {
>  	struct napi_struct napi;
>  	u16 v_idx;
>  	struct idpf_intr_reg intr_reg;
> +	bool wb_on_itr;
>  
>  	u16 num_txq;
>  	struct idpf_queue **tx;
> @@ -973,6 +976,26 @@ static inline void idpf_rx_sync_for_cpu(struct idpf_rx_buf *rx_buf, u32 len)
>  				      page_pool_get_dma_dir(pp));
>  }
>  
> +/**
> + * idpf_vport_intr_set_wb_on_itr - enable descriptor writeback on disabled interrupts
> + * @q_vector: pointer to queue vector struct
> + */
> +static inline void idpf_vport_intr_set_wb_on_itr(struct idpf_q_vector *q_vector)
> +{
> +	struct idpf_intr_reg *reg;
> +
> +	if (q_vector->wb_on_itr)
> +		return;
> +
> +	reg = &q_vector->intr_reg;
> +
> +	writel(reg->dyn_ctl_wb_on_itr_m | reg->dyn_ctl_intena_msk_m |
> +	       IDPF_NO_ITR_UPDATE_IDX << reg->dyn_ctl_itridx_s,
> +	       reg->dyn_ctl);
> +
> +	q_vector->wb_on_itr = true;
> +}
> +
>  int idpf_vport_singleq_napi_poll(struct napi_struct *napi, int budget);
>  void idpf_vport_init_num_qs(struct idpf_vport *vport,
>  			    struct virtchnl2_create_vport *vport_msg);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> index 8ade4e3a9fe1..f5b0a0666636 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_vf_dev.c
> @@ -96,7 +96,9 @@ static int idpf_vf_intr_reg_init(struct idpf_vport *vport)
>  		intr->dyn_ctl = idpf_get_reg_addr(adapter,
>  						  reg_vals[vec_id].dyn_ctl_reg);
>  		intr->dyn_ctl_intena_m = VF_INT_DYN_CTLN_INTENA_M;
> +		intr->dyn_ctl_intena_msk_m = VF_INT_DYN_CTLN_INTENA_MSK_M;
>  		intr->dyn_ctl_itridx_s = VF_INT_DYN_CTLN_ITR_INDX_S;
> +		intr->dyn_ctl_wb_on_itr_m = VF_INT_DYN_CTLN_WB_ON_ITR_M;
>  
>  		spacing = IDPF_ITR_IDX_SPACING(reg_vals[vec_id].itrn_index_spacing,
>  					       IDPF_VF_ITR_IDX_SPACING);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

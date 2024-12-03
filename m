Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C539E203F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Dec 2024 15:56:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A0228443F;
	Tue,  3 Dec 2024 14:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDDaK7hK2V6v; Tue,  3 Dec 2024 14:56:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4937484439
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733237779;
	bh=eq8DWWZ55QG5F86mG4rQ1ZRcAQVL7lh9nYk30wftW7w=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R3hvBLJFEOVGXM/EyzS0wZZDcbmKXvQh1AOSpYQJEcg0IhO0JI3zc2FMWSk/rFjeL
	 buynprN9CILw9O5VcCWjd8VJkN90nGpVepevJtF79zZ+htqpD5wj1vKD1mRRQXvozR
	 3svBM7Hp39d4TwRnVrTvPE72Fmw4Qtzwt8hOTPXTSjUduXxHfivK/1bn9kQC6gpzDB
	 GmHy3FT6oj7MVJmHRFvNFAbKiYPesnxuuZ7vwAOmBsvnNUt4npS7KrygjK4nEUlJqP
	 gwtC9uGmnigC2/05xHcpl9+tZu7DG7ND1dzvyees3QgU0ALC2VLxTx2g8I65IhvfXD
	 uTV33NpbIRJfg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4937484439;
	Tue,  3 Dec 2024 14:56:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E82C60
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 14:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2C9C2605C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 14:56:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5bDcTxm0tKqH for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Dec 2024 14:56:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 318C2605AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 318C2605AF
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 318C2605AF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Dec 2024 14:56:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 5B328A416B8;
 Tue,  3 Dec 2024 14:54:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF395C4CED6;
 Tue,  3 Dec 2024 14:56:12 +0000 (UTC)
Date: Tue, 3 Dec 2024 14:56:10 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <20241203145610.GE9361@kernel.org>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-8-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126035849.6441-8-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733237774;
 bh=vzQli8dvz+E9BCqg5gOlBZoTLEI1uKbE/xAKVWFJlfc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j10rnBshmdtDmXMQ56P2qlcaD0O8YWM0HiX/kgycpwW6nY8FlwmULY3P92/gd3GAE
 PPkH2pDmoQQ50Uuf/5Eve8ghI8iV++W0trybzDAOF35p/M/BsO5v2SSwTHl9zkgnPd
 hrRw+aWFk1WBbB2MHRlWl0qKJk8J2SoncqgdRTD/60iCuNTrfuwRM1tq6GckNWmqrK
 UtwKc4cwR9YqO61UPaoDq+D6q4Sjitx1crWlpUlQL1dUl3ui/hQyJ32ZqmDL2gHkT0
 nsKZFNlPo4RstZTCj84dCvw/E5I8wM+e/2RubSxHG7lgAf0W9xkHyskFuGNNsYaiRM
 pNIzsM8NlNjAA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=j10rnBsh
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
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

On Tue, Nov 26, 2024 at 04:58:53AM +0100, Milena Olech wrote:
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used
> for Tx timestamping.
> 
> Add function to get the Tx timestamp capabilities and parse the uplink
> vport flag.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v1 -> v2: change the idpf_for_each_vport macro

Hi Milena,

Some minor nits from my side.

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> index e7ccdcbdbd47..057d1c546417 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -83,6 +83,70 @@ struct idpf_ptp_secondary_mbx {
>  	bool valid:1;
>  };
>  
> +/**
> + * enum idpf_ptp_tx_tstamp_state - Tx timestamp states
> + * @IDPF_PTP_FREE: Tx timestamp index free to use
> + * @IDPF_PTP_REQUEST: Tx timestamp index set to the Tx descriptor
> + * @IDPF_PTP_READ_VALUE: Tx timestamp value ready to be read
> + */
> +enum idpf_ptp_tx_tstamp_state {
> +	IDPF_PTP_FREE,
> +	IDPF_PTP_REQUEST,
> +	IDPF_PTP_READ_VALUE,
> +};
> +
> +/**
> + * struct idpf_ptp_tx_tstamp_status - Parameters to track Tx timestamp
> + * @skb: the pointer to the SKB that received the completion tag
> + * @state: the state of the Tx timestamp
> + */
> +struct idpf_ptp_tx_tstamp_status {
> +	struct sk_buff *skb;
> +	enum idpf_ptp_tx_tstamp_state state;
> +};
> +
> +/**
> + * struct idpf_ptp_tx_tstamp - Parameters for Tx timestamping
> + * @list_member: the list member strutcure

nit: structure

     Flagged by checkpatch.pl --codespell

> + * @tx_latch_reg_offset_l: Tx tstamp latch low register offset
> + * @tx_latch_reg_offset_h: Tx tstamp latch high register offset
> + * @skb: the pointer to the SKB for this timestamp request
> + * @tstamp: the Tx tstamp value
> + * @idx: the index of the Tx tstamp
> + */
> +struct idpf_ptp_tx_tstamp {
> +	struct list_head list_member;
> +	u32 tx_latch_reg_offset_l;
> +	u32 tx_latch_reg_offset_h;
> +	struct sk_buff *skb;
> +	u64 tstamp;
> +	u32 idx;
> +};

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> @@ -3154,6 +3157,14 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
>  	idpf_vport_alloc_vec_indexes(vport);
>  
>  	vport->crc_enable = adapter->crc_enable;
> +
> +	if (!(vport_msg->vport_flags &
> +	      le16_to_cpu(VIRTCHNL2_VPORT_UPLINK_PORT)))

I think this should be cpu_to_le16.

Flagged by Sparse.

> +		return;
> +
> +	err = idpf_ptp_get_vport_tstamps_caps(vport);
> +	if (err)
> +		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
>  }
>  
>  /**

...

> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> index 44a5ee84ed60..fdeebc621bdb 100644
> --- a/drivers/net/ethernet/intel/idpf/virtchnl2.h
> +++ b/drivers/net/ethernet/intel/idpf/virtchnl2.h
> @@ -569,6 +569,14 @@ struct virtchnl2_queue_reg_chunks {
>  };
>  VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_queue_reg_chunks);
>  
> +/**
> + * enum virtchnl2_vport_flags - Vport flags that indicate vport capabilities.
> + * @VIRTCHNL2_VPORT_UPLINK_PORT: Representatives of underlying physical ports
> + */
> +enum virtchnl2_vport_flags {
> +	VIRTCHNL2_VPORT_UPLINK_PORT	= BIT(0),
> +};
> +
>  /**
>   * struct virtchnl2_create_vport - Create vport config info.
>   * @vport_type: See enum virtchnl2_vport_type.
> @@ -620,7 +628,7 @@ struct virtchnl2_create_vport {
>  	__le16 max_mtu;
>  	__le32 vport_id;
>  	u8 default_mac_addr[ETH_ALEN];
> -	__le16 pad;
> +	__le16 vport_flags;

The kernel doc for this structure, which is immediately above the
structure, should also be updated.

Flagged by ./scripts/kernel-doc -none

>  	__le64 rx_desc_ids;
>  	__le64 tx_desc_ids;
>  	u8 pad1[72];
> -- 
> 2.31.1
> 
> 

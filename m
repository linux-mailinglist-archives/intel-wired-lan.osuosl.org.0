Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD1FA2C655
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Feb 2025 15:57:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9C014058C;
	Fri,  7 Feb 2025 14:57:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_N4kqzcmZFZ; Fri,  7 Feb 2025 14:57:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C20D64052F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738940239;
	bh=krLf97bnW7NmoQ4tNGjONITDNvGu1LhUvdAJ82GC6+A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4ZL3x1k/+iold0CDU73E9Yh5Hka4rxAo3+J3Dc212Aj4SUF4s3CZveC5d6Tet5/oF
	 NGVy0i1ZiGtl5P19EMgxZCaVu1O5YSbIWEpie5Inzs86r7q7pMzId6EBCPBMQ3PgRB
	 4Upa4We8f/xdZn3OahgNvVwqo2C3EGZRzh6WQD842FD941NQBhpgFwDlHzJI8OhpTP
	 X9Axcg2y27IZl6vfPqcba9qVjclTwSdLx8spoQ+8m1JFIHgPycerM4S+v6uY47eRT4
	 MKzl5tMuQdpRV9TmA63ZJYRbdqUJ3+DaDBkLRgOLODuzkvPMsCamJDhCWto9briCfK
	 uuYvk1Lufek5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C20D64052F;
	Fri,  7 Feb 2025 14:57:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FA8BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 14:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F5066105F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 14:57:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7ZIpZ11rK5q7 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Feb 2025 14:57:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A0BAD60FEC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0BAD60FEC
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A0BAD60FEC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Feb 2025 14:57:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4068FA435C7;
 Fri,  7 Feb 2025 14:55:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08996C4CED1;
 Fri,  7 Feb 2025 14:57:12 +0000 (UTC)
Date: Fri, 7 Feb 2025 14:57:10 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 marcin.szycik@linux.intel.com, jedrzej.jagielski@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 anthony.l.nguyen@intel.com, dawid.osuchowski@intel.com
Message-ID: <20250207145710.GX554665@kernel.org>
References: <20250207104343.2791001-1-michal.swiatkowski@linux.intel.com>
 <20250207104343.2791001-4-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250207104343.2791001-4-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738940234;
 bh=5Bld7wfIGwWOXEK781i9Fo+q0vuOhNDcDamVB3lM6sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T1S4h2aauLw15m8I6q0fNLRgJOsiz3Ap8ywkBHofNOjrO/OxbGODm9zNJThtVxsNV
 EDZk2pddxNormkAd4dMo5GrOIavzso19D0bwoE2VHb9pOtuWljERvgX576T/aLAgBt
 JOhb22kGVYsfpgnRyIJiUV1CBaUafu6d3HIyddY8TqDxU7OH4JwFZfeHVKbGUfOQYi
 AXOiDuqjkAfnYInmHSQPXE7/UFG+mGopO9pGsa8I9b9YevKMcQ1TpeU/Wjj1DregYr
 PDuEC6xtR3dSKQvBpmnYAbCnGfi+QDlmnNntQLQn2aAaTLw80JL4uvyOXTahWTGdXc
 6aNggYoZbeSwQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=T1S4h2aa
Subject: Re: [Intel-wired-lan] [iwl-next v1 3/4] ixgbe: add Tx hang
 detection unhandled MDD
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

On Fri, Feb 07, 2025 at 11:43:42AM +0100, Michal Swiatkowski wrote:
> From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> 
> Add Tx Hang detection due to an unhandled MDD Event.
> 
> Previously, a malicious VF could disable the entire port causing
> TX to hang on the E610 card.
> Those events that caused PF to freeze were not detected
> as an MDD event and usually required a Tx Hang watchdog timer
> to catch the suspension, and perform a physical function reset.
> 
> Implement flows in the affected PF driver in such a way to check
> the cause of the hang, detect it as an MDD event and log an
> entry of the malicious VF that caused the Hang.
> 
> The PF blocks the malicious VF, if it continues to be the source
> of several MDD events.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
> Co-developed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> index aa3b498558bc..e07b56625595 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
> @@ -1044,6 +1044,7 @@ struct ixgbe_nvm_version {
>  #define IXGBE_GCR_EXT_VT_MODE_16        0x00000001
>  #define IXGBE_GCR_EXT_VT_MODE_32        0x00000002
>  #define IXGBE_GCR_EXT_VT_MODE_64        0x00000003
> +#define IXGBE_GCR_EXT_VT_MODE_MASK	0x00000003

nit: For consistency I think spaces should be used to indent 0x00000003

>  #define IXGBE_GCR_EXT_SRIOV             (IXGBE_GCR_EXT_MSIX_EN | \
>  					 IXGBE_GCR_EXT_VT_MODE_64)
>  

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

...

> +static u32 ixgbe_poll_tx_icache(struct ixgbe_hw *hw, u16 queue, u16 idx)
> +{
> +	IXGBE_WRITE_REG(hw, IXGBE_TXDESCIC, queue * idx);
> +	return IXGBE_READ_REG(hw, IXGBE_TXDESCIC);
> +}
> +
> +/**
> + * ixgbe_check_illegal_queue - search for queue with illegal packet
> + * @adapter: structure containing ring specific data
> + * @queue: queue index
> + *
> + * Check if tx descriptor connected with input queue
> + * contains illegal packet.
> + *
> + * Returns: true if queue contain illegal packet.
> + */
> +static bool ixgbe_check_illegal_queue(struct ixgbe_adapter *adapter,
> +				      u16 queue)
> +{
> +	u32 hdr_len_reg, mss_len_reg, type_reg;
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	u32 mss_len, header_len, reg;
> +
> +	for (u16 i = 0; i < IXGBE_MAX_TX_DESCRIPTORS; i++) {
> +		/* HW will clear bit IXGBE_TXDESCIC_READY when address
> +		 * is written to address field. HW will set this bit
> +		 * when iCache read is done, and data is ready at TIC_DWx.
> +		 * Set descriptor address.
> +		 */
> +		read_poll_timeout(ixgbe_poll_tx_icache, reg,
> +				  !(reg & IXGBE_TXDESCIC_READY), 0, 0, false,
> +				  hw, queue, i);
> +
> +		/* read tx descriptor access registers */
> +		hdr_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_VLAN_MACIP_LENS_REG));
> +		type_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_TYPE_TUCMD_MLHL));
> +		mss_len_reg = IXGBE_READ_REG(hw, IXGBE_TIC_DW2(IXGBE_MSS_L4LEN_IDX));
> +
> +		/* check if Advanced Context Descriptor */
> +		if (FIELD_GET(IXGBE_ADVTXD_DTYP_MASK, type_reg) !=
> +		    IXGBE_ADVTXD_DTYP_CTXT)
> +			continue;
> +
> +		/* check for illegal MSS and Header length */
> +		mss_len = FIELD_GET(IXGBE_ADVTXD_MSS_MASK, mss_len_reg);
> +		header_len = FIELD_GET(IXGBE_ADVTXD_HEADER_LEN_MASK,
> +				       hdr_len_reg);
> +		if ((mss_len + header_len) > SZ_16K) {
> +			e_warn(probe,
> +			       "mss len + header len too long\n");

nit: The above two lines can be a single line.

> +			return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
> +/**
> + * ixgbe_handle_mdd_event - handle mdd event
> + * @adapter: structure containing ring specific data
> + * @tx_ring: tx descriptor ring to handle
> + *
> + * Reset VF driver if malicious vf detected or
> + * illegal packet in an any queue detected.
> + */
> +static void ixgbe_handle_mdd_event(struct ixgbe_adapter *adapter,
> +				   struct ixgbe_ring *tx_ring)
> +{
> +	u16 vf, q;
> +
> +	if (adapter->vfinfo && ixgbe_check_mdd_event(adapter)) {
> +		/* vf mdd info and malicious vf detected */
> +		if (!ixgbe_get_vf_idx(adapter, tx_ring->queue_index, &vf))
> +			ixgbe_vf_handle_tx_hang(adapter, vf);
> +	} else {
> +		/* malicious vf not detected */
> +		for (q = 0; q < IXGBE_MAX_TX_QUEUES; q++) {
> +			if (ixgbe_check_illegal_queue(adapter, q) &&
> +			    !ixgbe_get_vf_idx(adapter, q, &vf))
> +				/* illegal queue detected */
> +				ixgbe_vf_handle_tx_hang(adapter, vf);

It looks like ixgbe_vf_handle_tx_hang() will run for each illegal queue.
Could that be more than once for a given vf? If so, is that desirable?

> +		}
> +	}
> +}
> +
>  /**
>   * ixgbe_clean_tx_irq - Reclaim resources after transmit completes
>   * @q_vector: structure containing interrupt and ring information

...

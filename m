Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D80892336
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 19:18:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE7E560624;
	Fri, 29 Mar 2024 18:18:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3aY8kLa5Gvld; Fri, 29 Mar 2024 18:18:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCF7760780
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711736284;
	bh=ScjApGupL0WXdUGBVmbgYRJ6DvwN3eVgSIyaLY3OADc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U9v5Rglxvw+w9xYiDnq0HVfhg7YZ+3RTSBrePBifQ8ELAobQO2GIyrWHv5nsBZ3+L
	 g4ytC0YDNmA7M2znL4V4C9Bb6/6BpDgA50rkWP5Cu8U6fjQ25rZXPdkDykpSBIjb94
	 gWK+0OxPqx6qCXfOBsegsq35UaiEAd3GwGEpUMZW893Fo2s1XFBFqYJkZqIu1ywsaE
	 o/OfP6jUhcaHCf0xCD5yVnIsX+tXNbfDnZaIA2hvoOTzWIE/wCrhBdHVXT1FeNG0Dg
	 QRVIoiNYK2nV9Vnxv+1zqMaNoDrl6tU78+CDEBBwV5uYoXzVTZaQrP5WJlaB9IBz4Z
	 B6Zg2+fAwNPSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCF7760780;
	Fri, 29 Mar 2024 18:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 916501BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 18:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7CF3940490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 18:18:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VCG_KmTirI9X for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 18:18:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A907E4048A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A907E4048A
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A907E4048A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 18:18:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 93B4ECE2FC5;
 Fri, 29 Mar 2024 18:17:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2A73C433C7;
 Fri, 29 Mar 2024 18:17:55 +0000 (UTC)
Date: Fri, 29 Mar 2024 18:17:53 +0000
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240329181753.GO651713@kernel.org>
References: <20240326115116.10040-1-mateusz.polchlopek@intel.com>
 <20240326115116.10040-10-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326115116.10040-10-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711736276;
 bh=VcoeznHpZFHLFNF7TWIK98y5roBFW7jXy6HVtZFOjOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bZ7y+uJsEb6im0F34jp1Fu0x1Ip3Q7FG0FD8+XDn0jsHDSerpRJlcwXSOoI08S9oF
 mgCHt3lMoKpH9zv778hra11UsuJnRSkqAV/OEFrByOGAQ+KRrdbP85WyP7y2+wZ7oF
 ou0gKpbpjGycrg5QxImdvCJ5iBkoI3XHFhFNQSQHfq1WVWZ+TckcR0Ih3gaK7QX5hH
 n7bG1DSqg7/WYZGaeASevG0wcrRGycccEHrl5KqZiHIexvlIwY4WErgNyZTU7+7yhJ
 HqNLDVNZdFo8kxENxuuiT1l/pquvCZdNUl/kQ9/Zo6MEm3DixT4XhTAXC8D/sgk5Ii
 Kw9vRAYhVeLXg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bZ7y+uJs
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 26, 2024 at 07:51:14AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
> 
> Also add bit position definitions for the status and error indications
> that are needed.
> 
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into
> a structure. This will reduce the burden for handling multiple
> descriptor types by keeping the relevant extraction logic in one place.
> 
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic
> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
> structure which holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without
> duplicating the general logic twice.
> 
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
> format instead of the legacy 32 byte format. Based on the negotiated
> RXDID, select the correct function for processing the Rx descriptors.
> 
> With this change, the Rx hot path should be functional when using either
> the default legacy 32byte format or when we switch to the flexible NIC
> layout.
> 
> Modify the Rx hot path to add support for the flexible descriptor
> format and add request enabling Rx timestamps for all queues.
> 
> As in ice, make sure we bump the checksum level if the hardware detected
> a packet type which could have an outer checksum. This is important
> because hardware only verifies the inner checksum.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 356 +++++++++++++-----
>  drivers/net/ethernet/intel/iavf/iavf_txrx.h   |   8 +
>  drivers/net/ethernet/intel/iavf/iavf_type.h   | 149 ++++++--
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   6 +
>  4 files changed, 393 insertions(+), 126 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c

...

> +/**
> + * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
> + * @vsi: the VSI we care about
> + * @skb: skb currently being received and modified
> + * @rx_desc: the receive descriptor
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static inline void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
> +				     union iavf_rx_desc *rx_desc)
> +{
> +	struct iavf_rx_csum_decoded csum_bits;
> +	struct iavf_rx_ptype_decoded decoded;
> +	u16 rx_status0, rx_status1, ptype;
> +
> +	rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
> +	rx_status1 = le16_to_cpu(rx_desc->flex_wb.status_error1);
> +	ptype = le16_to_cpu(FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
> +				      rx_desc->flex_wb.ptype_flexi_flags0));

Sparse seems a bit unhappy about this:

1. IAVF_RX_FLEX_DESC_PTYPE_M is host byte order,
   but x_desc->flex_wb.ptype_flexi_flags0 is little endien.
2. FIELD_GET expects it's arguments to be host byte order (AFAICT)

So perhaps this should be:

	ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
			  le16_to_cpu(rx_desc->flex_wb.ptype_flexi_flags0));

> +	decoded = decode_rx_desc_ptype(ptype);
> +
> +	csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
> +				  rx_status0);
> +	csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
> +				   rx_status0);
> +	csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
> +				  rx_status0);
> +	csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
> +				    rx_status0);
> +	csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
> +				    rx_status0);
> +	csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
> +					rx_status0);
> +	csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
> +	csum_bits.pprs = 0;
> +
> +	iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
> +}
> +
>  /**
>   * iavf_ptype_to_htype - get a hash type
>   * @ptype: the ptype value from the descriptor
>   *
>   * Returns a hash type to be used by skb_set_hash
>   **/
> -static int iavf_ptype_to_htype(u8 ptype)
> +static int iavf_ptype_to_htype(u16 ptype)
>  {
>  	struct iavf_rx_ptype_decoded decoded = decode_rx_desc_ptype(ptype);
>  
> @@ -1078,21 +1165,21 @@ static int iavf_ptype_to_htype(u8 ptype)
>  }
>  
>  /**
> - * iavf_rx_hash - set the hash value in the skb
> + * iavf_legacy_rx_hash - set the hash value in the skb
>   * @ring: descriptor ring
>   * @rx_desc: specific descriptor
>   * @skb: skb currently being received and modified
>   * @rx_ptype: Rx packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
>   **/
> -static void iavf_rx_hash(struct iavf_ring *ring,
> -			 union iavf_rx_desc *rx_desc,
> -			 struct sk_buff *skb,
> -			 u8 rx_ptype)
> +static inline void iavf_legacy_rx_hash(struct iavf_ring *ring,
> +				       union iavf_rx_desc *rx_desc,
> +				       struct sk_buff *skb, u8 rx_ptype)
>  {
>  	u32 hash;
> -	const __le64 rss_mask =
> -		cpu_to_le64((u64)IAVF_RX_DESC_FLTSTAT_RSS_HASH <<
> -			    IAVF_RX_DESC_STATUS_FLTSTAT_SHIFT);
> +	const __le64 rss_mask = IAVF_RX_DESC_STATUS_FLTSTAT_MASK;

IAVF_RX_DESC_STATUS_FLTSTAT_MASK is host byte order.
So it seems that a call to cpu_to_le64 is needed here.

Flagged by Sparse.

Also, nit, please consider arrange local variables in reverse xmas
tree order - longest line to shortest.


>  
>  	if (!(ring->netdev->features & NETIF_F_RXHASH))
>  		return;

> @@ -1103,6 +1190,33 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>  	}
>  }
>  
> +/**
> + * iavf_flex_rx_hash - set the hash value in the skb
> + * @ring: descriptor ring
> + * @rx_desc: specific descriptor
> + * @skb: skb currently being received and modified
> + * @rx_ptype: Rx packet type
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + **/
> +static inline void iavf_flex_rx_hash(struct iavf_ring *ring,
> +				     union iavf_rx_desc *rx_desc,
> +				     struct sk_buff *skb, u16 rx_ptype)
> +{
> +	__le16 status0;
> +
> +	if (!(ring->netdev->features & NETIF_F_RXHASH))
> +		return;
> +
> +	status0 = rx_desc->flex_wb.status_error0;
> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_RSS_VALID_M)) {
> +		u32 hash = le32_to_cpu(rx_desc->flex_wb.rss_hash);
> +
> +		skb_set_hash(skb, hash, iavf_ptype_to_htype(rx_ptype));
> +	}
> +}
> +
>  /**
>   * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
>   * @rx_ring: rx descriptor ring packet is being transacted on
> @@ -1114,14 +1228,19 @@ static void iavf_rx_hash(struct iavf_ring *ring,
>   * order to populate the hash, checksum, VLAN, protocol, and
>   * other fields within the skb.
>   **/
> -static void
> -iavf_process_skb_fields(struct iavf_ring *rx_ring,
> -			union iavf_rx_desc *rx_desc, struct sk_buff *skb,
> -			u8 rx_ptype)
> +static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
> +				    union iavf_rx_desc *rx_desc,
> +				    struct sk_buff *skb, u16 rx_ptype)
>  {
> -	iavf_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE) {
> +		iavf_legacy_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
> +
> +		iavf_legacy_rx_csum(rx_ring->vsi, skb, rx_desc);
> +	} else {
> +		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
>  
> -	iavf_rx_checksum(rx_ring->vsi, skb, rx_desc);
> +		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
> +	}
>  
>  	skb_record_rx_queue(skb, rx_ring->queue_index);
>  
> @@ -1450,7 +1569,7 @@ static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
>  /**
>   * iavf_is_non_eop - process handling of non-EOP buffers
>   * @rx_ring: Rx ring being processed
> - * @rx_desc: Rx descriptor for current buffer
> + * @fields: Rx descriptor extracted fields
>   * @skb: Current socket buffer containing buffer in progress
>   *
>   * This function updates next to clean.  If the buffer is an EOP buffer
> @@ -1459,7 +1578,7 @@ static void iavf_put_rx_buffer(struct iavf_ring *rx_ring,
>   * that this is in fact a non-EOP buffer.
>   **/
>  static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
> -			    union iavf_rx_desc *rx_desc,
> +			    struct iavf_rx_extracted *fields,
>  			    struct sk_buff *skb)
>  {
>  	u32 ntc = rx_ring->next_to_clean + 1;
> @@ -1471,8 +1590,7 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  	prefetch(IAVF_RX_DESC(rx_ring, ntc));
>  
>  	/* if we are the last buffer then there is nothing else to do */
> -#define IAVF_RXD_EOF BIT(IAVF_RX_DESC_STATUS_EOF_SHIFT)
> -	if (likely(iavf_test_staterr(rx_desc, IAVF_RXD_EOF)))
> +	if (likely(fields->end_of_packet))
>  		return false;
>  
>  	rx_ring->rx_stats.non_eop_descs++;
> @@ -1480,6 +1598,92 @@ static bool iavf_is_non_eop(struct iavf_ring *rx_ring,
>  	return true;
>  }
>  
> +/**
> + * iavf_extract_legacy_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @fields: storage for extracted values
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
> + * descriptor writeback format.
> + */
> +static inline void iavf_extract_legacy_rx_fields(struct iavf_ring *rx_ring,
> +						 union iavf_rx_desc *rx_desc,
> +						 struct iavf_rx_extracted *fields)
> +{
> +	u64 qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> +
> +	fields->size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
> +	fields->rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> +
> +	if (qword & IAVF_RX_DESC_STATUS_L2TAG1P_MASK &&
> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> +
> +	if (rx_desc->wb.qword2.ext_status &
> +	    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> +
> +	fields->end_of_packet = FIELD_GET(IAVF_RX_DESC_STATUS_EOF_MASK, qword);
> +	fields->rxe = FIELD_GET(BIT(IAVF_RXD_QW1_ERROR_SHIFT), qword);
> +}
> +
> +/**
> + * iavf_extract_flex_rx_fields - Extract fields from the Rx descriptor
> + * @rx_ring: rx descriptor ring
> + * @rx_desc: the descriptor to process
> + * @fields: storage for extracted values
> + *
> + * Decode the Rx descriptor and extract relevant information including the
> + * size, VLAN tag, Rx packet type, end of packet field and RXE field value.
> + *
> + * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
> + * descriptor writeback format.
> + */
> +static inline void iavf_extract_flex_rx_fields(struct iavf_ring *rx_ring,
> +					       union iavf_rx_desc *rx_desc,
> +					       struct iavf_rx_extracted *fields)
> +{
> +	__le16 status0, status1, flexi_flags0;
> +
> +	fields->size = FIELD_GET(IAVF_RX_FLEX_DESC_PKT_LEN_M,
> +				 le16_to_cpu(rx_desc->flex_wb.pkt_len));
> +
> +	flexi_flags0 = rx_desc->flex_wb.ptype_flexi_flags0;
> +
> +	fields->rx_ptype = FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
> +				     le16_to_cpu(flexi_flags0));
> +
> +	status0 = rx_desc->flex_wb.status_error0;
> +	if (status0 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS0_L2TAG1P_M) &&
> +	    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag1);
> +
> +	status1 = rx_desc->flex_wb.status_error1;
> +	if (status1 & cpu_to_le16(IAVF_RX_FLEX_DESC_STATUS1_L2TAG2P_M) &&
> +	    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> +		fields->vlan_tag = le16_to_cpu(rx_desc->flex_wb.l2tag2_2nd);
> +
> +	fields->end_of_packet = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_EOP_BIT,
> +					  le16_to_cpu(status0));
> +	fields->rxe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS_ERR0_RXE_BIT,
> +				le16_to_cpu(status0));
> +}
> +
> +static inline void iavf_extract_rx_fields(struct iavf_ring *rx_ring,
> +					  union iavf_rx_desc *rx_desc,
> +					  struct iavf_rx_extracted *fields)
> +{
> +	if (rx_ring->rxdid == VIRTCHNL_RXDID_1_32B_BASE)
> +		iavf_extract_legacy_rx_fields(rx_ring, rx_desc, fields);
> +	else
> +		iavf_extract_flex_rx_fields(rx_ring, rx_desc, fields);
> +}
> +
>  /**
>   * iavf_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
>   * @rx_ring: rx descriptor ring to transact packets on
> @@ -1500,12 +1704,9 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  	bool failure = false;
>  
>  	while (likely(total_rx_packets < (unsigned int)budget)) {
> +		struct iavf_rx_extracted fields = {};
>  		struct iavf_rx_buffer *rx_buffer;
>  		union iavf_rx_desc *rx_desc;
> -		unsigned int size;
> -		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> -		u64 qword;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
>  		if (cleaned_count >= IAVF_RX_BUFFER_WRITE) {
> @@ -1516,39 +1717,32 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  
>  		rx_desc = IAVF_RX_DESC(rx_ring, rx_ring->next_to_clean);
>  
> -		/* status_error_len will always be zero for unused descriptors
> -		 * because it's cleared in cleanup, and overlaps with hdr_addr
> -		 * which is always zero because packet split isn't used, if the
> -		 * hardware wrote DD then the length will be non-zero
> -		 */
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> -
>  		/* This memory barrier is needed to keep us from reading
>  		 * any other fields out of the rx_desc until we have
>  		 * verified the descriptor has been written back.
>  		 */
>  		dma_rmb();
> -#define IAVF_RXD_DD BIT(IAVF_RX_DESC_STATUS_DD_SHIFT)
> -		if (!iavf_test_staterr(rx_desc, IAVF_RXD_DD))
> +		if (!iavf_test_staterr(rx_desc, IAVF_RX_DESC_STATUS_DD_MASK))
>  			break;
>  
> -		size = FIELD_GET(IAVF_RXD_QW1_LENGTH_PBUF_MASK, qword);
> +		iavf_extract_rx_fields(rx_ring, rx_desc, &fields);
>  
>  		iavf_trace(clean_rx_irq, rx_ring, rx_desc, skb);
> -		rx_buffer = iavf_get_rx_buffer(rx_ring, size);
> +		rx_buffer = iavf_get_rx_buffer(rx_ring, fields.size);
>  
>  		/* retrieve a buffer from the ring */
>  		if (skb)
> -			iavf_add_rx_frag(rx_ring, rx_buffer, skb, size);
> +			iavf_add_rx_frag(rx_ring, rx_buffer, skb, fields.size);
>  		else if (ring_uses_build_skb(rx_ring))
> -			skb = iavf_build_skb(rx_ring, rx_buffer, size);
> +			skb = iavf_build_skb(rx_ring, rx_buffer, fields.size);
>  		else
> -			skb = iavf_construct_skb(rx_ring, rx_buffer, size);
> +			skb = iavf_construct_skb(rx_ring, rx_buffer,
> +						 fields.size);
>  
>  		/* exit if we failed to retrieve a buffer */
>  		if (!skb) {
>  			rx_ring->rx_stats.alloc_buff_failed++;
> -			if (rx_buffer && size)
> +			if (rx_buffer && fields.size)
>  				rx_buffer->pagecnt_bias++;
>  			break;
>  		}
> @@ -1556,15 +1750,14 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		iavf_put_rx_buffer(rx_ring, rx_buffer);
>  		cleaned_count++;
>  
> -		if (iavf_is_non_eop(rx_ring, rx_desc, skb))
> +		if (iavf_is_non_eop(rx_ring, &fields, skb))
>  			continue;
>  
> -		/* ERR_MASK will only have valid bits if EOP set, and
> -		 * what we are doing here is actually checking
> -		 * IAVF_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
> -		 * the error field
> +		/* RXE field in descriptor is an indication of the MAC errors
> +		 * (like CRC, alignment, oversize etc). If it is set then iavf
> +		 * should finish.
>  		 */
> -		if (unlikely(iavf_test_staterr(rx_desc, BIT(IAVF_RXD_QW1_ERROR_SHIFT)))) {
> +		if (unlikely(fields.rxe)) {
>  			dev_kfree_skb_any(skb);
>  			skb = NULL;
>  			continue;
> @@ -1578,22 +1771,11 @@ static int iavf_clean_rx_irq(struct iavf_ring *rx_ring, int budget)
>  		/* probably a little skewed due to removing CRC */
>  		total_rx_bytes += skb->len;
>  
> -		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
> -		rx_ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
> -
>  		/* populate checksum, VLAN, and protocol */
> -		iavf_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
> -
> -		if (qword & BIT(IAVF_RX_DESC_STATUS_L2TAG1P_SHIFT) &&
> -		    rx_ring->flags & IAVF_TXRX_FLAGS_VLAN_TAG_LOC_L2TAG1)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword0.lo_dword.l2tag1);
> -		if (rx_desc->wb.qword2.ext_status &
> -		    cpu_to_le16(BIT(IAVF_RX_DESC_EXT_STATUS_L2TAG2P_SHIFT)) &&
> -		    rx_ring->flags & IAVF_RXR_FLAGS_VLAN_TAG_LOC_L2TAG2_2)
> -			vlan_tag = le16_to_cpu(rx_desc->wb.qword2.l2tag2_2);
> +		iavf_process_skb_fields(rx_ring, rx_desc, skb, fields.rx_ptype);
>  
>  		iavf_trace(clean_rx_irq_rx, rx_ring, rx_desc, skb);
> -		iavf_receive_skb(rx_ring, skb, vlan_tag);
> +		iavf_receive_skb(rx_ring, skb, fields.vlan_tag);
>  		skb = NULL;
>  
>  		/* update budget accounting */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.h b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> index 97055c63e866..67e51b4883bc 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.h
> @@ -170,6 +170,14 @@ static inline bool iavf_test_staterr(union iavf_rx_desc *rx_desc,
>  		  cpu_to_le64(stat_err_bits));
>  }
>  
> +struct iavf_rx_extracted {
> +	unsigned int size;
> +	u16 vlan_tag;
> +	u16 rx_ptype;
> +	u8 end_of_packet:1;
> +	u8 rxe:1;
> +};
> +
>  /* How many Rx Buffers do we bundle into one write to the hardware ? */
>  #define IAVF_RX_INCREMENT(r, i) \
>  	do {					\
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h

...

> @@ -255,35 +294,34 @@ union iavf_32byte_rx_desc {
>  			} hi_dword;
>  		} qword3;
>  	} wb;  /* writeback */
> -};
> +	struct iavf_32byte_rx_flex_wb flex_wb;
> +};
> +
> +/* Note: These are predefined bit offsets */
> +#define IAVF_RX_DESC_STATUS_DD_MASK		BIT(0)
> +#define IAVF_RX_DESC_STATUS_EOF_MASK		BIT(1)
> +#define IAVF_RX_DESC_STATUS_L2TAG1P_MASK	BIT(2)
> +#define IAVF_RX_DESC_STATUS_L3L4P_MASK		BIT(3)
> +#define IAVF_RX_DESC_STATUS_CRCP_MASK		BIT(4)
> +#define IAVF_RX_DESC_STATUS_TSYNINDX_MASK	(0x3ULL << 5) /* 2 BITS */
> +#define IAVF_RX_DESC_STATUS_TSYNVALID_MASK	BIT(7)
> +/* Note: Bit 8 is reserved in X710 and XL710 */
> +#define IAVF_RX_DESC_STATUS_EXT_UDP_0_MASK	BIT(8)
> +#define IAVF_RX_DESC_STATUS_UMBCAST_MASK	(0x3ULL << 9) /* 2 BITS */
> +#define IAVF_RX_DESC_STATUS_FLM_MASK		BIT(11)
> +#define IAVF_RX_DESC_STATUS_FLTSTAT_MASK	(0x3ULL << 12) /* 2 BITS */

nit: probably this could use GENMASK_ULL.

> +#define IAVF_RX_DESC_STATUS_LPBK_MASK		BIT(14)
> +#define IAVF_RX_DESC_STATUS_IPV6EXADD_MASK	BIT(15)
> +#define IAVF_RX_DESC_STATUS_RESERVED_MASK	(0x3UL << 16) /* 2 BITS */
> +/* Note: For non-tunnel packets INT_UDP_0 is the right status for
> + * UDP header
> + */
> +#define IAVF_RX_DESC_STATUS_INT_UDP_0_MASK	BIT(18)

...

Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLvcKoZfqGmduAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DEB20466C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 17:36:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F89F8136C;
	Wed,  4 Mar 2026 16:36:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vVG3K9oHqTG7; Wed,  4 Mar 2026 16:36:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D13B8132E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772642175;
	bh=Up+L2yn+WEJMD6tLWkY5okmA7ymqi0Be/h2yfK8Wfjo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m5PPbg1W/PCsvGI84xIj+MmzjkpAHLpCpT16XAi/fqWwaRxd7CmeOzUL+sxjQOsYz
	 njoIQ40PfZ+q3gfL9/bEaP08bX+hxsCmoPdC31Djb5niBVW1wnMbAMPlu9U+LVV7bN
	 vkdpZ5fOdtpxvU+ZmVuYbZB+UhszP5SQ0MSuIYHyuTIYjhcPGyq8bWdE5YYT5j05QQ
	 UVCV68ZmHJ4aMBWL6GBzxgHhJwyDaDYd4MTXaGfgm4yEPccZmJJ2H4P1Z5AQbaVv7P
	 rDPHuLAyUARWEwJ1pJYa2VFRvIPko/8YWDP+XP1vzr9JKEt/D1IFNdadP4lXQbcVcL
	 MgN6RBNWzn4NA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D13B8132E;
	Wed,  4 Mar 2026 16:36:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id ED0DF1EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFB656086F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohEoQCBKv5UY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 16:36:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AA3266086D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA3266086D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AA3266086D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 16:36:12 +0000 (UTC)
X-CSE-ConnectionGUID: 0W4xDAptSiiPw9kdrjAc2Q==
X-CSE-MsgGUID: qBR8jIqdQ8yuB7CkA4rXzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="72906426"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="72906426"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 08:36:12 -0800
X-CSE-ConnectionGUID: NAVU0VL+T6yLJEwUh/etdw==
X-CSE-MsgGUID: ycIQVp/aQQ+9VJbj0Nev5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="241405012"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa002.fm.intel.com with ESMTP; 04 Mar 2026 08:36:07 -0800
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F2953312C7;
 Wed,  4 Mar 2026 16:36:05 +0000 (GMT)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Natalia Wochtman <natalia.wochtman@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Wed,  4 Mar 2026 17:03:40 +0100
Message-ID: <20260304160345.1340940-9-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260304160345.1340940-1-larysa.zaremba@intel.com>
References: <20260304160345.1340940-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772642172; x=1804178172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3E37TVKi/ZdyMSzyvl9aONt6910ly+ZHDY6aXGreeo4=;
 b=AMh2R+s2LNdwMa6XAJolKtjd6VBgIschp/OvXye2pbfzqeyy8haO7r+t
 DhOtf6w1R9rZd6TD7plkPKKytpwoxzplAQ6V0pzVCoqH3UpjJxyXGf7O2
 IlkoTTnaPYcJSii5mN8giGGpZoUYuUFfrVpNtZaj7tawwHDYFLNnqxPsv
 sFt+KGhmbbMWwCMsG+PaxD8tOGnuQikwWgEtRPT4Nw3LPsJJitDb6quPQ
 pVtqSKK1mEQTH9PcnlUS+TbqDHkMENCWC2D7TyTgsUmJXo97M8aQnjKYM
 sXWQnjKL9bxrksBvBLpHetnCl3d/IyUQX4jJFDaPH9lqTHrkHXSZXLFqa
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AMh2R+s2
Subject: [Intel-wired-lan] [PATCH iwl-next v3 08/10] ixgbevf: add pseudo
 header split
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
X-Rspamd-Queue-Id: 50DEB20466C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo,intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

From: Natalia Wochtman <natalia.wochtman@intel.com>

Introduce pseudo header split support in the ixgbevf driver, specifically
targeting ixgbe_mac_82599_vf.

On older hardware (e.g. ixgbe_mac_82599_vf), RX DMA write size can only be
limited in 1K increments. This causes issues when attempting to fit
multiple packets per page, as a DMA write may overwrite the
headroom of the next packet.

To address this, introduce pseudo header split support, where the hardware
copies the full L2 header into a dedicated header buffer. This avoids the
need for HR/TR alignment and allows safe skb construction from the header
buffer without risking overwrites.

Given that once packet is too big to fit into a single page, the behaviour
is the same for all supported HW, use pseudo header split only for smaller
packets.

Signed-off-by: Natalia Wochtman <natalia.wochtman@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |   8 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 180 +++++++++++++++---
 2 files changed, 163 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index ea86679e4f81..438328b81855 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -89,6 +89,7 @@ struct ixgbevf_ring {
 		u32 truesize;		/* Rx buffer full size */
 		u32 pending;		/* Sent-not-completed descriptors */
 	};
+	u32 hdr_truesize;		/* Rx header buffer full size */
 	u16 count;			/* amount of descriptors */
 	u16 next_to_clean;
 	u32 next_to_use;
@@ -107,6 +108,8 @@ struct ixgbevf_ring {
 		struct ixgbevf_tx_queue_stats tx_stats;
 		struct ixgbevf_rx_queue_stats rx_stats;
 	};
+	struct libeth_fqe *hdr_fqes;
+	struct page_pool *hdr_pp;
 	struct xdp_rxq_info xdp_rxq;
 	u64 hw_csum_rx_error;
 	u8 __iomem *tail;
@@ -116,6 +119,7 @@ struct ixgbevf_ring {
 	 */
 	u16 reg_idx;
 	int queue_index; /* needed for multiqueue queue management */
+	u32 hdr_buf_len;
 	u32 rx_buf_len;
 	struct libeth_xdp_buff_stash xdp_stash;
 	unsigned int dma_size;		/* length in bytes */
@@ -151,6 +155,8 @@ struct ixgbevf_ring {
 
 #define IXGBEVF_RX_PAGE_LEN(hr)		(ALIGN_DOWN(LIBETH_RX_PAGE_LEN(hr), \
 					 IXGBE_SRRCTL_BSIZEPKT_STEP))
+#define IXGBEVF_RX_SRRCTL_BUF_SIZE(mtu)	(ALIGN((mtu) + LIBETH_RX_LL_LEN, \
+					       IXGBE_SRRCTL_BSIZEPKT_STEP))
 
 #define IXGBE_TX_FLAGS_CSUM		BIT(0)
 #define IXGBE_TX_FLAGS_VLAN		BIT(1)
@@ -349,6 +355,8 @@ enum ixbgevf_state_t {
 	__IXGBEVF_QUEUE_RESET_REQUESTED,
 };
 
+#define IXGBEVF_FLAG_HSPLIT	BIT(0)
+
 enum ixgbevf_boards {
 	board_82599_vf,
 	board_82599_vf_hv,
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 2f3b4954ded8..d00d3b307a8f 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -561,6 +561,12 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
 		.truesize	= rx_ring->truesize,
 		.count		= rx_ring->count,
 	};
+	const struct libeth_fq_fp hdr_fq = {
+		.pp		= rx_ring->hdr_pp,
+		.fqes		= rx_ring->hdr_fqes,
+		.truesize	= rx_ring->hdr_truesize,
+		.count		= rx_ring->count,
+	};
 	u16 ntu = rx_ring->next_to_use;
 
 	/* nothing to do or no valid netdev defined */
@@ -578,6 +584,14 @@ static void ixgbevf_alloc_rx_buffers(struct ixgbevf_ring *rx_ring,
 
 		rx_desc->read.pkt_addr = cpu_to_le64(addr);
 
+		if (hdr_fq.pp) {
+			addr = libeth_rx_alloc(&hdr_fq, ntu);
+			if (addr == DMA_MAPPING_ERROR) {
+				libeth_rx_recycle_slow(fq.fqes[ntu].netmem);
+				break;
+			}
+		}
+
 		rx_desc++;
 		ntu++;
 		if (unlikely(ntu == fq.count)) {
@@ -820,6 +834,32 @@ LIBETH_XDP_DEFINE_FINALIZE(static ixgbevf_xdp_finalize_xdp_napi,
 			   ixgbevf_xdp_flush_tx, ixgbevf_xdp_rs_and_bump);
 LIBETH_XDP_DEFINE_END();
 
+static u32 ixgbevf_rx_hsplit_wa(const struct libeth_fqe *hdr,
+				struct libeth_fqe *buf, u32 data_len)
+{
+	u32 copy = data_len <= L1_CACHE_BYTES ? data_len : ETH_HLEN;
+	struct page *hdr_page, *buf_page;
+	const void *src;
+	void *dst;
+
+	if (unlikely(netmem_is_net_iov(buf->netmem)) ||
+	    !libeth_rx_sync_for_cpu(buf, copy))
+		return 0;
+
+	hdr_page = __netmem_to_page(hdr->netmem);
+	buf_page = __netmem_to_page(buf->netmem);
+
+	dst = page_address(hdr_page) + hdr->offset +
+	      pp_page_to_nmdesc(hdr_page)->pp->p.offset;
+	src = page_address(buf_page) + buf->offset +
+	      pp_page_to_nmdesc(buf_page)->pp->p.offset;
+
+	memcpy(dst, src, LARGEST_ALIGN(copy));
+	buf->offset += copy;
+
+	return copy;
+}
+
 static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 				struct ixgbevf_ring *rx_ring,
 				int budget)
@@ -859,6 +899,23 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
 		rmb();
 
 		rx_buffer = &rx_ring->rx_fqes[rx_ring->next_to_clean];
+
+		if (unlikely(rx_ring->hdr_pp)) {
+			struct libeth_fqe *hdr_buff;
+			unsigned int hdr_size = 0;
+
+			hdr_buff = &rx_ring->hdr_fqes[rx_ring->next_to_clean];
+
+			if (!xdp->data) {
+				hdr_size = ixgbevf_rx_hsplit_wa(hdr_buff,
+								rx_buffer,
+								size);
+				size -= hdr_size ? : size;
+			}
+
+			libeth_xdp_process_buff(xdp, hdr_buff, hdr_size);
+		}
+
 		libeth_xdp_process_buff(xdp, rx_buffer, size);
 
 		cleaned_count++;
@@ -1598,6 +1655,90 @@ static void ixgbevf_setup_vfmrqc(struct ixgbevf_adapter *adapter)
 	IXGBE_WRITE_REG(hw, IXGBE_VFMRQC, vfmrqc);
 }
 
+static void ixgbevf_rx_destroy_pp(struct ixgbevf_ring *rx_ring)
+{
+	struct libeth_fq fq = {
+		.pp	= rx_ring->pp,
+		.fqes	= rx_ring->rx_fqes,
+	};
+
+	libeth_rx_fq_destroy(&fq);
+	rx_ring->rx_fqes = NULL;
+	rx_ring->pp = NULL;
+
+	if (!rx_ring->hdr_pp)
+		return;
+
+	fq = (struct libeth_fq) {
+		.pp	= rx_ring->hdr_pp,
+		.fqes	= rx_ring->hdr_fqes,
+	};
+
+	libeth_rx_fq_destroy(&fq);
+	rx_ring->hdr_fqes = NULL;
+	rx_ring->hdr_pp = NULL;
+}
+
+static int ixgbevf_rx_create_pp(struct ixgbevf_ring *rx_ring)
+{
+	u32 adapter_flags = rx_ring->q_vector->adapter->flags;
+	struct libeth_fq fq = {
+		.count		= rx_ring->count,
+		.nid		= NUMA_NO_NODE,
+		.type		= LIBETH_FQE_MTU,
+		.xdp		= !!rx_ring->xdp_prog,
+		.idx		= rx_ring->queue_index,
+		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
+						      LIBETH_XDP_HEADROOM :
+						      LIBETH_SKB_HEADROOM),
+	};
+	u32 frame_size;
+	int ret;
+
+	/* Some HW requires DMA write sizes to be aligned to 1K,
+	 * which warrants fake header split usage, but this is
+	 * not an issue if the frame size is at its maximum of 3K
+	 */
+	frame_size =
+		IXGBEVF_RX_SRRCTL_BUF_SIZE(READ_ONCE(rx_ring->netdev->mtu));
+	fq.hsplit = (adapter_flags & IXGBEVF_FLAG_HSPLIT) &&
+		    frame_size < fq.buf_len;
+	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
+	if (ret)
+		return ret;
+
+	rx_ring->pp = fq.pp;
+	rx_ring->rx_fqes = fq.fqes;
+	rx_ring->truesize = fq.truesize;
+	rx_ring->rx_buf_len = fq.buf_len;
+
+	if (!fq.hsplit)
+		return 0;
+
+	fq = (struct libeth_fq) {
+		.count		= rx_ring->count,
+		.nid		= NUMA_NO_NODE,
+		.type		= LIBETH_FQE_HDR,
+		.xdp		= !!rx_ring->xdp_prog,
+		.idx		= rx_ring->queue_index,
+	};
+
+	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
+	if (ret)
+		goto err;
+
+	rx_ring->hdr_pp = fq.pp;
+	rx_ring->hdr_fqes = fq.fqes;
+	rx_ring->hdr_truesize = fq.truesize;
+	rx_ring->hdr_buf_len = fq.buf_len;
+
+	return 0;
+
+err:
+	ixgbevf_rx_destroy_pp(rx_ring);
+	return ret;
+}
+
 static void ixgbevf_configure_rx_ring(struct ixgbevf_adapter *adapter,
 				      struct ixgbevf_ring *ring)
 {
@@ -2718,6 +2859,9 @@ static int ixgbevf_sw_init(struct ixgbevf_adapter *adapter)
 			goto out;
 	}
 
+	if (adapter->hw.mac.type == ixgbe_mac_82599_vf)
+		adapter->flags |= IXGBEVF_FLAG_HSPLIT;
+
 	/* assume legacy case in which PF would only give VF 2 queues */
 	hw->mac.max_tx_queues = 2;
 	hw->mac.max_rx_queues = 2;
@@ -3152,43 +3296,29 @@ static int ixgbevf_setup_all_tx_resources(struct ixgbevf_adapter *adapter)
 }
 
 /**
- * ixgbevf_setup_rx_resources - allocate Rx resources (Descriptors)
+ * ixgbevf_setup_rx_resources - allocate Rx resources
  * @adapter: board private structure
  * @rx_ring: Rx descriptor ring (for a specific queue) to setup
  *
- * Returns 0 on success, negative on failure
+ * Returns: 0 on success, negative on failure.
  **/
 int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
 			       struct ixgbevf_ring *rx_ring)
 {
-	struct libeth_fq fq = {
-		.count		= rx_ring->count,
-		.nid		= NUMA_NO_NODE,
-		.type		= LIBETH_FQE_MTU,
-		.xdp		= !!rx_ring->xdp_prog,
-		.idx		= rx_ring->queue_index,
-		.buf_len	= IXGBEVF_RX_PAGE_LEN(rx_ring->xdp_prog ?
-						      LIBETH_XDP_HEADROOM :
-						      LIBETH_SKB_HEADROOM),
-	};
 	int ret;
 
-	ret = libeth_rx_fq_create(&fq, &rx_ring->q_vector->napi);
+	ret = ixgbevf_rx_create_pp(rx_ring);
 	if (ret)
 		return ret;
 
-	rx_ring->pp = fq.pp;
-	rx_ring->rx_fqes = fq.fqes;
-	rx_ring->truesize = fq.truesize;
-	rx_ring->rx_buf_len = fq.buf_len;
-
 	u64_stats_init(&rx_ring->syncp);
 
 	/* Round up to nearest 4K */
 	rx_ring->dma_size = rx_ring->count * sizeof(union ixgbe_adv_rx_desc);
 	rx_ring->dma_size = ALIGN(rx_ring->dma_size, 4096);
 
-	rx_ring->desc = dma_alloc_coherent(fq.pp->p.dev, rx_ring->dma_size,
+	rx_ring->desc = dma_alloc_coherent(rx_ring->pp->p.dev,
+					   rx_ring->dma_size,
 					   &rx_ring->dma, GFP_KERNEL);
 
 	if (!rx_ring->desc) {
@@ -3202,16 +3332,15 @@ int ixgbevf_setup_rx_resources(struct ixgbevf_adapter *adapter,
 	if (ret)
 		goto err;
 
-	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, fq.pp);
+	xdp_rxq_info_attach_page_pool(&rx_ring->xdp_rxq, rx_ring->pp);
 
 	rx_ring->xdp_prog = adapter->xdp_prog;
 
 	return 0;
 err:
-	libeth_rx_fq_destroy(&fq);
-	rx_ring->rx_fqes = NULL;
-	rx_ring->pp = NULL;
+	ixgbevf_rx_destroy_pp(rx_ring);
 	dev_err(rx_ring->dev, "Unable to allocate memory for the Rx descriptor ring\n");
+
 	return ret;
 }
 
@@ -4140,10 +4269,11 @@ static int ixgbevf_xdp_setup(struct net_device *dev, struct bpf_prog *prog,
 	struct bpf_prog *old_prog;
 	bool requires_mbuf;
 
-	requires_mbuf = frame_size > IXGBEVF_RX_PAGE_LEN(LIBETH_XDP_HEADROOM);
+	requires_mbuf = frame_size > IXGBEVF_RX_PAGE_LEN(LIBETH_XDP_HEADROOM) ||
+			adapter->flags & IXGBEVF_FLAG_HSPLIT;
 	if (prog && !prog->aux->xdp_has_frags && requires_mbuf) {
 		NL_SET_ERR_MSG_MOD(extack,
-				   "Configured MTU requires non-linear frames and XDP prog does not support frags");
+				   "Configured MTU or HW limitations require non-linear frames and XDP prog does not support frags");
 		return -EOPNOTSUPP;
 	}
 
-- 
2.52.0


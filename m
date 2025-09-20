Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 80880B8C837
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Sep 2025 14:28:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FF6C41605;
	Sat, 20 Sep 2025 12:28:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SU2_p8afd9Rp; Sat, 20 Sep 2025 12:28:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90EA941607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758371327;
	bh=hXX2BesnCjU18CgIcdPkkr6sZvfIQ9h/A0ztiQNMOWQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5IsUUbya7toGN1u/gR4KFkLJzqtDMLDfJHwH0PGTMs5+6gC3GU04pA5g29Z61q+k8
	 tGUk7DIY5YzVVXiAO8FSWsJAZO8kS82vsoSpubgxhjym4h91UomPOiEftimRWW0Lr0
	 hKgxiWSOcBN0bb9RiIrnbNP1KUNsB3yf8gxgnitN1he0QtnmdmEIbaeZMoGEJKuEC+
	 bNsB1MTn7qmkmcyX1yvkMX4WkNqmSajxGr7wvlzcntqoATMgsmlV0fKloE9oVvQyCA
	 gIQstJ/OFix51PJm6kQ8vb148mqO+rJTmHcsiOKMH3poockfmnag5nLq7ZH7/cr0LE
	 7WGVVBH2hw1yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90EA941607;
	Sat, 20 Sep 2025 12:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7E423219
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:28:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64C9A615D9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:28:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xPcQq50eISet for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Sep 2025 12:28:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B12536150B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12536150B
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B12536150B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Sep 2025 12:28:45 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 1EECF43E0F;
 Sat, 20 Sep 2025 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7543EC4CEEB;
 Sat, 20 Sep 2025 12:21:26 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Sat, 20 Sep 2025 14:20:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250920-xdp-meta-rxcksum-v1-4-35e76a8a84e7@kernel.org>
References: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
In-Reply-To: <20250920-xdp-meta-rxcksum-v1-0-35e76a8a84e7@kernel.org>
To: Donald Hunter <donald.hunter@gmail.com>, 
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, 
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Andrii Nakryiko <andrii@kernel.org>, 
 Martin KaFai Lau <martin.lau@linux.dev>, 
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>, 
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, 
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, 
 Shuah Khan <shuah@kernel.org>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758370887;
 bh=tMPCeHLV0AZkIwSaiKQEVLhP5PNGSU5qyZ7rqwvWdR0=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=JvgAfJgqoXR4f+7AnhJ5rnDnDJpzkj99+jZeH18UWqETvCqPrt9fHtxPTVzKO9R3p
 W1ooEhuYvt7HxvDY8qwD5DFcQzu8KfBqzGHMt4lkhVoR0sjmDIzEL1lwS1Cdy1wu2z
 /zUOVUOBT99BliRoUFsCvACKbtMlh2Qkf6dWNcDNkZu+JHorOybxf7t/aHhtOcX5UA
 PgbHdM7v9qP55NJzLT5zbfqiSYQCxo8+ld61nyUri66tQKsL1w/aWKvMbAVw6WQuSQ
 txYn+lkKf9oai5wUm6bfyeIyaT8KoKs1yrIXuP55cdtDranr8w8v6hWKKDXoaXbdjB
 Kii7yMmFeZvng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=JvgAfJgq
Subject: [Intel-wired-lan] [PATCH RFC bpf-next 4/6] net: ice: Add
 xmo_rx_checksum callback
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

Implement xmo_rx_checksum callback in ice driver to report RX checksum
result to the eBPF program bounded to the NIC.

Tested-by: Jesper Dangaard Brouer <hawk@kernel.org>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_base.c     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 82 +++++++++++++++++++++++++++
 3 files changed, 84 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index c5da8e9cc0a0e5551b340e70628813999059bcfe..e8ec419bdc98cb1f01e3c088698b0c4c0f97748f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -591,6 +591,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
 		}
 	}
 
+	ring->pkt_ctx.rxq_flags = ring->flags;
 	xdp_init_buff(&ring->xdp, ice_get_frame_sz(ring), &ring->xdp_rxq);
 	ring->xdp.data = NULL;
 	ring->xdp_ext.pkt_ctx = &ring->pkt_ctx;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 2fd8e78178a271c15fc054ef553bd509b1c8f8f3..96a2bb79e5e95fa0b9c6287eb9769bdecf47dec1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -260,6 +260,7 @@ enum ice_rx_dtype {
 struct ice_pkt_ctx {
 	u64 cached_phctime;
 	__be16 vlan_proto;
+	u8 rxq_flags;
 };
 
 struct ice_xdp_buff {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index 45cfaabc41cbeb9b119a0e95547e012e0df1e188..5327b0389ec1a3708a469fa9986a1e565b20ecf7 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -555,6 +555,87 @@ static int ice_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash,
 	return 0;
 }
 
+/**
+ * ice_xdp_rx_checksum - RX checksum XDP hint handler
+ * @ctx: XDP buff pointer
+ * @ip_summed: RX checksum result destination address
+ * @cksum_meta: XDP RX checksum metadata destination address
+ *
+ * Copy RX checksum result (if available) and its metadata to the
+ * destination address.
+ */
+static int ice_xdp_rx_checksum(const struct xdp_md *ctx, u8 *ip_summed,
+			       u32 *cksum_meta)
+{
+	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	const union ice_32b_rx_flex_desc *rx_desc = xdp_ext->eop_desc;
+	u16 rx_status0, rx_status1, ptype = ice_get_ptype(rx_desc);
+	struct libeth_rx_pt decoded = libie_rx_pt_parse(ptype);
+	bool ipv4, ipv6;
+
+	if (!libeth_rx_pt_has_checksum(xdp_ext->xdp_buff.rxq->dev, decoded))
+		goto checksum_none;
+
+	rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
+	rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
+	if ((xdp_ext->pkt_ctx->rxq_flags & ICE_RX_FLAGS_RING_GCS) &&
+	    rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
+	    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
+	     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
+		const struct ice_32b_rx_flex_desc_nic *desc;
+		u16 csum;
+
+		desc = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
+		*ip_summed = CHECKSUM_COMPLETE;
+		csum = (__force u16)desc->raw_csum;
+		*cksum_meta = csum_unfold((__force __sum16)swab16(csum));
+		return 0;
+	}
+
+	/* check if HW has decoded the packet and checksum */
+	if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
+		goto checksum_none;
+
+	ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
+	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S))))
+		goto checksum_none;
+
+	if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S))))
+		goto checksum_none;
+
+	ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
+	if (ipv6 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
+		goto checksum_none;
+
+	/* check for L4 errors and handle packets that were not able to be
+	 * checksummed due to arrival speed
+	 */
+	if (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
+		goto checksum_none;
+
+	/* check for outer UDP checksum error in tunneled packets */
+	if ((rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_NAT_S)) &&
+	    (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S)))
+		goto checksum_none;
+
+	/* If there is an outer header present that might contain a checksum
+	 * we need to bump the checksum level by 1 to reflect the fact that
+	 * we are indicating we validated the inner checksum.
+	 */
+	if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
+		*cksum_meta = 1;
+
+	*ip_summed = CHECKSUM_UNNECESSARY;
+	return 0;
+
+checksum_none:
+	*ip_summed = CHECKSUM_NONE;
+	*cksum_meta = 0;
+
+	return 0;
+}
+
 /**
  * ice_xdp_rx_vlan_tag - VLAN tag XDP hint handler
  * @ctx: XDP buff pointer
@@ -584,4 +665,5 @@ const struct xdp_metadata_ops ice_xdp_md_ops = {
 	.xmo_rx_timestamp		= ice_xdp_rx_hw_ts,
 	.xmo_rx_hash			= ice_xdp_rx_hash,
 	.xmo_rx_vlan_tag		= ice_xdp_rx_vlan_tag,
+	.xmo_rx_checksum		= ice_xdp_rx_checksum,
 };

-- 
2.51.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0B797DDFD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2024 18:53:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AACB940939;
	Sat, 21 Sep 2024 16:53:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 37PCQlJZ87bz; Sat, 21 Sep 2024 16:53:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A30CB4064B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726937600;
	bh=E8x7wlQNHT+KDlk0X8Xbi+HpU0S/SVjNfgmeaAxGY7s=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XXUs6Ao4DLQxDgCx8zj4Yhb4XIH01+bQxiuE7dWxJ569RHJB1Zkt4nTqE8foQcgMA
	 PiYH782Sr7ZIBeur6O8HchQIeiadS8+GUpZgxcVcGlnbrLrY67HoZLU33wEclGQA4P
	 XVbshDKwlfloyTUHRuwiZvFaSMb/1IH1R97Zxv5ftO95GLEllEbTs7mwakMHNbtpmv
	 U7hRtSOxL5uloUj2bC+YVBn0NRMVKvPLkr9lpzbLU9aSUrmhzr7+SYMItoOlCy4NkK
	 pAwJN4uqYo8tOYgp2E8TCsGnZAsC8r/b82rTLD4BcXun/XasU7az0R7KxvKSxdqBh2
	 UjuBcLdyjdpnA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A30CB4064B;
	Sat, 21 Sep 2024 16:53:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1FF1BF373
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86E854064B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N0mV9n6sTiT5 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2024 16:53:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B7354074B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B7354074B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B7354074B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 894955C503A;
 Sat, 21 Sep 2024 16:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE731C4CEC2;
 Sat, 21 Sep 2024 16:53:14 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 21 Sep 2024 18:52:59 +0200
Message-ID: <26256149e5331a69ba9574907ac570a7d2d2e382.1726935917.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <cover.1726935917.git.lorenzo@kernel.org>
References: <cover.1726935917.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726937595;
 bh=3jw9I0lwiO4TTcm1AqiwzBTLqWxZoiHdGD9kSgY0iRA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j0X8UTg+dz4aJfP1I6iIW7aF1XJpGoSGCwGaAeJTO5ai5LeUVOzuRBz92hrC1ul4n
 vhna9qluD4JeHV8sO7y6An8tK2s4jJCXSkvCusq7cSaOoEwfXOp6xItbaE8MeS9m1V
 mspRJ1n12fJgRMfE3Ati8nRHMlQNbxo9C8rdrwTs4M+8f3hG9+BiDKwAC5jvklwa3a
 IMHLqb2hZtv5ugwJ8Y2nfP4HRUr1OmufHjs/FNNPSGWWtnJjHJtpNbUOwUOW7KNLKp
 V/CEUThSY6Bex1C3eaMEm6AvHE0nd8LwRxgdFNWJU/b1cJbhsMFW7Tep6sDb+LTusA
 VUWSEHFgc3Kzg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j0X8UTg+
Subject: [Intel-wired-lan] [RFC bpf-next 3/4] net: xdp: Update rx_vlan of
 xdp_rx_meta struct running xmo_rx_vlan_tag callback
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
Cc: toke@toke.dk, mst@redhat.com, jasowang@redhat.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 hawk@kernel.org, alexandre.torgue@foss.st.com, netdev@vger.kernel.org,
 tariqt@nvidia.com, aleksander.lobakin@intel.com, mcoquelin.stm32@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set vlan_proto and vlan_tci in xdp_rx_meta struct of xdp_buff/xdp_frame
according to the value reported by the hw.
Update the xmo_rx_vlan_tag callback of xdp_metadata_ops for the
following drivers:
- ice
- mlx5
- veth
Set rx vlan_{prot, tci} reported by the hw converting the xdp_frame into
a sk_buff.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c    |  3 +++
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c |  3 +++
 drivers/net/veth.c                               |  3 +++
 include/net/xdp.h                                | 14 ++++++++++++++
 net/core/xdp.c                                   |  3 +++
 5 files changed, 26 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index e4b051a8d99c7..74dabe5b0c35c 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -545,6 +545,7 @@ static int ice_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 			       u16 *vlan_tci)
 {
 	const struct ice_xdp_buff *xdp_ext = (void *)ctx;
+	struct xdp_buff *xdp = (void *)&(xdp_ext->xdp_buff);
 
 	*vlan_proto = xdp_ext->pkt_ctx->vlan_proto;
 	if (!*vlan_proto)
@@ -554,6 +555,8 @@ static int ice_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 	if (!*vlan_tci)
 		return -ENODATA;
 
+	xdp_set_rx_meta_vlan(xdp, *vlan_proto, *vlan_tci);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index 92fb98397751a..d3b7eee031470 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -262,6 +262,7 @@ static int mlx5e_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 				 u16 *vlan_tci)
 {
 	const struct mlx5e_xdp_buff *_ctx = (void *)ctx;
+	struct xdp_buff *xdp = (void *)&(_ctx->xdp);
 	const struct mlx5_cqe64 *cqe = _ctx->cqe;
 
 	if (!cqe_has_vlan(cqe))
@@ -269,6 +270,8 @@ static int mlx5e_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 
 	*vlan_proto = htons(ETH_P_8021Q);
 	*vlan_tci = be16_to_cpu(cqe->vlan_info);
+	xdp_set_rx_meta_vlan(xdp, *vlan_proto, *vlan_tci);
+
 	return 0;
 }
 
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index cc8e90d330456..3a4b81104a6bd 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1642,6 +1642,7 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 				u16 *vlan_tci)
 {
 	const struct veth_xdp_buff *_ctx = (void *)ctx;
+	struct xdp_buff *xdp = (void *)&(_ctx->xdp);
 	const struct sk_buff *skb = _ctx->skb;
 	int err;
 
@@ -1653,6 +1654,8 @@ static int veth_xdp_rx_vlan_tag(const struct xdp_md *ctx, __be16 *vlan_proto,
 		return err;
 
 	*vlan_proto = skb->vlan_proto;
+	xdp_set_rx_meta_vlan(xdp, skb->vlan_proto, *vlan_tci);
+
 	return err;
 }
 
diff --git a/include/net/xdp.h b/include/net/xdp.h
index e1c344eb7e686..2ffaad806b9ed 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -219,6 +219,11 @@ static __always_inline bool xdp_frame_has_rx_meta_hash(struct xdp_frame *frame)
 	return !!(frame->flags & XDP_FLAGS_META_RX_HASH);
 }
 
+static __always_inline bool xdp_frame_has_rx_meta_vlan(struct xdp_frame *frame)
+{
+	return !!(frame->flags & XDP_FLAGS_META_RX_VLAN);
+}
+
 #define XDP_BULK_QUEUE_SIZE	16
 struct xdp_frame_bulk {
 	int count;
@@ -518,6 +523,15 @@ xdp_set_rx_meta_hash(struct xdp_buff *xdp, u32 hash,
 	xdp->flags |= XDP_FLAGS_META_RX_HASH;
 }
 
+static __always_inline void
+xdp_set_rx_meta_vlan(struct xdp_buff *xdp, __be16 vlan_proto,
+		     u16 vlan_tci)
+{
+	xdp->rx_meta.vlan.proto = vlan_proto;
+	xdp->rx_meta.vlan.tci = vlan_tci;
+	xdp->flags |= XDP_FLAGS_META_RX_VLAN;
+}
+
 #ifdef CONFIG_NET
 u32 bpf_xdp_metadata_kfunc_id(int id);
 bool bpf_dev_bound_kfunc_id(u32 btf_id);
diff --git a/net/core/xdp.c b/net/core/xdp.c
index e2f4d01cf84cf..84d6b134f8e97 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -652,6 +652,9 @@ struct sk_buff *__xdp_build_skb_from_frame(struct xdp_frame *xdpf,
 	skb->protocol = eth_type_trans(skb, dev);
 
 	xdp_set_skb_rx_hash_from_meta(xdpf, skb);
+	if (xdp_frame_has_rx_meta_vlan(xdpf))
+		__vlan_hwaccel_put_tag(skb, xdpf->rx_meta.vlan.proto,
+				       xdpf->rx_meta.vlan.tci);
 
 	/* Optional SKB info, currently missing:
 	 * - HW checksum info		(skb->ip_summed)
-- 
2.46.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 586D797DDFA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Sep 2024 18:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E23B40679;
	Sat, 21 Sep 2024 16:53:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o6fWuQQt82rC; Sat, 21 Sep 2024 16:53:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 13C0D40672
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726937595;
	bh=R2j7ow6x5+86gY3cUf6G5NOxtJaUORVrYYb/W8aw3Y0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZldPS9YM6ZR9HBbbfRTiZmb7Fa+4p6MuKYOSekq2ge8E1ODt4OAkuhuHqPDU6po6l
	 qd/WctWgqMFnMnIQEIBCrmqM55PAe8oUkUef+zDr7ZwTUvSQIEv7xLxXqb1w6b8GaR
	 PBodVO5zb1SjTXhpuQyzGfa2OTniOqD4yah0hAbgMgUxtYAZ6tIKLIbOPJfk9sOy4M
	 ASDMhCN8/6QN0CnwEoSRjqXSN9dtQr3zz5fkPwhr1pSwthV3ijl07rrTBNb6tOB9RD
	 zDgQ6/NF425jwY1GVyFSrDr8Glh/tp+IYmoyQraMfaoe1sa4Sv5WFd0WNhNHkrpQAi
	 +N2vddbTZWS6w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13C0D40672;
	Sat, 21 Sep 2024 16:53:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 068FF1BF373
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4AF440672
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SVlyLivP2hth for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Sep 2024 16:53:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=lorenzo@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BC110405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC110405AB
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BC110405AB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Sep 2024 16:53:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 302285C5712;
 Sat, 21 Sep 2024 16:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C12C4CEC2;
 Sat, 21 Sep 2024 16:53:09 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 21 Sep 2024 18:52:57 +0200
Message-ID: <0e22c103ecafc5c79c6a27107348765913647afa.1726935917.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <cover.1726935917.git.lorenzo@kernel.org>
References: <cover.1726935917.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726937589;
 bh=ySUc9WSYN+irTtZy0COsP164L2CZaBehasfOZt7YPEc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MTRNUrss/XvTAGiHVye1+lkmMl/JhzE5NDleFz32ZSOYX/4+hwvbG64f5CfQwxZqt
 yXDQc/zVoVkH5PsJ0zP/4EZ6sidAUpHLW6ngeCXitVI+/4Cu2l5f/XbppsX8gYWGQ/
 OBTjyuFgXwIkDMTnDHD6dmu9P82TBm3/4UjcYUOijbO35xjHRp+zO8OUIiEhU34OT1
 PTv1HO+ml8E9B6f8atHHrlwkNdjW6D8V4PaIRKWURSNVhL2X7xijTFfg8JJsMjemS5
 cbyNcO43H1xweWC7X7z24+YQQi9XxwgrW7fJ232JGE4+qChhzY/xxlPvnLTSWT/oc1
 d9I9tL+rfR6GA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MTRNUrss
Subject: [Intel-wired-lan] [RFC bpf-next 1/4] net: xdp: Add xdp_rx_meta
 structure
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

Introduce xdp_rx_meta structure as a container to store the already
supported xdp rx hints (rx_hash and rx_vlan) in the xdp_buff and
xdp_frame structures (the rx_timestamp will be added to the skb_shared_info
area). Rely on the xdp_buff/xdp_frame flag field to indicate what kind of
rx hints have been populated by the driver. This is a preliminary patch to
preserve xdp rx hints running XDP_REDIRECT.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 include/net/xdp.h | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/include/net/xdp.h b/include/net/xdp.h
index e6770dd40c917..5e08b58a2a10f 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -70,12 +70,27 @@ struct xdp_txq_info {
 	struct net_device *dev;
 };
 
+struct xdp_rx_meta {
+	struct {
+		u32 val;
+		u32 type;
+	} hash;
+	struct {
+		__be16 proto;
+		u16 tci;
+	} vlan;
+};
+
 enum xdp_buff_flags {
 	XDP_FLAGS_HAS_FRAGS		= BIT(0), /* non-linear xdp buff */
 	XDP_FLAGS_FRAGS_PF_MEMALLOC	= BIT(1), /* xdp paged memory is under
 						   * pressure
 						   */
+	XDP_FLAGS_META_RX_HASH		= BIT(2), /* hw rx hash */
+	XDP_FLAGS_META_RX_VLAN		= BIT(3), /* hw rx vlan */
 };
+#define XDP_FLAGS_META_RX		(XDP_FLAGS_META_RX_HASH |	\
+					 XDP_FLAGS_META_RX_VLAN)
 
 struct xdp_buff {
 	void *data;
@@ -86,6 +101,7 @@ struct xdp_buff {
 	struct xdp_txq_info *txq;
 	u32 frame_sz; /* frame size to deduce data_hard_end/reserved tailroom*/
 	u32 flags; /* supported values defined in xdp_buff_flags */
+	struct xdp_rx_meta rx_meta; /* rx hw metadata */
 };
 
 static __always_inline bool xdp_buff_has_frags(struct xdp_buff *xdp)
@@ -113,6 +129,11 @@ static __always_inline void xdp_buff_set_frag_pfmemalloc(struct xdp_buff *xdp)
 	xdp->flags |= XDP_FLAGS_FRAGS_PF_MEMALLOC;
 }
 
+static __always_inline bool xdp_buff_has_rx_meta(struct xdp_buff *xdp)
+{
+	return !!(xdp->flags & XDP_FLAGS_META_RX);
+}
+
 static __always_inline void
 xdp_init_buff(struct xdp_buff *xdp, u32 frame_sz, struct xdp_rxq_info *rxq)
 {
@@ -175,6 +196,7 @@ struct xdp_frame {
 	struct net_device *dev_rx; /* used by cpumap */
 	u32 frame_sz;
 	u32 flags; /* supported values defined in xdp_buff_flags */
+	struct xdp_rx_meta rx_meta; /* rx hw metadata */
 };
 
 static __always_inline bool xdp_frame_has_frags(struct xdp_frame *frame)
@@ -187,6 +209,11 @@ static __always_inline bool xdp_frame_is_frag_pfmemalloc(struct xdp_frame *frame
 	return !!(frame->flags & XDP_FLAGS_FRAGS_PF_MEMALLOC);
 }
 
+static __always_inline bool xdp_frame_has_rx_meta(struct xdp_frame *frame)
+{
+	return !!(frame->flags & XDP_FLAGS_META_RX);
+}
+
 #define XDP_BULK_QUEUE_SIZE	16
 struct xdp_frame_bulk {
 	int count;
@@ -257,6 +284,8 @@ void xdp_convert_frame_to_buff(struct xdp_frame *frame, struct xdp_buff *xdp)
 	xdp->data_meta = frame->data - frame->metasize;
 	xdp->frame_sz = frame->frame_sz;
 	xdp->flags = frame->flags;
+	if (xdp_frame_has_rx_meta(frame))
+		xdp->rx_meta = frame->rx_meta;
 }
 
 static inline
@@ -284,6 +313,8 @@ int xdp_update_frame_from_buff(struct xdp_buff *xdp,
 	xdp_frame->metasize = metasize;
 	xdp_frame->frame_sz = xdp->frame_sz;
 	xdp_frame->flags = xdp->flags;
+	if (xdp_buff_has_rx_meta(xdp))
+		xdp_frame->rx_meta = xdp->rx_meta;
 
 	return 0;
 }
-- 
2.46.1


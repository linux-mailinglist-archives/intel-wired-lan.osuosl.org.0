Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E10C3A8A576
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 19:29:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9002F611E0;
	Tue, 15 Apr 2025 17:29:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JgZ2HhJCvTKS; Tue, 15 Apr 2025 17:29:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F670611C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744738182;
	bh=CG9kB1vYFU5MVps6MOWWLDJejUwB0iiGBl6yUqhV5Zk=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=USrbOvOi4wj4gl+xjoGRVxCs4grRi2YQ6WR1eWxXeMPJFNPv/x4n6zNgcKm0Q4Cx/
	 H2ZxaCriVSlflasV4d2WGLZ+fr4eL6AU4z9d2ZnDeh50fVCwK34UJhg7DQHVVFaUCH
	 w7y0IqlI/ueXykVAXp4uCgeVTq9eE3Ye1QgntGVQvNymhIqUSyRoo8NaHN9mgK3QVO
	 cu4O+Z/1DCYfhexWypN6UuqW+k7EpnLwWxlButTFmMwv5GR0HFe8G2Jk3JYzbHOZPf
	 vKGZ/FYKjyHrD4HXhiqNxBYdjSZDLiWaCnz0Lw7ugQLgol8JFOXGXwNY7Dn3Fd77c9
	 vevpfDjDjYK1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F670611C0;
	Tue, 15 Apr 2025 17:29:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0ABE2200
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE462405EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gudRUZ_Verr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 17:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 260F5400C5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 260F5400C5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 260F5400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 17:29:40 +0000 (UTC)
X-CSE-ConnectionGUID: in7QZiigRx+4h9extXXh1w==
X-CSE-MsgGUID: ebtIAZpbRVugkJc2GG88Ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46275769"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46275769"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 10:29:40 -0700
X-CSE-ConnectionGUID: TihOLHW3Tme1zl764xGDlg==
X-CSE-MsgGUID: jOCW74qxTw6nIlb935hAPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="130729817"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa010.fm.intel.com with ESMTP; 15 Apr 2025 10:29:36 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 bpf@vger.kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 15 Apr 2025 19:28:20 +0200
Message-ID: <20250415172825.3731091-12-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
References: <20250415172825.3731091-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744738180; x=1776274180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7ne9x5DYOXVhNLNI7e4lJs8pi9J798b2PE8fgyt3Mh4=;
 b=HxFAI0/F6TckEK021Bg8GHQeeuwG1SnW3+CMJH9wrxqxgXch18QCzAcs
 s7/O8FJOy7RjFrrzWR7ihLXf4JB3ynm7GxmFxMWKQliR2cmMm+PckZVb4
 Aj9X/B11GGeBYcIjhWxE7T3XvT5uIpWrwy4r8sh1ghyYe4a+F2tf0smTv
 xlL4xP3aVrunhZ7upaCic03ZsxkjBhon6aFX9CX54S7gBD9hRtyUJR91P
 mmB1XTj7v2PTFGzCpCjSK8RZMurGV/K/j6JhxzLGiOIHUeDc0PRfGugE5
 eYpU/vx4CR/1fZhJe8zCVhrmIvjFyV6XFriLihVIZCJcrQiJS3TeBwi/I
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HxFAI0/F
Subject: [Intel-wired-lan] [PATCH iwl-next 11/16] libeth: xdp: add RSS hash
 hint and XDP features setup helpers
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

End the XDP section by adding helpers to setup XDP features, flipping
.ndo_xdp_xmit() support at runtime (in case when it's not always on),
and calculating the queue clean/refill threshold.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/libeth/xdp.h                | 90 +++++++++++++++++++++++++
 drivers/net/ethernet/intel/libeth/xdp.c | 69 +++++++++++++++++++
 2 files changed, 159 insertions(+)

diff --git a/include/net/libeth/xdp.h b/include/net/libeth/xdp.h
index 643b0a8acab3..f0b1160bee51 100644
--- a/include/net/libeth/xdp.h
+++ b/include/net/libeth/xdp.h
@@ -1624,6 +1624,51 @@ void name(struct libeth_xdp_tx_bulk *bq)				      \
 
 #define LIBETH_XDP_DEFINE_END()		__diag_pop()
 
+/* XMO */
+
+/**
+ * libeth_xdp_buff_to_rq - get RQ pointer from an XDP buffer pointer
+ * @xdp: &libeth_xdp_buff corresponding to the queue
+ * @type: typeof() of the driver Rx queue structure
+ * @member: name of &xdp_rxq_info inside @type
+ *
+ * Often times, pointer to the RQ is needed when reading/filling metadata from
+ * HW descriptors. The helper can be used to quickly jump from an XDP buffer
+ * to the queue corresponding to its &xdp_rxq_info without introducing
+ * additional fields (&libeth_xdp_buff is precisely 1 cacheline long on x64).
+ */
+#define libeth_xdp_buff_to_rq(xdp, type, member)			      \
+	container_of_const((xdp)->base.rxq, type, member)
+
+/**
+ * libeth_xdpmo_rx_hash - convert &libeth_rx_pt to an XDP RSS hash metadata
+ * @hash: pointer to the variable to write the hash to
+ * @rss_type: pointer to the variable to write the hash type to
+ * @val: hash value from the HW descriptor
+ * @pt: libeth parsed packet type
+ *
+ * Handle zeroed/non-available hash and convert libeth parsed packet type to
+ * the corresponding XDP RSS hash type. To be called at the end of
+ * xdp_metadata_ops idpf_xdpmo::xmo_rx_hash() implementation.
+ * Note that if the driver doesn't use a constant packet type lookup table but
+ * generates it at runtime, it must call libeth_rx_pt_gen_hash_type(pt) to
+ * generate XDP RSS hash type for each packet type.
+ *
+ * Return: 0 on success, -ENODATA when the hash is not available.
+ */
+static inline int libeth_xdpmo_rx_hash(u32 *hash,
+				       enum xdp_rss_hash_type *rss_type,
+				       u32 val, struct libeth_rx_pt pt)
+{
+	if (unlikely(!val))
+		return -ENODATA;
+
+	*hash = val;
+	*rss_type = pt.hash_type;
+
+	return 0;
+}
+
 /* Tx buffer completion */
 
 void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
@@ -1690,4 +1735,49 @@ static inline void libeth_xdp_complete_tx(struct libeth_sqe *sqe,
 	__libeth_xdp_complete_tx(sqe, cp, libeth_xdp_return_buff_bulk);
 }
 
+/* Misc */
+
+u32 libeth_xdp_queue_threshold(u32 count);
+
+void __libeth_xdp_set_features(struct net_device *dev,
+			       const struct xdp_metadata_ops *xmo);
+void libeth_xdp_set_redirect(struct net_device *dev, bool enable);
+
+/**
+ * libeth_xdp_set_features - set XDP features for netdev
+ * @dev: &net_device to configure
+ * @...: optional params, see __libeth_xdp_set_features()
+ *
+ * Set all the features libeth_xdp supports, including .ndo_xdp_xmit(). That
+ * said, it should be used only when XDPSQs are always available regardless
+ * of whether an XDP prog is attached to @dev.
+ */
+#define libeth_xdp_set_features(dev, ...)				      \
+	CONCATENATE(__libeth_xdp_feat,					      \
+		    COUNT_ARGS(__VA_ARGS__))(dev, ##__VA_ARGS__)
+
+#define __libeth_xdp_feat0(dev)						      \
+	__libeth_xdp_set_features(dev, NULL)
+#define __libeth_xdp_feat1(dev, xmo)					      \
+	__libeth_xdp_set_features(dev, xmo)
+
+/**
+ * libeth_xdp_set_features_noredir - enable all libeth_xdp features w/o redir
+ * @dev: target &net_device
+ * @...: optional params, see __libeth_xdp_set_features()
+ *
+ * Enable everything except the .ndo_xdp_xmit() feature, use when XDPSQs are
+ * not available right after netdev registration.
+ */
+#define libeth_xdp_set_features_noredir(dev, ...)			      \
+	__libeth_xdp_set_features_noredir(dev, __UNIQUE_ID(dev_),	      \
+					  ##__VA_ARGS__)
+
+#define __libeth_xdp_set_features_noredir(dev, ud, ...) do {		      \
+	struct net_device *ud = (dev);					      \
+									      \
+	libeth_xdp_set_features(ud, ##__VA_ARGS__);			      \
+	libeth_xdp_set_redirect(ud, false);				      \
+} while (0)
+
 #endif /* __LIBETH_XDP_H */
diff --git a/drivers/net/ethernet/intel/libeth/xdp.c b/drivers/net/ethernet/intel/libeth/xdp.c
index a20ba2478097..975c34af2f0f 100644
--- a/drivers/net/ethernet/intel/libeth/xdp.c
+++ b/drivers/net/ethernet/intel/libeth/xdp.c
@@ -338,6 +338,75 @@ void libeth_xdp_return_buff_bulk(const struct skb_shared_info *sinfo,
 }
 EXPORT_SYMBOL_GPL(libeth_xdp_return_buff_bulk);
 
+/* Misc */
+
+/**
+ * libeth_xdp_queue_threshold - calculate XDP queue clean/refill threshold
+ * @count: number of descriptors in the queue
+ *
+ * The threshold is the limit at which RQs start to refill (when the number of
+ * empty buffers exceeds it) and SQs get cleaned up (when the number of free
+ * descriptors goes below it). To speed up hotpath processing, threshold is
+ * always pow-2, closest to 1/4 of the queue length.
+ * Don't call it on hotpath, calculate and cache the threshold during the
+ * queue initialization.
+ *
+ * Return: the calculated threshold.
+ */
+u32 libeth_xdp_queue_threshold(u32 count)
+{
+	u32 quarter, low, high;
+
+	if (likely(is_power_of_2(count)))
+		return count >> 2;
+
+	quarter = DIV_ROUND_CLOSEST(count, 4);
+	low = rounddown_pow_of_two(quarter);
+	high = roundup_pow_of_two(quarter);
+
+	return high - quarter <= quarter - low ? high : low;
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_queue_threshold);
+
+/**
+ * __libeth_xdp_set_features - set XDP features for netdev
+ * @dev: &net_device to configure
+ * @xmo: XDP metadata ops (Rx hints)
+ *
+ * Set all the features libeth_xdp supports. Only the first argument is
+ * necessary.
+ * Use the non-underscored versions in drivers instead.
+ */
+void __libeth_xdp_set_features(struct net_device *dev,
+			       const struct xdp_metadata_ops *xmo)
+{
+	xdp_set_features_flag(dev,
+			      NETDEV_XDP_ACT_BASIC |
+			      NETDEV_XDP_ACT_REDIRECT |
+			      NETDEV_XDP_ACT_NDO_XMIT |
+			      NETDEV_XDP_ACT_RX_SG |
+			      NETDEV_XDP_ACT_NDO_XMIT_SG);
+	dev->xdp_metadata_ops = xmo;
+}
+EXPORT_SYMBOL_GPL(__libeth_xdp_set_features);
+
+/**
+ * libeth_xdp_set_redirect - toggle the XDP redirect feature
+ * @dev: &net_device to configure
+ * @enable: whether XDP is enabled
+ *
+ * Use this when XDPSQs are not always available to dynamically enable
+ * and disable redirect feature.
+ */
+void libeth_xdp_set_redirect(struct net_device *dev, bool enable)
+{
+	if (enable)
+		xdp_features_set_redirect_target(dev, true);
+	else
+		xdp_features_clear_redirect_target(dev);
+}
+EXPORT_SYMBOL_GPL(libeth_xdp_set_redirect);
+
 /* Module */
 
 static const struct libeth_xdp_ops xdp_ops __initconst = {
-- 
2.49.0


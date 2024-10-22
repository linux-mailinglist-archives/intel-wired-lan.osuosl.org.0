Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B2A9A98BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 07:41:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAAB8607D7;
	Tue, 22 Oct 2024 05:41:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RK-9t74RI2-g; Tue, 22 Oct 2024 05:41:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3B68607B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729575695;
	bh=BXWImbc0m6tEu/uXgN70u3FJi1kh1cJc/8Jy2juuoXw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KLEVHPWXrHkfMR1PlFUwd3aw0BM7dEuHKysgzZIpz242Xqm9YmC4/QuCiKE+QSNZM
	 Gd61N+1vw4j47QQr0VoLFkgQIByZdpxL1H7r/ptD/XZgA+qXHJc+veuhIp+uhykzsO
	 36JCDLRom8NPXwwsvz4QN8CyBp3wFo5BU5U9H7oqjT/JcQpev6hcjGYBwT7sD46kUr
	 tWCRrGoHfk+b8uZoG1hKRjxYee+PpYEpJ6HFXgkTz43S1MNO9abrNF+Hk8KTXKpTtP
	 b4n2qSfY8oUF6NMq3ZSLIo5qkMwHgQG1HiNt+yVYEH0Iul1O+thw70WENfj7yIf2Bx
	 3d8ziRRKrx9pQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3B68607B9;
	Tue, 22 Oct 2024 05:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 69A593A23
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 54385607AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFR4YEtnuLcG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 05:41:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DFDD560796
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFDD560796
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFDD560796
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 05:41:23 +0000 (UTC)
X-CSE-ConnectionGUID: ZVZ/P1IsRv2WaV/21difCg==
X-CSE-MsgGUID: MMnGWjB9SS6mm07J1FVK+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33015641"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33015641"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 22:41:22 -0700
X-CSE-ConnectionGUID: Mo+Pz6gOR++P7AEl7WKaKA==
X-CSE-MsgGUID: byL6XBNKSVupSu5vmljp6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84558132"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 22:41:18 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5F39127BCC;
 Tue, 22 Oct 2024 06:41:17 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Sunil Goutham <sgoutham@marvell.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Tue, 22 Oct 2024 07:41:21 -0400
Message-Id: <20241022114121.61284-15-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
References: <20241022114121.61284-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729575684; x=1761111684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mUtEqk4U8zkz5yokOdmRyXUvZbJZR3CNr/KR9ocWfgY=;
 b=neNya6rEDP265AICNusqLMPe+LsWXXGP6LXBHMlON7tui7ATTfVIAcbm
 v0g3QjH0KNWHg4h+JcrYWVCVJzOf/ViRODwMY06RpDaOZr3LfKA+jxaaO
 TjyK8yE5uxApTjI3ubr4rPIeYmvnejtbkhdL1u7yNYYzS+4GiElNU0e+d
 bvpZdvohAF0xnZrJl4TVA3jNKOqsiXNqf6NHwYzUnQFWW+G4ndXwNLi4d
 fsf/ZNGD2b2DoqVeQdhe0/QPohLbXT4rm67qAz9eSywvnHig3BKKwfvD2
 h4X6FTWcbDrwctv1E+qHdnuGG0s4WI0t8cyM9v4pAL+uHlrQRSa+Lz8kA
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=neNya6rE
Subject: [Intel-wired-lan] [PATCH iwl-next v12 14/14] iavf: add support for
 Rx timestamps to hotpath
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

From: Jacob Keller <jacob.e.keller@intel.com>

Add support for receive timestamps to the Rx hotpath. This support only
works when using the flexible descriptor format, so make sure that we
request this format by default if we have receive timestamp support
available in the PTP capabilities.

In order to report the timestamps to userspace, we need to perform
timestamp extension. The Rx descriptor does actually contain the "40
bit" timestamp. However, upper 32 bits which contain nanoseconds are
conveniently stored separately in the descriptor. We could extract the
32bits and lower 8 bits, then perform a bitwise OR to calculate the
40bit value. This makes no sense, because the timestamp extension
algorithm would simply discard the lower 8 bits anyways.

Thus, implement timestamp extension as iavf_ptp_extend_32b_timestamp(),
and extract and forward only the 32bits of nominal nanoseconds.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
Reviewed-by: Sunil Goutham <sgoutham@marvell.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |  9 +++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 61 +++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  | 11 ++++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 +++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 5 files changed, 125 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1103c210b4e3..a25ceecf1ea7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -730,6 +730,15 @@ static u8 iavf_select_rx_desc_format(const struct iavf_adapter *adapter)
 	if (!IAVF_RXDID_ALLOWED(adapter))
 		return VIRTCHNL_RXDID_1_32B_BASE;
 
+	/* Rx timestamping requires the use of flexible NIC descriptors */
+	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		if (rxdids & BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC))
+			return VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
+
+		pci_warn(adapter->pdev,
+			 "Unable to negotiate flexible descriptor format\n");
+	}
+
 	/* Warn if the PF does not list support for the default legacy
 	 * descriptor format. This shouldn't happen, as this is the format
 	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index 4246ddfa6f0d..b4d5eda2e84f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -394,6 +394,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
 	}
 	adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
 	mutex_unlock(&adapter->ptp.aq_cmd_lock);
+
+	adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+	iavf_ptp_disable_rx_tstamp(adapter);
 }
 
 /**
@@ -422,3 +425,61 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
 		iavf_ptp_disable_rx_tstamp(adapter);
 	}
 }
+
+/**
+ * iavf_ptp_extend_32b_timestamp - Convert a 32b nanoseconds timestamp to 64b
+ * nanoseconds
+ * @cached_phc_time: recently cached copy of PHC time
+ * @in_tstamp: Ingress/egress 32b nanoseconds timestamp value
+ *
+ * Hardware captures timestamps which contain only 32 bits of nominal
+ * nanoseconds, as opposed to the 64bit timestamps that the stack expects.
+ *
+ * Extend the 32bit nanosecond timestamp using the following algorithm and
+ * assumptions:
+ *
+ * 1) have a recently cached copy of the PHC time
+ * 2) assume that the in_tstamp was captured 2^31 nanoseconds (~2.1
+ *    seconds) before or after the PHC time was captured.
+ * 3) calculate the delta between the cached time and the timestamp
+ * 4) if the delta is smaller than 2^31 nanoseconds, then the timestamp was
+ *    captured after the PHC time. In this case, the full timestamp is just
+ *    the cached PHC time plus the delta.
+ * 5) otherwise, if the delta is larger than 2^31 nanoseconds, then the
+ *    timestamp was captured *before* the PHC time, i.e. because the PHC
+ *    cache was updated after the timestamp was captured by hardware. In this
+ *    case, the full timestamp is the cached time minus the inverse delta.
+ *
+ * This algorithm works even if the PHC time was updated after a Tx timestamp
+ * was requested, but before the Tx timestamp event was reported from
+ * hardware.
+ *
+ * This calculation primarily relies on keeping the cached PHC time up to
+ * date. If the timestamp was captured more than 2^31 nanoseconds after the
+ * PHC time, it is possible that the lower 32bits of PHC time have
+ * overflowed more than once, and we might generate an incorrect timestamp.
+ *
+ * This is prevented by (a) periodically updating the cached PHC time once
+ * a second, and (b) discarding any Tx timestamp packet if it has waited for
+ * a timestamp for more than one second.
+ *
+ * Return: extended timestamp (to 64b).
+ */
+u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp)
+{
+	u32 low = lower_32_bits(cached_phc_time);
+	u32 delta = in_tstamp - low;
+	u64 ns;
+
+	/* Do not assume that the in_tstamp is always more recent than the
+	 * cached PHC time. If the delta is large, it indicates that the
+	 * in_tstamp was taken in the past, and should be converted
+	 * forward.
+	 */
+	if (delta > S32_MAX)
+		ns = cached_phc_time - (low - in_tstamp);
+	else
+		ns = cached_phc_time + delta;
+
+	return ns;
+}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 0801e3ff5a59..783b8f287cd9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -6,6 +6,9 @@
 
 #include "iavf_types.h"
 
+/* bit indicating whether a 40bit timestamp is valid */
+#define IAVF_PTP_40B_TSTAMP_VALID	BIT(24)
+
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 void iavf_ptp_init(struct iavf_adapter *adapter);
 void iavf_ptp_release(struct iavf_adapter *adapter);
@@ -15,6 +18,7 @@ void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
 			   struct kernel_hwtstamp_config *config,
 			   struct netlink_ext_ack *extack);
+u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 static inline void iavf_ptp_init(struct iavf_adapter *adapter) { }
 static inline void iavf_ptp_release(struct iavf_adapter *adapter) { }
@@ -32,5 +36,12 @@ static inline int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
 {
 	return -1;
 }
+
+static inline u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time,
+						u32 in_tstamp)
+{
+	return 0;
+}
+
 #endif /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 283997b8a777..422312b8b54a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -8,6 +8,7 @@
 #include "iavf.h"
 #include "iavf_trace.h"
 #include "iavf_prototype.h"
+#include "iavf_ptp.h"
 
 /**
  * iavf_is_descriptor_done - tests DD bit in Rx descriptor
@@ -1076,6 +1077,45 @@ static void iavf_flex_rx_hash(const struct iavf_ring *ring, __le64 qw1,
 	}
 }
 
+/**
+ * iavf_flex_rx_tstamp - Capture Rx timestamp from the descriptor
+ * @rx_ring: descriptor ring
+ * @qw2: quad word 2 of descriptor
+ * @qw3: quad word 3 of descriptor
+ * @skb: skb currently being received
+ *
+ * Read the Rx timestamp value from the descriptor and pass it to the stack.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ */
+static void iavf_flex_rx_tstamp(const struct iavf_ring *rx_ring, __le64 qw2,
+				__le64 qw3, struct sk_buff *skb)
+{
+	u32 tstamp;
+	u64 ns;
+
+	/* Skip processing if timestamps aren't enabled */
+	if (!(rx_ring->flags & IAVF_TXRX_FLAGS_HW_TSTAMP))
+		return;
+
+	/* Check if this Rx descriptor has a valid timestamp */
+	if (!le64_get_bits(qw2, IAVF_PTP_40B_TSTAMP_VALID))
+		return;
+
+	/* the ts_low field only contains the valid bit and sub-nanosecond
+	 * precision, so we don't need to extract it.
+	 */
+	tstamp = le64_get_bits(qw3, IAVF_RXD_FLEX_QW3_TSTAMP_HIGH_M);
+
+	ns = iavf_ptp_extend_32b_timestamp(rx_ring->ptp->cached_phc_time,
+					   tstamp);
+
+	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps) {
+		.hwtstamp = ns_to_ktime(ns),
+	};
+}
+
 /**
  * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: rx descriptor ring packet is being transacted on
@@ -1097,11 +1137,14 @@ static void iavf_process_skb_fields(const struct iavf_ring *rx_ring,
 	struct libeth_rx_pt decoded_pt;
 	__le64 qw0 = rx_desc->qw0;
 	__le64 qw1 = rx_desc->qw1;
+	__le64 qw2 = rx_desc->qw2;
+	__le64 qw3 = rx_desc->qw3;
 
 	decoded_pt = libie_rx_pt_parse(ptype);
 
 	if (flex) {
 		iavf_flex_rx_hash(rx_ring, qw1, skb, decoded_pt);
+		iavf_flex_rx_tstamp(rx_ring, qw2, qw3, skb);
 		csum_bits = iavf_flex_rx_csum(rx_ring->vsi, le64_to_cpu(qw1),
 					      decoded_pt);
 	} else {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_type.h b/drivers/net/ethernet/intel/iavf/iavf_type.h
index e62a8a0067ea..f9e1319620f4 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_type.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_type.h
@@ -285,6 +285,7 @@ struct iavf_rx_desc {
 /* L2 Tag 2 Presence */
 #define IAVF_RXD_FLEX_L2TAG2P_M			BIT(11)
 	aligned_le64 qw3;
+#define IAVF_RXD_FLEX_QW3_TSTAMP_HIGH_M		GENMASK_ULL(63, 32)
 } __aligned(4 * sizeof(__le64));
 static_assert(sizeof(struct iavf_rx_desc) == 32);
 
-- 
2.38.1


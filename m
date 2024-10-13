Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E98899C63A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 11:44:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C1860724;
	Mon, 14 Oct 2024 09:44:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 631d8khbrNh5; Mon, 14 Oct 2024 09:44:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3C726078B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728899074;
	bh=FNSbEKWmCMOnOkP3XigMOG3Hxc2cE6zhkYQduKgSBow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MlxaPga5+eWz+MmHqkX2eREZ/BxVj5MTSdn4jjaanxO4PY4pZVc4sZvABvydV/7SG
	 2KKvLEUkYhg4ImsXkjcKyAs6cqaEBlGrpb8wMIYsVDX0FeiPYBkDCnAOCUidd9PHE2
	 Yx9i1O0i7md2GGHYZ9gYvW2xdrgzYQetci5F4cFyhIfsjFSJI1utSEut2YbV8MiMXj
	 q4e2B7wgfI+FvPpW6vfVZPymL8ypdpenFHh/phXxOoyTrF8YzCsZaHTRsdNb6HMBmU
	 BrGSc56QEbfipQ/bb/NutjNHAteQsgYYxu4xDodRuaa2HC3WHYdmyo5t0oO0zvcCZV
	 v41PoLnXCzF9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3C726078B;
	Mon, 14 Oct 2024 09:44:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77F961BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7461F4032B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHzUUidbBh-V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 09:44:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D4259400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4259400FB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D4259400FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 09:44:14 +0000 (UTC)
X-CSE-ConnectionGUID: f7hZ3FLXTY6z480MCJpKVg==
X-CSE-MsgGUID: hAO5N+/ISbmJ7urBUgZUJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="45712233"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="45712233"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 02:44:14 -0700
X-CSE-ConnectionGUID: TE4aHIr1STWE4JiAYnaLLg==
X-CSE-MsgGUID: 7/Fh5e8CTOiEf4LDpvRwZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77531863"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 14 Oct 2024 02:44:10 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1659027BD1;
 Mon, 14 Oct 2024 10:44:09 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	aleksander.lobakin@intel.com
Date: Sun, 13 Oct 2024 11:44:15 -0400
Message-Id: <20241013154415.20262-15-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
References: <20241013154415.20262-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728899055; x=1760435055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jGD7oNKwU5MrxipdNFiJJDZ82IxT7fO06kkoC7mmTI0=;
 b=a+T7KCZ+F/pKuDJVTQO/mfovCB8z/X7aZP0cfrW6w4qJT+KJMFX1Siao
 qf6Wu3FnU5/708p/Xv9Zy2GHi3PAaSdPg0PvxHQPMSjKNyovynlZEkQtI
 9T0+9I+xCRuQL1DegQc6DATYIt1vaoniL3D0lihuLi4wpcgYEhNEirMF3
 3WrEY5y+DG+XAZumSUy/VvSu+6dJSDPieS1xEjrEwoGHJyncFB0q84lQ8
 b1Rrt2lZIYmBu/ab2LvP2ydYFzwrK50ihaeQN0Bs2bS0m5rquq/my227h
 X58zHia6Kj0hMc9h2F37j4Q48ohS7h6ulIr9wYxnCs9SbfTDODYB6DzFW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a+T7KCZ+
Subject: [Intel-wired-lan] [PATCH iwl-next v11 14/14] iavf: add support for
 Rx timestamps to hotpath
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>,
 Sunil Goutham <sgoutham@marvell.com>
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
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |  4 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 43 +++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_type.h |  1 +
 5 files changed, 118 insertions(+)

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
index 5550f44c87d3..a5162ee3a1c9 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -392,6 +392,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
 	}
 	adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
 	mutex_unlock(&adapter->ptp.aq_cmd_lock);
+
+	adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+	iavf_ptp_disable_rx_tstamp(adapter);
 }
 
 /**
@@ -420,3 +423,61 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
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
index 4c8539c1841d..0f69ccf54ccc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -6,6 +6,9 @@
 
 #include "iavf_types.h"
 
+/* bit indicating whether a 40bit timestamp is valid */
+#define IAVF_PTP_40B_TSTAMP_VALID	BIT(24)
+
 void iavf_ptp_init(struct iavf_adapter *adapter);
 void iavf_ptp_release(struct iavf_adapter *adapter);
 void iavf_ptp_process_caps(struct iavf_adapter *adapter);
@@ -14,5 +17,6 @@ void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 int iavf_ptp_set_ts_config(struct iavf_adapter *adapter,
 			   struct kernel_hwtstamp_config *config,
 			   struct netlink_ext_ack *extack);
+u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index a3dfbb9806b4..b78b377047a8 100644
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


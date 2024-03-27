Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8488E2D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 14:34:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35770409C1;
	Wed, 27 Mar 2024 13:34:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wLdOCpdOKFLH; Wed, 27 Mar 2024 13:34:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0AB46406D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711546488;
	bh=fY3IZTv0fCpYVOflr+B+3KOLxE9Pxv62AHKcX23c+So=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UpAvAlTTom1Frw9TCraimJ5/89ODjOO+sufP6rxTOOizRfeBJBYD0SS3lbdXOdW0g
	 wQR6ZQi3MrxEUDbqPlO4ThHckxyydFrq1bnHnLsAJgnS1Oe9Xpx4CNBpIQhOvGvoXa
	 XXV5wHgE3v/xIcKNHdtt9IuBYQ67TloOCTx3Gir9WDqI9g2bYMg54vPeVa3Rd0B/8z
	 6p0drHMffkOG01dchXEDcY/ougiLCPbwIxsDWRCvSmAJueLLaUvDREq2FektFXcL0G
	 qTFRGz5KfdbNPlzCNKRGvYYAGvw0X225uGaGSRKs2YMqdH7xo7ZkdahTELTx2tvTDm
	 x961t121aL9Xg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AB46406D4;
	Wed, 27 Mar 2024 13:34:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AB9F1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8F50A6078D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wPDal19HdiTM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 13:34:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B735B60B6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B735B60B6C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B735B60B6C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 13:34:33 +0000 (UTC)
X-CSE-ConnectionGUID: BFEgvtWLRN+arKV684txZg==
X-CSE-MsgGUID: Cy2wxvA4TKWUIrjAnuo9zQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="9608543"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="9608543"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 06:34:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,158,1708416000"; d="scan'208";a="16355743"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa009.fm.intel.com with ESMTP; 27 Mar 2024 06:34:31 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id E5E01284E8;
 Wed, 27 Mar 2024 13:34:29 +0000 (GMT)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 27 Mar 2024 09:25:43 -0400
Message-Id: <20240327132543.15923-13-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711546474; x=1743082474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kY6A1sGkTTZrGS+pS+hDrK6jAv8XZRXfLZkNCU7nOq8=;
 b=WE0jUGq+ZRi4uNdbDO9LffXQOkMxXU0KIdVf76EpAJmDk8S217WSi+Dm
 fqyRbtJ87s7psqEjakbViqLW6llCRFVw9w4xKRKoAC+3nD/T308sBacK6
 sQHJwyFuojRTyezTsfaQumFXeDHmal8/1Rh64h6dFot3/Lz3h4du6IxiF
 ydqcSBY7/XMBXf1vINr4lyEUtdWnUvUDbZHLfDSjs7xcggUPpHLSdarpH
 MsIZpf+IzLTJycwn6fKxTmYeg2j5nRbf8JgIDHmmkBjRmQixEsmQbAdJb
 luuiOpCSvJJPDBaXUxpqZV5XUzqCwOjCsYr1Sy9ELz/y7vIgbn5xrgTTi
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WE0jUGq+
Subject: [Intel-wired-lan] [PATCH iwl-next v2 12/12] iavf: add support for
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
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

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c |  9 +++
 drivers/net/ethernet/intel/iavf/iavf_ptp.c  | 67 +++++++++++++++++++++
 drivers/net/ethernet/intel/iavf/iavf_ptp.h  |  4 ++
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 44 ++++++++++++++
 4 files changed, 124 insertions(+)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a2fe2d124907..26c170ae1f14 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -726,6 +726,15 @@ static u8 iavf_select_rx_desc_format(struct iavf_adapter *adapter)
 	if (!RXDID_ALLOWED(adapter))
 		return VIRTCHNL_RXDID_1_32B_BASE;
 
+	/* Rx timestamping requires the use of flexible NIC descriptors */
+	if (iavf_ptp_cap_supported(adapter, VIRTCHNL_1588_PTP_CAP_RX_TSTAMP)) {
+		if (supported_rxdids & BIT(VIRTCHNL_RXDID_2_FLEX_SQ_NIC))
+			return VIRTCHNL_RXDID_2_FLEX_SQ_NIC;
+
+		dev_dbg(&adapter->pdev->dev,
+			"Unable to negotiate flexible descriptor format.\n");
+	}
+
 	/* Warn if the PF does not list support for the default legacy
 	 * descriptor format. This shouldn't happen, as this is the format
 	 * used if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is not supported. It is
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
index 0e5cae23f9be..f422ce4cc3fc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
@@ -428,6 +428,9 @@ void iavf_ptp_release(struct iavf_adapter *adapter)
 	adapter->aq_required &= ~IAVF_FLAG_AQ_SEND_PTP_CMD;
 	spin_unlock(&adapter->ptp.aq_cmd_lock);
 
+	adapter->ptp.hwtstamp_config.rx_filter = HWTSTAMP_FILTER_NONE;
+	iavf_ptp_disable_rx_tstamp(adapter);
+
 	adapter->ptp.initialized = false;
 }
 
@@ -461,3 +464,67 @@ void iavf_ptp_process_caps(struct iavf_adapter *adapter)
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
+ */
+u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp)
+{
+	const u64 mask = GENMASK_ULL(31, 0);
+	u32 delta;
+	u64 ns;
+
+	/* Calculate the delta between the lower 32bits of the cached PHC
+	 * time and the in_tstamp value
+	 */
+	delta = (in_tstamp - (u32)(cached_phc_time & mask));
+
+	/* Do not assume that the in_tstamp is always more recent than the
+	 * cached PHC time. If the delta is large, it indicates that the
+	 * in_tstamp was taken in the past, and should be converted
+	 * forward.
+	 */
+	if (delta > (mask / 2)) {
+		/* reverse the delta calculation here */
+		delta = ((u32)(cached_phc_time & mask) - in_tstamp);
+		ns = cached_phc_time - delta;
+	} else {
+		ns = cached_phc_time + delta;
+	}
+
+	return ns;
+}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.h b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
index 337bf184a7ea..66e113ae27f5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ptp.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_ptp.h
@@ -6,6 +6,9 @@
 
 #include <linux/ptp_clock_kernel.h>
 
+/* bit indicating whether a 40bit timestamp is valid */
+#define IAVF_PTP_40B_TSTAMP_VALID	BIT(0)
+
 /* structure used to queue PTP commands for processing */
 struct iavf_ptp_aq_cmd {
 	struct list_head list;
@@ -38,5 +41,6 @@ void iavf_virtchnl_send_ptp_cmd(struct iavf_adapter *adapter);
 long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp);
 int iavf_ptp_get_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr);
 int iavf_ptp_set_ts_config(struct iavf_adapter *adapter, struct ifreq *ifr);
+u64 iavf_ptp_extend_32b_timestamp(u64 cached_phc_time, u32 in_tstamp);
 
 #endif /* _IAVF_PTP_H_ */
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index baf3cf80e3ac..c04fc100ce20 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -1235,6 +1235,48 @@ static inline void iavf_flex_rx_hash(struct iavf_ring *ring,
 	}
 }
 
+/**
+ * iavf_flex_rx_tstamp - Capture Rx timestamp from the descriptor
+ * @rx_ring: descriptor ring
+ * @rx_desc: specific descriptor
+ * @skb: skb currently being received
+ *
+ * Read the Rx timestamp value from the descriptor and pass it to the stack.
+ *
+ * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
+ * descriptor writeback format.
+ */
+static void iavf_flex_rx_tstamp(struct iavf_ring *rx_ring,
+				union iavf_rx_desc *rx_desc,
+				struct sk_buff *skb)
+{
+	struct skb_shared_hwtstamps *skb_tstamps;
+	struct iavf_adapter *adapter;
+	u32 tstamp;
+	u64 ns;
+
+	/* Skip processing if timestamps aren't enabled */
+	if (!(rx_ring->flags & IAVF_TXRX_FLAGS_HW_TSTAMP))
+		return;
+
+	/* Check if this Rx descriptor has a valid timestamp */
+	if (!(rx_desc->flex_wb.ts_low & IAVF_PTP_40B_TSTAMP_VALID))
+		return;
+
+	adapter = netdev_priv(rx_ring->netdev);
+
+	/* the ts_low field only contains the valid bit and sub-nanosecond
+	 * precision, so we don't need to extract it.
+	 */
+	tstamp = le32_to_cpu(rx_desc->flex_wb.flex_ts.ts_high);
+	ns = iavf_ptp_extend_32b_timestamp(adapter->ptp.cached_phc_time,
+					   tstamp);
+
+	skb_tstamps = skb_hwtstamps(skb);
+	memset(skb_tstamps, 0, sizeof(*skb_tstamps));
+	skb_tstamps->hwtstamp = ns_to_ktime(ns);
+}
+
 /**
  * iavf_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: rx descriptor ring packet is being transacted on
@@ -1258,6 +1300,8 @@ static void iavf_process_skb_fields(struct iavf_ring *rx_ring,
 		iavf_flex_rx_hash(rx_ring, rx_desc, skb, rx_ptype);
 
 		iavf_flex_rx_csum(rx_ring->vsi, skb, rx_desc);
+
+		iavf_flex_rx_tstamp(rx_ring, rx_desc, skb);
 	}
 
 	skb_record_rx_queue(skb, rx_ring->queue_index);
-- 
2.38.1


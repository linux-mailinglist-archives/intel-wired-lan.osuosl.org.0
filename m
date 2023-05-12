Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 217BC700BA1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:28:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A894240965;
	Fri, 12 May 2023 15:28:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A894240965
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905329;
	bh=4w6fw/tSxrRY4JJmPmIOJYME2zmckCBc1Gi7P6HcNpg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KQeus1AB85T9ZLnd0fI2L8CxBb306seQ9R2g2hWBoYC3ERMp+Px+O5dnm1118eaSr
	 OvHXDD8izjHmCThfrdg1V2DHbFpicZ4NWpW5GxNBBJYol+h5lhx0DylSt2ExpUfLYi
	 1RrmyeN7EgGLIk+K5dYlQ8NyxA57hAhTRzFuZVXcDprEWZ273vMjWaCwppZXrZov4W
	 v+j6WgAHgZn0S1JMce6czmMwQtoAdi1G07tphBaM2V+JKTqFqw+UJZRnjkI8rzMepp
	 BlaeWaudM0vzmvWk17IMx51RCsCdQmMwQG8YTY3a6cAkrrJxHzrUMP4VYNiHlVrDv+
	 ujWod84BfWHDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7xBzs3jLpj56; Fri, 12 May 2023 15:28:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E38B42045;
	Fri, 12 May 2023 15:28:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E38B42045
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA0271BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C353681FD1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C353681FD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id trXm5f75fBsS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E92A981F86
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E92A981F86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653243"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653243"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:28:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124437"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124437"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:35 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id EE8A435FB7;
 Fri, 12 May 2023 16:28:33 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:25:54 +0200
Message-Id: <20230512152607.992209-3-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905320; x=1715441320;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5vB/mCJq56GY8l9CoZRfoaHhODKmcFLlsw3E4ilHnDM=;
 b=dDjePtQbH64RrZ2Fjk/r+vHUuj4bGOCWlZ5M5wyHdZ1ZwHkDl2MD3DWd
 AEw+Ny1IhaPA6y4pOJf5r9WJIvbc9heOE1BUe+1OtakUaRQeNgZKdECQp
 O9ykSjtJ3DP2Tg7N5uouMZBP3/xcwr21ESfsllDtqMO2OeQJtMUOxZY2j
 t3pMac3CL+oxXdoEpYduPaPDjyPpZQGDRCD7bZVUjWPfREqKdplGGj5eP
 oEFr+9Zt6j8KiHjzm2mJM/0dWdfwLZ2mg0QeuYuvNjT17KyM9mg9rZAtq
 dWRTiyrp2Z+m/Htn0/Hsj0lppJ8jm4S4QknGx66qVt/WClK6SPuqTeWPD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dDjePtQb
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 02/15] ice: make RX HW
 timestamp reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previously, we only needed RX HW timestamp in skb path,
hence all related code was written with skb in mind.
But with the addition of XDP hints via kfuncs to the ice driver,
the same logic will be needed in .xmo_() callbacks.

Put generic process of reading RX HW timestamp from a descriptor
into a separate function.
Move skb-related code into another source file.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c      | 23 +++++++---------
 drivers/net/ethernet/intel/ice/ice_ptp.h      | 18 ++++++++-----
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 27 ++++++++++++++++++-
 3 files changed, 48 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ac6f06f9a2ed..c90ce91f11ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2142,30 +2142,28 @@ int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
 }
 
 /**
- * ice_ptp_rx_hwtstamp - Check for an Rx timestamp
+ * ice_ptp_copy_rx_hwts_from_desc - Check for an Rx timestamp
  * @rx_ring: Ring to get the VSI info
  * @rx_desc: Receive descriptor
- * @skb: Particular skb to send timestamp with
+ * @dst: Address to put RX timestamp to
  *
- * The driver receives a notification in the receive descriptor with timestamp.
- * The timestamp is in ns, so we must convert the result first.
+ * If function returns true, dst contains a valid RX timestamp in ns.
  */
-void
-ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
-		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb)
+bool ice_ptp_copy_rx_hwts_from_desc(struct ice_rx_ring *rx_ring,
+				    union ice_32b_rx_flex_desc *rx_desc,
+				    u64 *dst)
 {
-	struct skb_shared_hwtstamps *hwtstamps;
 	u64 ts_ns, cached_time;
 	u32 ts_high;
 
 	if (!(rx_desc->wb.time_stamp_low & ICE_PTP_TS_VALID))
-		return;
+		return false;
 
 	cached_time = READ_ONCE(rx_ring->cached_phctime);
 
 	/* Do not report a timestamp if we don't have a cached PHC time */
 	if (!cached_time)
-		return;
+		return false;
 
 	/* Use ice_ptp_extend_32b_ts directly, using the ring-specific cached
 	 * PHC value, rather than accessing the PF. This also allows us to
@@ -2176,9 +2174,8 @@ ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
 	ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
 	ts_ns = ice_ptp_extend_32b_ts(cached_time, ts_high);
 
-	hwtstamps = skb_hwtstamps(skb);
-	memset(hwtstamps, 0, sizeof(*hwtstamps));
-	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
+	*dst = ts_ns;
+	return true;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 9cda2f43e0e5..509ea9570276 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -259,9 +259,9 @@ int ice_get_ptp_clock_index(struct ice_pf *pf);
 s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb);
 bool ice_ptp_process_ts(struct ice_pf *pf);
 
-void
-ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
-		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb);
+bool ice_ptp_copy_rx_hwts_from_desc(struct ice_rx_ring *rx_ring,
+				    union ice_32b_rx_flex_desc *rx_desc,
+				    u64 *dst);
 void ice_ptp_reset(struct ice_pf *pf);
 void ice_ptp_prepare_for_reset(struct ice_pf *pf);
 void ice_ptp_init(struct ice_pf *pf);
@@ -294,9 +294,15 @@ static inline bool ice_ptp_process_ts(struct ice_pf *pf)
 {
 	return true;
 }
-static inline void
-ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
-		    union ice_32b_rx_flex_desc *rx_desc, struct sk_buff *skb) { }
+
+static inline bool
+ice_ptp_copy_rx_hwts_from_desc(struct ice_rx_ring *rx_ring,
+			       union ice_32b_rx_flex_desc *rx_desc,
+			       u64 *dst)
+{
+	return false;
+}
+
 static inline void ice_ptp_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_prepare_for_reset(struct ice_pf *pf) { }
 static inline void ice_ptp_init(struct ice_pf *pf) { }
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
index fc67bbf600af..1aab79dc8915 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
@@ -186,6 +186,31 @@ ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
 	ring->vsi->back->hw_csum_rx_error++;
 }
 
+/**
+ * ice_ptp_rx_hwts_to_skb - Put RX timestamp into skb, if available
+ * @rx_ring: Ring to get the VSI info
+ * @rx_desc: Receive descriptor
+ * @skb: Particular skb to send timestamp with
+ *
+ * The driver receives a notification in the receive descriptor with timestamp.
+ * The timestamp is in ns, so we must convert the result first.
+ */
+static void
+ice_ptp_rx_hwts_to_skb(struct ice_rx_ring *rx_ring,
+		       union ice_32b_rx_flex_desc *rx_desc,
+		       struct sk_buff *skb)
+{
+	struct skb_shared_hwtstamps *hwtstamps;
+	u64 ts_ns;
+
+	if (!ice_ptp_copy_rx_hwts_from_desc(rx_ring, rx_desc, &ts_ns))
+		return;
+
+	hwtstamps = skb_hwtstamps(skb);
+	memset(hwtstamps, 0, sizeof(*hwtstamps));
+	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
+}
+
 /**
  * ice_process_skb_fields - Populate skb header fields from Rx descriptor
  * @rx_ring: Rx descriptor ring packet is being transacted on
@@ -210,7 +235,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
 	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
 
 	if (rx_ring->ptp_rx)
-		ice_ptp_rx_hwtstamp(rx_ring, rx_desc, skb);
+		ice_ptp_rx_hwts_to_skb(rx_ring, rx_desc, skb);
 }
 
 /**
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

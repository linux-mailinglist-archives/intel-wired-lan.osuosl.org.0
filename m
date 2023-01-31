Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 878236837BC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:45:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14E5260B93;
	Tue, 31 Jan 2023 20:45:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14E5260B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197942;
	bh=RdabBIOXWQxCL+Q8op56ZFGaALRDXmJyYPwV8SI2xcc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dXWSCIx3HdbcgXSWGC0qXjaxqlGrw9gxnneKzM7DaeRHZov7XYMywrIQx8MU7UEnb
	 8nILSJFtNuqyPvCGFgHMvhQ8qN6hEPGRlFFrDFSzYQGT3e1AMdhM9i4gI2chb//XC6
	 RvxYcBWLksOokDOcMkzapgOhXLSunvGU2K4yaPNE5HjiWL0qzp3ugjM+cXT5CuBpj7
	 nsfdR5Ut9URdGIlvX2Y9G8mq70Wuy3WLxSXG9RAmbdjZWQg4YfE7KWL4SyhJ8ejaet
	 aV6o8gOV3s/yqkdR0/2/ybzMJY67hTTE0F+suPEqvggN3ppZZcqkoTJ04wOgxtqJSB
	 LVXAqZWVsVd5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDDxBXuhe8hS; Tue, 31 Jan 2023 20:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BCAE60BCB;
	Tue, 31 Jan 2023 20:45:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BCAE60BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2143F1BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 084C460D91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 084C460D91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6TYRUjjbaOUU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:45:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5840260BEA
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5840260BEA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:45:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167157"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167157"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595256"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595256"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:21 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:44:58 +0100
Message-Id: <20230131204506.219292-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197925; x=1706733925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyLonIgeMIw0Drp17epaNfHBMCP0UGjUvswisVsj8Ic=;
 b=NHPe7UP7myPMDnLWpFVBp8anedej4/fsxoQuIqOHalPaaPPKpDLC6CIT
 7OU1Bs3TCAm6wRrMp/BxVIXHhkJ23rrUhllXxbTnxvBNi7B4jXjHYo9Pi
 /uG+qbXiC2XYmy4oyZTxQvvvurm1eHtdDkIPKqOroOrryun8SkiDGmbEH
 qY/JNJk/HXlyzcQnpO0bvSXQRlDTBNstlHPfNtWbaV6wuHMW6qXtZhrri
 x+V5oskSrWPKs8Mv4IBRpzvGfJ2j+Mlx4VhAlju6FerRgd4UXAryVsY3C
 69c1tBCBkCq13iFYdbPFzZQQroT3OcrnpU1vBjc8/AM+55SopfovrTBmE
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NHPe7UP7
Subject: [Intel-wired-lan] [PATCH bpf-next 05/13] ice: inline eop check
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This might be in future used by ZC driver and might potentially yield a
minor performance boost. While at it, constify arguments that
ice_is_non_eop() takes, since they are pointers and this will help compiler
while generating asm.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 21 ------------------
 drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 22 +++++++++++++++++++
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 1139b16f57cc..b4dc80295b12 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1065,27 +1065,6 @@ ice_put_rx_buf(struct ice_rx_ring *rx_ring, struct ice_rx_buf *rx_buf)
 	rx_buf->page = NULL;
 }
 
-/**
- * ice_is_non_eop - process handling of non-EOP buffers
- * @rx_ring: Rx ring being processed
- * @rx_desc: Rx descriptor for current buffer
- *
- * If the buffer is an EOP buffer, this function exits returning false,
- * otherwise return true indicating that this is in fact a non-EOP buffer.
- */
-static bool
-ice_is_non_eop(struct ice_rx_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc)
-{
-	/* if we are the last buffer then there is nothing else to do */
-#define ICE_RXD_EOF BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)
-	if (likely(ice_test_staterr(rx_desc->wb.status_error0, ICE_RXD_EOF)))
-		return false;
-
-	rx_ring->ring_stats->rx_stats.non_eop_descs++;
-
-	return true;
-}
-
 /**
  * ice_clean_rx_irq - Clean completed descriptors from Rx ring - bounce buf
  * @rx_ring: Rx descriptor ring to transact packets on
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
index c7d2954dc9ea..30e3cffdb2f1 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
@@ -21,6 +21,28 @@ ice_test_staterr(__le16 status_err_n, const u16 stat_err_bits)
 	return !!(status_err_n & cpu_to_le16(stat_err_bits));
 }
 
+/**
+ * ice_is_non_eop - process handling of non-EOP buffers
+ * @rx_ring: Rx ring being processed
+ * @rx_desc: Rx descriptor for current buffer
+ *
+ * If the buffer is an EOP buffer, this function exits returning false,
+ * otherwise return true indicating that this is in fact a non-EOP buffer.
+ */
+static inline bool
+ice_is_non_eop(const struct ice_rx_ring *rx_ring,
+	       const union ice_32b_rx_flex_desc *rx_desc)
+{
+	/* if we are the last buffer then there is nothing else to do */
+#define ICE_RXD_EOF BIT(ICE_RX_FLEX_DESC_STATUS0_EOF_S)
+	if (likely(ice_test_staterr(rx_desc->wb.status_error0, ICE_RXD_EOF)))
+		return false;
+
+	rx_ring->ring_stats->rx_stats.non_eop_descs++;
+
+	return true;
+}
+
 static inline __le64
 ice_build_ctob(u64 td_cmd, u64 td_offset, unsigned int size, u64 td_tag)
 {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

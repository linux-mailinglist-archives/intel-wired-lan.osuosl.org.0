Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F46ABD626
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 13:08:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA86460770;
	Tue, 20 May 2025 11:08:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O2fF5n2ilq_U; Tue, 20 May 2025 11:08:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DBEF60F4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747739325;
	bh=GAkeeOsFmE6KkC6xmDRDBWU863KehwlNxQN1ff6fgKI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mHmVliOTfxPskymW3A8AGLzcnCgS6PPkF5zREoU8CI+UxVjrQ8IEcoZkUhGYdKmVg
	 jB5it6IeMsZYBMAUn2774LSmx++eAltLGul2A9GV3WSiQVWfMRJ7r1YJD9BltLbTJA
	 riNSjGiB/X8mdURZR4glWf2Qo3QLUQDSmuBF85cP328j9HkF3QnKcTH7Nh2Iag0gdA
	 B6f5iS2ayikKuSG2LTIh4qq+XHdU/WhthZzx4RWkiAPf2F0mxHLNp7ilbsple/96GH
	 aaIKhdTN75RJZ5YwDYMY3s2Fk9ESxCW5zM8cOC+eqSxZCdFbb8YjMT5H6OEOzi/FcM
	 KiisLytpbdmQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DBEF60F4D;
	Tue, 20 May 2025 11:08:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F6D2193
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90E33404ED
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tVtwN0isUT9d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 11:08:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E4BCC404CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4BCC404CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E4BCC404CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 11:08:42 +0000 (UTC)
X-CSE-ConnectionGUID: tFRLzUiESMO6yJeAlR9KrA==
X-CSE-MsgGUID: otvnvFdJTp285UQd/MhAvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="75069281"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75069281"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 04:08:42 -0700
X-CSE-ConnectionGUID: fyxSlZ7JTK+9mnLOFg6NWw==
X-CSE-MsgGUID: DSQu1RuRQpS7aZJ+X/io+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140173076"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2025 04:08:41 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Tue, 20 May 2025 13:06:29 +0200
Message-ID: <20250520110823.1937981-10-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520110823.1937981-6-karol.kolacinski@intel.com>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747739323; x=1779275323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LpB/bL6N/QlssTjsWxnMEK+/tE3TscoCSAS/CeOtgWg=;
 b=PbbEYLQXtzBkxv1SaVsXEgDNQqXPwI3GyebXV8hzaTdcqXURQUOsJvHP
 lz65nZ2sBR31dho8sev7ZxsaHS4zH2ccrSIs1r7cOOrY9QdYxMF8U7M7n
 8USnanz/nxXU+BfqA0tkDwitB85EF/f8ldXW6Lx/vXEl8911t870jz9n8
 0wfVf9+SaZrJebemAui3tO9fphJcsZ1ZKeRv2kR0ZZi0Mlhq38MGPOAnG
 AJ6twuUKxGGn51GVhB9CrVJ3QzKPByxrpLbof4vo8mZUVFEhSoMIV52cG
 gWYje1FNKlZT3sE6JxWps4k014pfRPUHkjgbytnP86fNi3LmdLAM0yy7h
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PbbEYLQX
Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: read Tx timestamps in
 the IRQ top half
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

With sideband queue using delays and spin locks, it is possible to
read timestamps from the PHY in the top half of the interrupt.

This removes bottom half scheduling delays and improves timestamping
read times significantly, from >2 ms to <50 us.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 46 ++++++++++++------------
 1 file changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b8e55931fc52..e1068489fde5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2694,39 +2694,37 @@ irqreturn_t ice_ptp_ts_irq(struct ice_pf *pf)
 
 	switch (hw->mac_type) {
 	case ICE_MAC_E810:
+	{
+		struct ice_ptp_tx *tx = &pf->ptp.port.tx;
+		u8 idx;
+
+		if (!ice_pf_state_is_nominal(pf))
+			return IRQ_HANDLED;
+
 		/* E810 capable of low latency timestamping with interrupt can
 		 * request a single timestamp in the top half and wait for
 		 * a second LL TS interrupt from the FW when it's ready.
 		 */
-		if (hw->dev_caps.ts_dev_info.ts_ll_int_read) {
-			struct ice_ptp_tx *tx = &pf->ptp.port.tx;
-			u8 idx;
-
-			if (!ice_pf_state_is_nominal(pf))
+		if (!hw->dev_caps.ts_dev_info.ts_ll_int_read) {
+			if (!ice_ptp_pf_handles_tx_interrupt(pf))
 				return IRQ_HANDLED;
 
-			spin_lock(&tx->lock);
-			idx = find_next_bit_wrap(tx->in_use, tx->len,
-						 tx->last_ll_ts_idx_read + 1);
-			if (idx != tx->len)
-				ice_ptp_req_tx_single_tstamp(tx, idx);
-			spin_unlock(&tx->lock);
-
-			return IRQ_HANDLED;
+			set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
+			return IRQ_WAKE_THREAD;
 		}
-		fallthrough; /* non-LL_TS E810 */
-	case ICE_MAC_GENERIC:
-	case ICE_MAC_GENERIC_3K_E825:
-		/* All other devices process timestamps in the bottom half due
-		 * to sleeping or polling.
-		 */
-		if (!ice_ptp_pf_handles_tx_interrupt(pf))
-			return IRQ_HANDLED;
 
-		set_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread);
-		return IRQ_WAKE_THREAD;
+		spin_lock(&tx->lock);
+		idx = find_next_bit_wrap(tx->in_use, tx->len,
+					 tx->last_ll_ts_idx_read + 1);
+		if (idx != tx->len)
+			ice_ptp_req_tx_single_tstamp(tx, idx);
+		spin_unlock(&tx->lock);
+
+		return IRQ_HANDLED;
+	}
 	case ICE_MAC_E830:
-		/* E830 can read timestamps in the top half using rd32() */
+	case ICE_MAC_GENERIC:
+	case ICE_MAC_GENERIC_3K_E825:
 		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
 			/* Process outstanding Tx timestamps. If there
 			 * is more work, re-arm the interrupt to trigger again.
-- 
2.49.0


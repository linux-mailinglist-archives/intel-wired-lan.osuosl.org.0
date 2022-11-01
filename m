Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE1D61554D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Nov 2022 23:53:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CF0481AF4;
	Tue,  1 Nov 2022 22:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CF0481AF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667343205;
	bh=ppDIf299Ra2oGLdvTv07JbhmEf25IJHz9OLmfX4gjhY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YOxoiiw/jSkFy0Hj+Hp5g4WAA2Px9mU+ocxSVl/HObYKDpXjc6WhZNSrv37KzLlP9
	 gyJL7/kHlcsaCmslBw4Mw1jYzDE4GFH4kchDD0tkph6PhV3gWvX41LVUUHi7Efgpe4
	 xlcab3UpLnvzUDelsBADoxZMn92yZeO2qphoMcIdNYUYX+lLrYuhi8zOWrdxBT3U8S
	 kq57HU2OQCmT8E2ZmLk/69BbxXFz0xoQp2D24Y6kAIL1+/ZQV902PkygXcBEh+K/Pd
	 3wWc/iw8wAgzaLEQRB38hc6IBAUcDxRJ39k9AZVmT8CUdneVb5YL7KKqqYv44nRFiY
	 drzSgov8PwRsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0qiVJLxLwFD2; Tue,  1 Nov 2022 22:53:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B88B81AEA;
	Tue,  1 Nov 2022 22:53:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B88B81AEA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFF571BF95C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 98E9181AEA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98E9181AEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id psvncj0WPl6V for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Nov 2022 22:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4EB081490
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4EB081490
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Nov 2022 22:53:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371348116"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371348116"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="723324044"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="723324044"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 15:53:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue,  1 Nov 2022 15:52:34 -0700
Message-Id: <20221101225240.421525-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221101225240.421525-1-jacob.e.keller@intel.com>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667343191; x=1698879191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WK72fPQfAkTcnTXXNaQrnxKl4VmmC+OPI8+uwItMnGY=;
 b=Ddtsul2GP6rlCXkHgXI25AY6KHD95oF3k2tb3UFzii+OSoHR3ND0c5hT
 n1iYAz36/jr4p3hq3pd7c4qqCpqsC/ytz5+JriRqey5bYySOVgrLYiDa7
 yK1kv8Ko1TpPRtd5HoCyjq/jGV0K+F/2Bu8NgR4oZZ9/Mjaq0N+mb+2S1
 Xw67ffdRXunPASWzM86L9l0dYZ+f0e5KSrEFHLmHT/DpvrHBAxNMN3G2c
 xP6rW2h73RaN8FUJSfd+wqRreVsEgjPik9PBj+lunppw1odIU4ltPELMU
 dHf93vqGY5Ot/nCF33gSo2cOa6F3HdPKU3pcVT1DncVdVv4tj7x2uAPqU
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ddtsul2G
Subject: [Intel-wired-lan] [PATCH net-next 09/15] ice: return true if Tx
 tracker is uninitialized
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the PTP Tx timestamp tracker is not initialized, then there is no work
to complete, so the ice_ptp_tx_tstamp function should return true, rather
than false.

With this change, we also don't need to re-check the init status prior to
calling the function as it now returns the correct value.

Also update the ice_ptp_tx_tstamp function comment to properly clarify the
return value meaning.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index e2c2b1e52346..91ee36d3d21f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -650,11 +650,14 @@ ice_ptp_is_tx_tracker_up(struct ice_ptp_tx *tx)
  * 2) extend the 40b timestamp value to get a 64bit timestamp
  * 3) send that timestamp to the stack
  *
- * After looping, if we still have waiting SKBs, return true. This may cause us
- * effectively poll even when not strictly necessary. We do this because it's
- * possible a new timestamp was requested around the same time as the interrupt.
- * In some cases hardware might not interrupt us again when the timestamp is
- * captured.
+ * Returns true if all timestamps were handled, and false if any slots remain
+ * without a timestamp.
+ *
+ * After looping, if we still have waiting SKBs, return false. This may cause
+ * us effectively poll even when not strictly necessary. We do this because
+ * it's possible a new timestamp was requested around the same time as the
+ * interrupt. In some cases hardware might not interrupt us again when the
+ * timestamp is captured.
  *
  * Note that we only take the tracking lock when clearing the bit and when
  * checking if we need to re-queue this task. The only place where bits can be
@@ -697,7 +700,7 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 	u8 idx;
 
 	if (!ice_ptp_is_tx_tracker_init(tx))
-		return false;
+		return true;
 
 	ptp_port = container_of(tx, struct ice_ptp_port, tx);
 	pf = ptp_port_to_pf(ptp_port);
@@ -2449,10 +2452,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
  */
 bool ice_ptp_process_ts(struct ice_pf *pf)
 {
-	if (pf->ptp.port.tx.init)
-		return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
-
-	return false;
+	return ice_ptp_tx_tstamp(&pf->ptp.port.tx);
 }
 
 static void ice_ptp_periodic_work(struct kthread_work *work)
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

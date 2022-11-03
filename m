Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3EC618B0C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:02:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBD8C61060;
	Thu,  3 Nov 2022 22:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBD8C61060
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512959;
	bh=XjkI3B6qUvgvs+f0drHNum7UvWwEj6vfJgi6eNY40z0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1HaLA+jm7aUYWKB9NbkkTk8XaSSfCzMkR/awpMbkr08XNxlG80d+sm2/0Onlkk34v
	 OEsiZ3nrfee8/Q7wvNHZsz4JEW4rWsQUXe8JUtwtj5/pIFmi4Qe41oF1Np7lVtJ6LW
	 jr/0/VoKrMS2nudJsZfTF3dJX/QooZWrvd9KmYGQR7LPnkAeQ2hGOsO4rn+TqSf6d6
	 ut2dFPB633iULc+BrsGTd9W0cleGYo3MPQKtqH+mWmxIMaMV1G3fDR5APwuKn6wtTT
	 vGw/NK/wwOEBwL7rmA5pkuD+JCfBZ7dDVNA65JEngPiB+HhJ4Uu6BL33tZauqWcXjs
	 9Z1PPTPtJNvOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V0QChA0aHuX7; Thu,  3 Nov 2022 22:02:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F11F861048;
	Thu,  3 Nov 2022 22:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F11F861048
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 80DE01BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2095481F59
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2095481F59
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v56YpsRVlOsK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD5A581F66
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD5A581F66
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:01:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436987"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436987"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480280"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480280"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:39 -0700
Message-Id: <20221103220145.1851114-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512919; x=1699048919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K8N+JYXOzJy2Uo/xpmMGjY3HgrS4sD5u2BP/iZedbog=;
 b=gbhdkUCmY8HMKV05CxVYfVEYjOA024jKdQ4JhrwSeCc1zuY8y+c185Hz
 mzObhHJcNzRDbFnEACBA+LjGiqdXFXhCfouk7lVug3151+LxxgZpD6Yft
 zRzPojD5OzLxe1g32z9f4PcPxoR0C7qIoBYSuujvR38M/zPu9sUTS4ZC2
 2m1hj/Lj/hywRDRClifuEKxwMtO4EPcBbqxhtQcYQ2ipxbFosBBpwqajX
 qcfWy7VjKoCOrpgXLu44JiriomdDqPOMgyhk5gtqtQ6E1GdVhvTJjZKjt
 jdUzM5rU3+q8TtYzYZSE7Zt1kRLvkZPsrG1ucGnFpKK3MP1hWow8HDAoo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gbhdkUCm
Subject: [Intel-wired-lan] [PATCH net-next v2 09/15] ice: return true if Tx
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
No changes since v1

 drivers/net/ethernet/intel/ice/ice_ptp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index dbd4aacfcb0f..d9581472a139 100644
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
@@ -2455,10 +2458,7 @@ s8 ice_ptp_request_ts(struct ice_ptp_tx *tx, struct sk_buff *skb)
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

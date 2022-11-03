Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FC1618B14
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 23:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66BC981F66;
	Thu,  3 Nov 2022 22:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66BC981F66
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667512986;
	bh=8L+pc4Y66zpz1DTJ7p8gETBuj3OlxKkRo7FEFiCqVVU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tOg+qxmljClc4HA5yYr0RHO0SKszFtK3gnRe6PrF14yusFG8x03OM7sJeGafz1OAM
	 3DJLPJ1YXZuehbX9hgttk80MZViKDbOwB75QFQu7RnImszlHWGHqet8YSvQC0x4lOb
	 Ztrfx6tMdQAVtah/9bLcDFaQPiqZoMZ/Y+pQRAP4HRKe9kRO1Q0xy/UkcRSE91dUUK
	 wkCDJRvIC8JhQ6jCAxsh7jF9WG6xjT9n+WWQAuBqcrNRE0ia30vmFaMQvuVHFuuAsB
	 oT5Z6j56nZzNR8pxZsKz2Ys+uV+76B/9i2tBvFY0ZAplThgLt0FFxHFxw421J0SLqt
	 DAtUc+kwHNPAw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XMqSm-rKi6A3; Thu,  3 Nov 2022 22:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2CDB081EDE;
	Thu,  3 Nov 2022 22:03:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2CDB081EDE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 101701BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4EB681EDE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4EB681EDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z5zoCnG5g2DH for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B89781EDC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B89781EDC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 22:02:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="307436990"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="307436990"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="777480289"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="777480289"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.7])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 15:01:59 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Thu,  3 Nov 2022 15:01:41 -0700
Message-Id: <20221103220145.1851114-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.0.83.gd420dda05763
In-Reply-To: <20221103220145.1851114-1-jacob.e.keller@intel.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667512920; x=1699048920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z9ZWuMTU173Zt/sZGpjAWDpELhkKkJ2CdShiLcoHxLY=;
 b=N8GP7i0IYJ81NHjjKHvcc5/cb5gPjNrzD/1lDFb+3Hrp+AfNvZmQjDEL
 JPU0IT922G+1i7BEVb4imAhIgMz3zTcfytkQtwRxo5Y2zZp8OHamF7cau
 m/FCve5byIijIBF7aBN6UtbPnEGPMyDw6mEKXtDNaogcAUFC0HubsvBF7
 Mr2O6qjlKZTk80kkm+L1H93O3+2G9b7L+yHKK7E++r3TKXBu9z174JgLJ
 F7033AThrRD6pAd61aa/gWKF9umUDgMV/Jh05Ui+M+1UD6MIiQwLJsl3L
 W5Cl0284WhZ5l5bJRz6FQxLzriMidyTmqmO2/t5heaQT40xP8CiZugzQI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N8GP7i0I
Subject: [Intel-wired-lan] [PATCH net-next v2 11/15] ice: cleanup
 allocations in ice_ptp_alloc_tx_tracker
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

The ice_ptp_alloc_tx_tracker function must allocate the timestamp array and
the bitmap for tracking the currently in use indexes. A future change is
going to add yet another allocation to this function.

If these allocations fail we need to ensure that we properly cleanup and
ensure that the pointers in the ice_ptp_tx structure are NULL.

Simplify this logic by allocating to local variables first. If any
allocation fails, then free everything and exit. Only update the ice_ptp_tx
structure if all allocations succeed.

This ensures that we have no side effects on the Tx structure unless all
allocations have succeeded. Thus, no code will see an invalid pointer and
we don't need to re-assign NULL on cleanup.

This is safe because kernel "free" functions are designed to be NULL safe
and perform no action if passed a NULL pointer. Thus its safe to simply
always call kfree or bitmap_free even if one of those pointers was NULL.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1

 drivers/net/ethernet/intel/ice/ice_ptp.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5d69fc633322..110bd2ff67b1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -814,17 +814,22 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 static int
 ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 {
-	tx->tstamps = kcalloc(tx->len, sizeof(*tx->tstamps), GFP_KERNEL);
-	if (!tx->tstamps)
-		return -ENOMEM;
+	struct ice_tx_tstamp *tstamps;
+	unsigned long *in_use;
+
+	tstamps = kcalloc(tx->len, sizeof(*tstamps), GFP_KERNEL);
+	in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
+
+	if (!tstamps || !in_use) {
+		kfree(tstamps);
+		bitmap_free(in_use);
 
-	tx->in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
-	if (!tx->in_use) {
-		kfree(tx->tstamps);
-		tx->tstamps = NULL;
 		return -ENOMEM;
 	}
 
+	tx->tstamps = tstamps;
+	tx->in_use = in_use;
+
 	spin_lock_init(&tx->lock);
 
 	spin_lock(&tx->lock);
-- 
2.38.0.83.gd420dda05763

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6905F2E88
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Oct 2022 11:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF49481BA9;
	Mon,  3 Oct 2022 09:55:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF49481BA9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664790939;
	bh=t4iN6LPIRt4By4nZWJL4d3ROSddFTFlubt3sQq/kt0Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1sRVcRvZ5weHbLaCFQsPt+0PUQ3K12oREDk/hff31K2U+SEzmIC+UEih0CBrDXbyp
	 GtWkrC8UngsLtreqqu9JzpsGzFz+EFzbtC+EH6NC6ospifm1E4C9giM3ckcSAlwx5L
	 MLyR/jUvYeX5hZLXSLzDYQX5cT/20MgwB1T49Ka8odxSQxn9ifvBMpB2QbMFkAify4
	 vFo2JTQ95pGaJ/fGo7CaGLMvyUtoFSV6EgFa57a/Cg6q4AzYKJTIbudXgLgvfc22Tn
	 4R8+IM8YHVxH4kPPx6idEHfwLNE01Zn9fSDtBYipqSqxbPJHf0/2XoI7vwGNbdJ+Ey
	 6KzC3fXwLMjpg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1CdAOTrSCwSb; Mon,  3 Oct 2022 09:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8A3D81B36;
	Mon,  3 Oct 2022 09:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8A3D81B36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F25371BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D90E060B46
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D90E060B46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PSNFRhyAUQl7 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Oct 2022 09:55:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 170B560B4D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 170B560B4D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="289756757"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="289756757"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 02:55:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="765853278"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="765853278"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2022 02:55:27 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Oct 2022 11:55:19 +0200
Message-Id: <20221003095519.539390-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003095519.539390-1-karol.kolacinski@intel.com>
References: <20221003095519.539390-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664790929; x=1696326929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ETIBZcfxKLqcucuKjYOU5j0iqRuo+7XShGGY2k7l99A=;
 b=Hkha6Ozg7Lcb4OYudVXwCwOnUwtojlB2zapEYxt2Kkcqg/Zs41mbxosR
 zLMZqnvUA1SiClNsZLpwldUirZSpfdsN9PL3QCSwkfB2h93PUs1eyxBE1
 jM0k0SOlFEXppu7O+qJkOl1UG754ogi/rCFM9+UKOHHva7QDmW1Nz3Ojs
 PWyclRMfMUYHqp9NuM8lGQpAjmySAB7x6YJ9WRHA3jnwbf03gn0r7idjr
 rwZFv4+qWV7qyhgL2+2pKjKmYHDdoU8or5ne8TUHfJLrUzH88kbgwohR4
 zFeqapaA9W1Dpkiv9TsscNgc0XerjIaiM7BB4cp/DkJxYpdVA45U5kP0u
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hkha6Ozg
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: Remove gettime HW
 semaphore
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Reading the time should not block other accesses to the PTP hardware.
There isn't a significant risk of reading bad values while another
thread is modifying the clock. Removing the hardware lock around the
gettime allows multiple application threads to read the clock time with
less contention.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 31 +++---------------------
 1 file changed, 3 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9d1afeca9624..1f481d455134 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -979,26 +979,6 @@ static void ice_ptp_reset_cached_phctime(struct ice_pf *pf)
 	ice_ptp_flush_tx_tracker(pf, &pf->ptp.port.tx);
 }
 
-/**
- * ice_ptp_read_time - Read the time from the device
- * @pf: Board private structure
- * @ts: timespec structure to hold the current time value
- * @sts: Optional parameter for holding a pair of system timestamps from
- *       the system clock. Will be ignored if NULL is given.
- *
- * This function reads the source clock registers and stores them in a timespec.
- * However, since the registers are 64 bits of nanoseconds, we must convert the
- * result to a timespec before we can return.
- */
-static void
-ice_ptp_read_time(struct ice_pf *pf, struct timespec64 *ts,
-		  struct ptp_system_timestamp *sts)
-{
-	u64 time_ns = ice_ptp_read_src_clk_reg(pf, sts);
-
-	*ts = ns_to_timespec64(time_ns);
-}
-
 /**
  * ice_ptp_write_init - Set PHC time to provided value
  * @pf: Board private structure
@@ -1835,15 +1815,10 @@ ice_ptp_gettimex64(struct ptp_clock_info *info, struct timespec64 *ts,
 		   struct ptp_system_timestamp *sts)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	struct ice_hw *hw = &pf->hw;
+	u64 time_ns;
 
-	if (!ice_ptp_lock(hw)) {
-		dev_err(ice_pf_to_dev(pf), "PTP failed to get time\n");
-		return -EBUSY;
-	}
-
-	ice_ptp_read_time(pf, ts, sts);
-	ice_ptp_unlock(hw);
+	time_ns = ice_ptp_read_src_clk_reg(pf, sts);
+	*ts = ns_to_timespec64(time_ns);
 
 	return 0;
 }
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

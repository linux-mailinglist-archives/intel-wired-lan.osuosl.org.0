Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB56B54F1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 15:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47B0882317;
	Fri, 12 Sep 2025 13:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NxshcDp2NLf5; Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B528B823AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757683038;
	bh=AHAHzkAIIIHdDxFVRBwzM12zbu5rvxa7sGUUZszDoUQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V+Kh22nXDwZA8uS3FZ2xCdd/0sCjoEPdKh56bicDTAu8j4IJSCgb1AEYFnQR/VghK
	 l66n7deJni3qUs+0Lslx+zD2njg1N3VupdwnqdAlg74Qm70JL1pztwwp+sWrXTvm+L
	 IGQy13lDAoanWe/STbNGcSF1lQCU/UlR7kPhUNS8L9Li6H3TJEH/lk28y4KEqYVwzW
	 rdMPsQRx0SZ/cL2RcwKKQaoTbPbz+zU/idkNWZZDWhE4N/3gHpVFvTqymhzUSgKVOh
	 QpjVuDQb6PywcVZb8R8FHzwGX8urEYjNlP/C/2TksEEqggMg2C4sGz+OutCQJp6y5P
	 T8yldWkdTjZyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B528B823AB;
	Fri, 12 Sep 2025 13:17:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3A8BD12D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 20CD38230A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nsD-bvzfFPvP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 13:17:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0AA3D8230C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AA3D8230C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AA3D8230C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 13:17:14 +0000 (UTC)
X-CSE-ConnectionGUID: Y1sw8/ABSBSfshBT+639OA==
X-CSE-MsgGUID: IS6yyEeUQ8K8AAmEtGapOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="85461417"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="85461417"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 06:17:14 -0700
X-CSE-ConnectionGUID: RDkGcKA2RlukGmBI2tbb1A==
X-CSE-MsgGUID: R07mJCgWS5mICKWxcLDOWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173131222"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa006.jf.intel.com with ESMTP; 12 Sep 2025 06:17:12 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 516162FC72;
 Fri, 12 Sep 2025 14:17:11 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 12 Sep 2025 15:06:22 +0200
Message-Id: <20250912130627.5015-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
References: <20250912130627.5015-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757683035; x=1789219035;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zEDT2zk6sDw9n7wb2DsAGhqz7IAju+kAkTiyHD5PYg4=;
 b=IGdITMgrUAL/VU1VbZzN28Ayrl4RKOSV1ekWYy3V3WaSPsrTgCkYWXZf
 4G3wI96g9W62vSAVV2JUlEZSASUCUiz/7gYCRgP5+tm5TeMfuc64pY8JN
 /l8kBe3+rM8LSS5BnxjP+uhUUFQILjPiU4b6m7vkrR+mC6Uuxa0Ei3aR9
 Ue75EF2JhQXmzKyewfgiWVUY6Lwx9W6DdFZHWC0rPYXt3B675j31zyXwR
 hi/V1Ag3pg/EQYuFd99EtsAtzH89iUYwqs8n8wahnQ5baBg94laSJCUAw
 OIcNeqTfvPuRVcslLxRdfj8On2D3yT0SMZKllbZF8Zqmx0FMwWM8QGZJN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IGdITMgr
Subject: [Intel-wired-lan] [PATCH iwl-next 4/9] ice: ice_init_pf: destroy
 mutexes and xarrays on memory alloc failure
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Unroll actions of ice_init_pf() when it fails.
ice_deinit_pf() happens to be perfect to call here.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3cf79afff1bd..f81603a754f9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3975,6 +3975,8 @@ u16 ice_get_avail_rxq_count(struct ice_pf *pf)
  */
 static void ice_deinit_pf(struct ice_pf *pf)
 {
+	/* note that we unroll also on ice_init_pf() failure here */
+
 	mutex_destroy(&pf->lag_mutex);
 	mutex_destroy(&pf->adev_mutex);
 	mutex_destroy(&pf->sw_mutex);
@@ -4074,16 +4076,6 @@ static int ice_init_pf(struct ice_pf *pf)
 	init_waitqueue_head(&pf->reset_wait_queue);
 
 	mutex_init(&pf->avail_q_mutex);
-	pf->avail_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
-	if (!pf->avail_txqs)
-		return -ENOMEM;
-
-	pf->avail_rxqs = bitmap_zalloc(pf->max_pf_rxqs, GFP_KERNEL);
-	if (!pf->avail_rxqs) {
-		bitmap_free(pf->avail_txqs);
-		pf->avail_txqs = NULL;
-		return -ENOMEM;
-	}
 
 	mutex_init(&pf->vfs.table_lock);
 	hash_init(pf->vfs.table);
@@ -4096,7 +4088,16 @@ static int ice_init_pf(struct ice_pf *pf)
 	xa_init(&pf->dyn_ports);
 	xa_init(&pf->sf_nums);
 
+	pf->avail_txqs = bitmap_zalloc(pf->max_pf_txqs, GFP_KERNEL);
+	pf->avail_rxqs = bitmap_zalloc(pf->max_pf_rxqs, GFP_KERNEL);
+	if (!pf->avail_txqs || !pf->avail_rxqs)
+		goto undo_init;
+
 	return 0;
+undo_init:
+	/* deinit handles half-initialized pf just fine */
+	ice_deinit_pf(pf);
+	return -ENOMEM;
 }
 
 /**
-- 
2.39.3


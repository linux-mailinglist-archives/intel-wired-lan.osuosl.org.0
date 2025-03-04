Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85973A4DBE5
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 12:09:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DD7E60B72;
	Tue,  4 Mar 2025 11:09:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h1RKJ2x9udz8; Tue,  4 Mar 2025 11:09:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63040606D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741086558;
	bh=Jts6suXiKgC/gB6Mf++jiVjPpLiM6XNVp254C6VgELM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UOVgp7z6oGg8cBjLPoMj+5hKOjDP67Y2GVN2JExBD5jRC3qvse8K+Cmrh49qQtrS8
	 r1u9uE9r9lhK0UPfwO6haTvmNSVh1aNjSpnM3Rd57TxoQWhNEea7SDhovyVR8qLjM/
	 MvT6W4n3Tt4cjy1BLG1bZDVoIn+doMx8mvSVKItEZt3wuWbe4vq9ZCjtWvhCXpRC6M
	 YIDrLIEx6NwVaRKMh7jXCY17FxsyuhWpUtKOdCYVplKeYm1F/JtzopS3kNhXkGIRGk
	 ninNLkqGrSd6aBlVm0xyoMPERTcQ+jTde9eRnz8QwKzrvqhrUIaHO3IjqNH2k7oVMa
	 fRWvhP0Ln8Hbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63040606D7;
	Tue,  4 Mar 2025 11:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F2A3C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22A3B403DE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id am3zluxwKEs2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 11:09:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23CEC403C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23CEC403C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23CEC403C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 11:09:15 +0000 (UTC)
X-CSE-ConnectionGUID: PpmZ4YlKRKimIabzWY0JIQ==
X-CSE-MsgGUID: oF5cgrafTACRprSUeW1YsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41247025"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41247025"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 03:09:15 -0800
X-CSE-ConnectionGUID: TU/6t8OCSyaVmiPD9I2TgA==
X-CSE-MsgGUID: fnxn7LeyQnmxskOdkQpT8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118341376"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by fmviesa007.fm.intel.com with ESMTP; 04 Mar 2025 03:09:13 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Simon Horman <horms@kernel.org>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue,  4 Mar 2025 12:08:33 +0100
Message-ID: <20250304110833.95997-6-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250304110833.95997-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741086555; x=1772622555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3GlyvXMisaidBEam8T+nDgJqMed2mKAfCnPGZWzpKdY=;
 b=WD+xSpbViJGFh/V2+gk2bPCFllIpTNPFs+Wd10Wh4bH7m1F9UNMpWGwn
 L554vO71OBtDY49+AUjRqmlmTQURAEofF+yWoz8/TrhrXjF1iyKBU1Xch
 4x/cyerm8rryYWSjck1AnWkC90S3TVxaEisRXOP9CL03iLnOyBmsgvb/r
 DZs8L4kiWjXpYBKF+bcOtAe7Qx3ai/TSxV3+ZOmrOW2uTk4IxaDCJxCUH
 VPf7YZumNAr+1QbdwZRtJN3NEpHKcPrpX2B0JiwSCTrhzve0FJQOM/z6t
 v84KvQF8iG4YxDilP290/DoBuDffH9OOLglxxR+kMXAJHaA1cz/ccGa91
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WD+xSpbV
Subject: [Intel-wired-lan] [iwl-net v3 3/5] ice: validate queue quanta
 parameters to prevent OOB access
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

From: Jan Glaza <jan.glaza@intel.com>

Add queue wraparound prevention in quanta configuration.
Ensure end_qid does not overflow by validating start_qid and num_queues.

Fixes: 015307754a19 ("ice: Support VF queue rate limit and quanta size configuration")
Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jan Glaza <jan.glaza@intel.com>
Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 343f2b4b0dc5..adb1bf12542f 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1903,13 +1903,21 @@ static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
  */
 static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
 {
+	u16 quanta_prof_id, quanta_size, start_qid, num_queues, end_qid, i;
 	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	u16 quanta_prof_id, quanta_size, start_qid, end_qid, i;
 	struct virtchnl_quanta_cfg *qquanta =
 		(struct virtchnl_quanta_cfg *)msg;
 	struct ice_vsi *vsi;
 	int ret;
 
+	start_qid = qquanta->queue_select.start_queue_id;
+	num_queues = qquanta->queue_select.num_queues;
+
+	if (check_add_overflow(start_qid, num_queues, &end_qid)) {
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err;
+	}
+
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto err;
@@ -1921,8 +1929,6 @@ static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	end_qid = qquanta->queue_select.start_queue_id +
-		  qquanta->queue_select.num_queues;
 	if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
 	    end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
 		dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
@@ -1951,7 +1957,6 @@ static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
 		goto err;
 	}
 
-	start_qid = qquanta->queue_select.start_queue_id;
 	for (i = start_qid; i < end_qid; i++)
 		vsi->tx_rings[i]->quanta_prof_id = quanta_prof_id;
 
-- 
2.47.0


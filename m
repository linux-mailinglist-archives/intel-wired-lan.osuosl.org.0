Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF59A438C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Feb 2025 10:09:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8FE1A80FA1;
	Tue, 25 Feb 2025 09:09:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ihSRw7YBDM0T; Tue, 25 Feb 2025 09:09:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52DE780EAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740474572;
	bh=gkHNOMgC+8crkN0f4/7nnd9KEh5chLbhsCJIEKQQRNo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mMxLD3PodGZedZH8OR5pfQEnX4avLHoMlH8qokZ8Kv0qjCYgQ+NO159WPasPg5dFi
	 vN2GIkwdgyxhG0Z2GchFwp5AmX9O2FRZUYabKJ3W1a9zbdGt9GZS3eHbL9uIgRRPoK
	 FOOyiaml6yf4N3a6+faJVzkV5n7zpljU9cApoa1fswo/+JtzbjojN1uzM9011fQkd2
	 fdLArbM1rFszrbra1oxr2AmV7adVsw2YmWn/JagNBDcPGpcmBW7s6ID7U3Xy8eeUFI
	 pNdFzxieU0gqlOrHIvJv53anLIePA6247Wa5chrZqQ+vhnbxsgugET4+vl8b0SxMQ5
	 PgG1nFCY9vmQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52DE780EAA;
	Tue, 25 Feb 2025 09:09:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A99282DE0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E0DB80453
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5rUIGy9BFAM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Feb 2025 09:09:29 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=martyna.szapar-mudlaw@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8855181DF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8855181DF0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8855181DF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Feb 2025 09:09:29 +0000 (UTC)
X-CSE-ConnectionGUID: gjGhy6+DSeuet+6M+Ib4AA==
X-CSE-MsgGUID: o8yGYqz5TVOgajz055vZLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="58810339"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="58810339"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 01:09:29 -0800
X-CSE-ConnectionGUID: HxS2/pS1Tqm2YBs5XkgZLA==
X-CSE-MsgGUID: Gs5F6aekTIGmUa9YBhzKxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121275661"
Received: from enterprise.igk.intel.com ([10.102.20.175])
 by orviesa003.jf.intel.com with ESMTP; 25 Feb 2025 01:09:28 -0800
From: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jan Glaza <jan.glaza@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>
Date: Tue, 25 Feb 2025 10:08:47 +0100
Message-ID: <20250225090847.513849-6-martyna.szapar-mudlaw@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
References: <20250225090847.513849-2-martyna.szapar-mudlaw@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740474569; x=1772010569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qvH744x9n/EIaRK81PRkt4ItVtZ4IA+MhzAIe0c3AxQ=;
 b=Cz+80rHlJBZB47NT+xlm6zXG5k7ZFeWNqFgGIQLyHY+tHEJXN5bE8Yd6
 KMFkPYvCbvrw1MWSHMCFudRE++rQtcNbu9docf0gPtSiRK5H7hPu2t+tR
 kRugsdG6h7AqkkoDVymoMFYPDL+A+W3L6GDWxUNX5dNVFf3ziEB29TwDO
 ZMhRLaa+9KSB2PXNEf/lrpHMm2+VNDVkpWJIghiGuiZXC0BYkZ8JqgPVB
 mExZXfY4jT0BXsYJ6TAm/dkgdGTwYwPt11xRDW1iYQb7v4+1tOGMtNFGB
 h4X6TcwuCwcjp2QAFWM06C5S9zBBtBr4uMUrVPfMDtalgTYRF1sA/2uo4
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Cz+80rHl
Subject: [Intel-wired-lan] [iwl-net v2 3/5] ice: validate queue quanta
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


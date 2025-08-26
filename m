Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62792B37324
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 21:34:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 460E540701;
	Tue, 26 Aug 2025 19:34:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7SuT0TZQ_qgU; Tue, 26 Aug 2025 19:34:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7179D402BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756236854;
	bh=zwVghA8LxKMdrDQF1l5oKuHrEXY+z0taCgyVuKBOTZ4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DMXh74ouue5JfEf+4crvE6r371RYYStKGsS7RNSt47NOTISTm3ZFqn+SbKIarRpS7
	 aqvLZvzoCjox8uyTZR9tlD2JOGTb1J+gbkmsgkjCqIRoQoBQmvb3xP+xa4ib6JT3Wk
	 Nl47mWog9YKJ3Qh3zTF9C9qSPRWspaap52EXGhMtKr1rKC8QmVgLwKcf3U/Cdq6usC
	 0llsVYW8lhgUN7rIGwijBe6AARjME9TOrDrrVhjQv2gRET04q1NIIQWMwYV5+y7Uit
	 lAY5kDOjMVXF33VsSiZb019TYKVvE8mX3N4TC8X6z37M1Tk1phe/alSWahGy7bAx+/
	 qjJDBPXL5jxyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7179D402BD;
	Tue, 26 Aug 2025 19:34:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E86C2B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 19:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE3F7400A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 19:34:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MSDY4yfgzG4K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 19:34:12 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 26 Aug 2025 19:34:12 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 316864011D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 316864011D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 316864011D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 19:34:12 +0000 (UTC)
X-CSE-ConnectionGUID: FhAn4KcYRLeuY9OP66IQgg==
X-CSE-MsgGUID: AVKOumELR66gjhaVDU1igA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="58636503"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="58636503"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 12:27:04 -0700
X-CSE-ConnectionGUID: I2k9tdPeTlGSlHVjN1jM5w==
X-CSE-MsgGUID: OCRamd7lR9a1fRBe9Sk20w==
X-ExtLoop1: 1
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 12:27:03 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 26 Aug 2025 13:25:45 +0200
Message-ID: <20250826112545.495010-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756236853; x=1787772853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dt1bKq4LnFakun05pWTV3NKJ/Q/htsXxRcfEkoA7Zek=;
 b=PK4IGJ0TkDYPHYAXB8hoUWELKouk4MvDWalSFg47EKzt1t38aAzHG+Xk
 KYPAiZDw9IYby3Yk8DD8t1UuWMOpbFXhjuOJlw42yTAT0kopWd5WrjZah
 a139Z6u9nJcnAfvREHP/qXvHPbFDzSInvDbkAIr6yWxVP3ayJ2G/1C5HV
 lSNQDCRbSyNB5i7KtHSmYNpJxhFTmYwRaZvMxZxrOZVBvIwWrwEcURDRJ
 Xb/ybVWTfWKnCV0srIJEo3o+H+Fl4nEAhctrW+yL8WCYfdT2kBWY8bcy9
 7Rw6DfsTgEwzvuml1jWY+4uXHFoEflHjQcCDV+mOarJFjMWk7aXH9LRsj
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PK4IGJ0T
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Cleanup legacy code in VF
 reset error path
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

In a previous commit (see Fixes tag), code to handle the LAG part
of a VF reset was refactored and moved into helper functions.
This deprecated the function ice_lag_move_new_vf_nodes().  The
cleanup missed a call to this function in the error path of
ice_vc_cfg_qs_msg().

In the case that would end in the error path, a NULL pointer would
be encountered due to the empty list of netdevs for members of the
aggregate.

Remove the unnecessary call to ice_lag_move_new_vf_nodes(), and since
this is the only call to this function, remove the function as well.

Fixes: 351d8d8ab6af ("ice: breakout common LAG code into helpers")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
This goes to -next as the code is not yet present in -net
---
 drivers/net/ethernet/intel/ice/ice_lag.c     | 55 --------------------
 drivers/net/ethernet/intel/ice/ice_lag.h     |  1 -
 drivers/net/ethernet/intel/ice/virt/queues.c |  2 -
 3 files changed, 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 80312e1dcf7f..aebf8e08a297 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -789,61 +789,6 @@ ice_lag_move_single_vf_nodes(struct ice_lag *lag, u8 oldport, u8 newport,
 		ice_lag_move_vf_node_tc(lag, oldport, newport, vsi_num, tc);
 }
 
-/**
- * ice_lag_move_new_vf_nodes - Move Tx scheduling nodes for a VF if required
- * @vf: the VF to move Tx nodes for
- *
- * Called just after configuring new VF queues. Check whether the VF Tx
- * scheduling nodes need to be updated to fail over to the active port. If so,
- * move them now.
- */
-void ice_lag_move_new_vf_nodes(struct ice_vf *vf)
-{
-	struct ice_lag_netdev_list ndlist;
-	u8 pri_port, act_port;
-	struct ice_lag *lag;
-	struct ice_vsi *vsi;
-	struct ice_pf *pf;
-
-	vsi = ice_get_vf_vsi(vf);
-
-	if (WARN_ON(!vsi))
-		return;
-
-	if (WARN_ON(vsi->type != ICE_VSI_VF))
-		return;
-
-	pf = vf->pf;
-	lag = pf->lag;
-
-	mutex_lock(&pf->lag_mutex);
-	if (!lag->bonded)
-		goto new_vf_unlock;
-
-	pri_port = pf->hw.port_info->lport;
-	act_port = lag->active_port;
-
-	if (lag->upper_netdev)
-		ice_lag_build_netdev_list(lag, &ndlist);
-
-	if (lag->bonded && lag->primary && !list_empty(lag->netdev_head)) {
-		if (lag->bond_aa &&
-		    ice_is_feature_supported(pf, ICE_F_SRIOV_AA_LAG))
-			ice_lag_aa_failover(lag, ICE_LAGS_IDX, NULL);
-
-		if (!lag->bond_aa &&
-		    ice_is_feature_supported(pf, ICE_F_SRIOV_LAG) &&
-		    pri_port != act_port)
-			ice_lag_move_single_vf_nodes(lag, pri_port, act_port,
-						     vsi->idx);
-	}
-
-	ice_lag_destroy_netdev_list(lag, &ndlist);
-
-new_vf_unlock:
-	mutex_unlock(&pf->lag_mutex);
-}
-
 /**
  * ice_lag_move_vf_nodes - move Tx scheduling nodes for all VFs to new port
  * @lag: lag info struct
diff --git a/drivers/net/ethernet/intel/ice/ice_lag.h b/drivers/net/ethernet/intel/ice/ice_lag.h
index e2a0a782bdd7..f77ebcd61042 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.h
+++ b/drivers/net/ethernet/intel/ice/ice_lag.h
@@ -82,7 +82,6 @@ struct ice_lag_work {
 	} info;
 };
 
-void ice_lag_move_new_vf_nodes(struct ice_vf *vf);
 void ice_lag_aa_failover(struct ice_lag *lag, u8 dest, struct ice_pf *e_pf);
 int ice_init_lag(struct ice_pf *pf);
 void ice_deinit_lag(struct ice_pf *pf);
diff --git a/drivers/net/ethernet/intel/ice/virt/queues.c b/drivers/net/ethernet/intel/ice/virt/queues.c
index 5eb34030426c..9c8daffb66bf 100644
--- a/drivers/net/ethernet/intel/ice/virt/queues.c
+++ b/drivers/net/ethernet/intel/ice/virt/queues.c
@@ -905,8 +905,6 @@ int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
 	ice_lag_complete_vf_reset(pf->lag, act_prt);
 	mutex_unlock(&pf->lag_mutex);
 
-	ice_lag_move_new_vf_nodes(vf);
-
 	/* send the response to the VF */
 	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
 				     VIRTCHNL_STATUS_ERR_PARAM, NULL, 0);
-- 
2.49.0


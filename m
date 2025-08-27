Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 609A7B387D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 18:35:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E65A8146D;
	Wed, 27 Aug 2025 16:35:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WOxgy8b-_TJg; Wed, 27 Aug 2025 16:35:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E30681489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756312546;
	bh=nPAR32/Y52jiYiY3dOnQJff2rBW9N5Yx85OB7ExRjek=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=M5BRr8Om7jENTjbx8SeydhogjYJijEPVGRe9E1Je50Cqo4nd7z+zF+rCpXPQ/ygaA
	 QIF70uIuBAw4PPUJ44fgh43fQkPDoxj03o1wGYQsnofIi8KPeQMQr9qKScY7JvSKF7
	 AY5/6Ypcu8UcogOgOTCeH1vHaUKqFXmAoIWEIBOCGttUnRl3z03fVGKIMaRHjHVyvG
	 W3A3btcIcudmU/6QG1RU08aMgKArINTW1MH89BmYvKM8qAqJzcTx53VAMJK+rGXF0d
	 3fI2q8UInnDAb+9CsGx2Rh75od2xWaYGZFLQfsKLx6IXplGVlw5lI65mIIxKYBLMSD
	 rSGwlgjxsZJ4A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E30681489;
	Wed, 27 Aug 2025 16:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 507BC114
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 35D1481464
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:35:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QJKQv2rf8QzB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 16:35:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 75F9E8145C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75F9E8145C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75F9E8145C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:35:43 +0000 (UTC)
X-CSE-ConnectionGUID: 8uye0ZqoRHWshwo+qJnakw==
X-CSE-MsgGUID: OmCbd9CMSaehxWyTVBn0LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="62213878"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="62213878"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:35:43 -0700
X-CSE-ConnectionGUID: jqt/oTnTT0OluzBEPo5WAA==
X-CSE-MsgGUID: kdUsrF3KRluQ/EN0q5vhqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170261840"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:35:42 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>
Date: Wed, 27 Aug 2025 10:34:23 +0200
Message-ID: <20250827083423.566307-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756312544; x=1787848544;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZbwNvv3KTvPeKbxWnFgw5K1piobs/Z7uNjQCM7R/Cvg=;
 b=aalzMmVbsOQgn4CncJZ9t7LWuVbGGdZi6rSR5vglJqPrk/R3rj1i/J7V
 I02E9hAnZp7cOswFWT05YzHR9QsThhkmcQ+46+AQ2/w610NfIcqC7OPE7
 Uw24lM2R1iL0OawZNiRqmtiZZW4tJdUFomeVprR8y3pz+Egb6whTa/tiN
 RYH4W1scnM4lk99umKSX7NrTwv6sKEmoiqLCdL4eee3JdFdFRJEL/PaRU
 a69dDRoEcH1dX+iEoZYyHWPIuXS0vlkipRFjF87SW4NElA1JNCfJAaV+N
 zTymbR4jww6mh9sf8GfwOt5hlWnuZlsNFLlZ4hv1UabIlxqN8kTZRWz61
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aalzMmVb
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Remove deprecated
 ice_lag_move_new_vf_nodes() call
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

Moving the code to handle the LAG part of a VF reset to helper
functions deprecated the function ice_lag_move_new_vf_nodes().
The cleanup missed a call to this function in the error path of
ice_vc_cfg_qs_msg().

In the case that would end in the error path, a NULL pointer would
be encountered due to the empty list of netdevs for members of the
aggregate.

Remove the unnecessary call to ice_lag_move_new_vf_nodes(), and since
this is the only call to this function, remove the function as well.

Fixes: 351d8d8ab6af ("ice: breakout common LAG code into helpers")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
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


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95021908A1F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 12:36:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B94D84294;
	Fri, 14 Jun 2024 10:36:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sqk78Fdl1YAe; Fri, 14 Jun 2024 10:36:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 458048428F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718361372;
	bh=ldduni7T/jBbW/ClwB1JbQtENjBWTAnOt276OUvnrjE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=bBScXq12rPeaDib60l3Yqhzdf8AT1bNVE9dO+lbO6o+tQOKabIYlTXiNEji8cbapc
	 RBjmQmOAjSq22DWDcyCeavxhgx/QlVayaZZ9LsbrOMC2MzhXgL4OGxhGeHkxFVU5EX
	 47hGTnxBC4PHmbZwZ2DQxGMdlvMuuNYFseaB8/R70gIwN3LUaLuYNIkiF3shO2N34Q
	 VcdqQjfOc+8YyPi06rvKewQTLjLzSS3Yu0Vf7E2Kb9kuB5H8riR0sTeifuV9hwQDsK
	 Juhgc5uqIKzehU6qDJpvuG320ppGFFIuKcWy//UUM8u6X7g7vwPVpJuiQzH6o/0Veo
	 yfBGPt94TH9pg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 458048428F;
	Fri, 14 Jun 2024 10:36:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4DA41BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE075409C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:36:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 88sJs64DsFDB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 10:36:07 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 33F7C40936
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33F7C40936
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33F7C40936
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:36:06 +0000 (UTC)
X-CSE-ConnectionGUID: YKyqz315S+iu7GDDLwMqyg==
X-CSE-MsgGUID: fMKSsA9eS069YenXOiLinw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25914775"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25914775"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:36:06 -0700
X-CSE-ConnectionGUID: W6uRh7nlTDGwxy3MLx4H4Q==
X-CSE-MsgGUID: x14KlpsiQwCgRpW3XGrO+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44877775"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 14 Jun 2024 03:36:04 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 7F78327BD9;
 Fri, 14 Jun 2024 11:36:02 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jun 2024 12:38:11 +0200
Message-ID: <20240614103811.1178779-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718361367; x=1749897367;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8hPSgz8TokwE4PHWO1sb6eF6cPA0DdeD2Sv5ga5VjzI=;
 b=Wh9NRzJkYp6ylMt3mAOfDBu+IxThU79TLwNZd8ePkRLrPrY2QFOJlF83
 5sHZDOwAH8oxgZAWzVd8I+7S5CrAg69lSrl0MhW2N9EmvMtVC+2jg6GiQ
 IUF1SicnHOi8jssPXXmxXrCqymqo81QbTwJl74OMebNKTCe63DGwSOW7Z
 Z7lw3j7akRwzw7Jgs2q2sT5cpntyohyJAbStKcgAXLOjXbovA8MIb+Kqq
 1MBDK0ScBIJsNsAWQl7EXx1KbkWCnb+ZmB24DF6a68TC8dH51M9raaCXy
 UvfLQ2GJiYLfN5pWrjTgNpDGK/ocIujkuMvDMRz776Ca8qT2i+IUNrwX0
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wh9NRzJk
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Distinguish driver reset
 and removal for AQ shutdown
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
Cc: Piotr Gardocki <piotrx.gardocki@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Gardocki <piotrx.gardocki@intel.com>

Admin queue command for shutdown AQ contains a flag to indicate driver
unload. However, the flag is always set in the driver, even for resets. It
can cause the firmware to consider driver as unloaded once the PF reset is
triggered on all ports of device, which could lead to unexpected results.

Add an additional function parameter to functions that shutdown AQ,
indicating whether the driver is actually unloading.

Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.h   |  2 +-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 19 +++++++++++--------
 drivers/net/ethernet/intel/ice/ice_main.c     |  6 +++---
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index 9a91f71ab727..e03475408a02 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -24,7 +24,7 @@ int ice_check_reset(struct ice_hw *hw);
 int ice_reset(struct ice_hw *hw, enum ice_reset_req req);
 int ice_create_all_ctrlq(struct ice_hw *hw);
 int ice_init_all_ctrlq(struct ice_hw *hw);
-void ice_shutdown_all_ctrlq(struct ice_hw *hw);
+void ice_shutdown_all_ctrlq(struct ice_hw *hw, bool unloading);
 void ice_destroy_all_ctrlq(struct ice_hw *hw);
 int
 ice_clean_rq_elem(struct ice_hw *hw, struct ice_ctl_q_info *cq,
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index ca80b34f2f8a..ffaa6511c455 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -687,10 +687,12 @@ struct ice_ctl_q_info *ice_get_sbq(struct ice_hw *hw)
  * ice_shutdown_ctrlq - shutdown routine for any control queue
  * @hw: pointer to the hardware structure
  * @q_type: specific Control queue type
+ * @unloading: is the driver unloading itself
  *
  * NOTE: this function does not destroy the control queue locks.
  */
-static void ice_shutdown_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
+static void ice_shutdown_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type,
+			       bool unloading)
 {
 	struct ice_ctl_q_info *cq;
 
@@ -698,7 +700,7 @@ static void ice_shutdown_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
 	case ICE_CTL_Q_ADMIN:
 		cq = &hw->adminq;
 		if (ice_check_sq_alive(hw, cq))
-			ice_aq_q_shutdown(hw, true);
+			ice_aq_q_shutdown(hw, unloading);
 		break;
 	case ICE_CTL_Q_SB:
 		cq = &hw->sbq;
@@ -717,20 +719,21 @@ static void ice_shutdown_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
 /**
  * ice_shutdown_all_ctrlq - shutdown routine for all control queues
  * @hw: pointer to the hardware structure
+ * @unloading: is the driver unloading itself
  *
  * NOTE: this function does not destroy the control queue locks. The driver
  * may call this at runtime to shutdown and later restart control queues, such
  * as in response to a reset event.
  */
-void ice_shutdown_all_ctrlq(struct ice_hw *hw)
+void ice_shutdown_all_ctrlq(struct ice_hw *hw, bool unloading)
 {
 	/* Shutdown FW admin queue */
-	ice_shutdown_ctrlq(hw, ICE_CTL_Q_ADMIN);
+	ice_shutdown_ctrlq(hw, ICE_CTL_Q_ADMIN, unloading);
 	/* Shutdown PHY Sideband */
 	if (ice_is_sbq_supported(hw))
-		ice_shutdown_ctrlq(hw, ICE_CTL_Q_SB);
+		ice_shutdown_ctrlq(hw, ICE_CTL_Q_SB, unloading);
 	/* Shutdown PF-VF Mailbox */
-	ice_shutdown_ctrlq(hw, ICE_CTL_Q_MAILBOX);
+	ice_shutdown_ctrlq(hw, ICE_CTL_Q_MAILBOX, unloading);
 }
 
 /**
@@ -762,7 +765,7 @@ int ice_init_all_ctrlq(struct ice_hw *hw)
 			break;
 
 		ice_debug(hw, ICE_DBG_AQ_MSG, "Retry Admin Queue init due to FW critical error\n");
-		ice_shutdown_ctrlq(hw, ICE_CTL_Q_ADMIN);
+		ice_shutdown_ctrlq(hw, ICE_CTL_Q_ADMIN, true);
 		msleep(ICE_CTL_Q_ADMIN_INIT_MSEC);
 	} while (retry++ < ICE_CTL_Q_ADMIN_INIT_TIMEOUT);
 
@@ -843,7 +846,7 @@ static void ice_destroy_ctrlq_locks(struct ice_ctl_q_info *cq)
 void ice_destroy_all_ctrlq(struct ice_hw *hw)
 {
 	/* shut down all the control queues first */
-	ice_shutdown_all_ctrlq(hw);
+	ice_shutdown_all_ctrlq(hw, true);
 
 	ice_destroy_ctrlq_locks(&hw->adminq);
 	if (ice_is_sbq_supported(hw))
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f38a30775a2e..5e84de0d4799 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -624,7 +624,7 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
 	if (hw->port_info)
 		ice_sched_clear_port(hw->port_info);
 
-	ice_shutdown_all_ctrlq(hw);
+	ice_shutdown_all_ctrlq(hw, false);
 
 	set_bit(ICE_PREPARED_FOR_RESET, pf->state);
 }
@@ -5484,7 +5484,7 @@ static void ice_prepare_for_shutdown(struct ice_pf *pf)
 		if (pf->vsi[v])
 			pf->vsi[v]->vsi_num = 0;
 
-	ice_shutdown_all_ctrlq(hw);
+	ice_shutdown_all_ctrlq(hw, true);
 }
 
 /**
@@ -7755,7 +7755,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 err_sched_init_port:
 	ice_sched_cleanup_all(hw);
 err_init_ctrlq:
-	ice_shutdown_all_ctrlq(hw);
+	ice_shutdown_all_ctrlq(hw, false);
 	set_bit(ICE_RESET_FAILED, pf->state);
 clear_recovery:
 	/* set this bit in PF state to control service task scheduling */
-- 
2.45.0


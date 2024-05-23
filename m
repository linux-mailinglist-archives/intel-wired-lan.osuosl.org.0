Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3118CDBB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 23:01:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C371A408B5;
	Thu, 23 May 2024 21:01:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id az3gJ1q6rZuU; Thu, 23 May 2024 21:01:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7E0C408BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716498079;
	bh=HPywVNr3Nhd+GhYF8w2ZVthK+RcRT2v1DDSBGID6fgk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=1HC+xaRqbr3pfIJVDGULV4L0S5Rh0ZcWeWrUbbw+p9MfqpTnZWMRyxdeU8daR/qW9
	 PPJD1gc5pL9jwKNxUJuYaq6zNihFVO+h2DluaSb4OBdu/kjRXJrmKkuvdCvm1cHIi9
	 13pNIuZIpWbLVjkSHR0pa5eR2h0LTrkumk5Bf6iEr/+31v903d7bYoJw7VxMsMKDxA
	 EndFvwCaRjFBXPCCDWVFKPlhNLUObb1Euj7uwcwUa90dPevxGqT2ulJI1rGHJLzyFw
	 VRCKkn3ICqss5xtrboPtQn6vSy+Hdyb8PKbxW+gftt/8A53lnBiR+ihH0veHbb85Wk
	 i53RzEI0MSPAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E0C408BD;
	Thu, 23 May 2024 21:01:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EAC151CE9D9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 21:01:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D596E4089F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 21:01:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gE0d_oz-cUtn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 21:01:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BAC254088C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAC254088C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAC254088C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 21:01:14 +0000 (UTC)
X-CSE-ConnectionGUID: sGcVDgJXR/+ebWF6ZitopA==
X-CSE-MsgGUID: kP2C6fb3QMajQsbbusYrSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23518256"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="23518256"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 14:01:13 -0700
X-CSE-ConnectionGUID: O65Nx1BLSbyzJhgOq/1AZA==
X-CSE-MsgGUID: 3Aorms/DStuG8jieIS3caw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38364585"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 14:01:13 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 23 May 2024 14:04:24 -0700
Message-ID: <20240523210424.2883960-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716498075; x=1748034075;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k8KdDBzx1GDT/1j2D7f67eMkfUKKD50azzpKkfIA9Jc=;
 b=AcjkfQeVlo/dDi04iYPGfHHt333Ab3SAaXbTDjBTI6qMNb6Ycz9/NV/M
 /wHunWP9l65N4yleoUXA7OZ5/z6hOEMlF4RuteOUszeZxrPzRNDG2BXGq
 2o5Rt/FjCuwAie4ntuBC0L5TOOQMTddF6riuaXzo1dLF0+8wEVZ54qaRv
 mPZyfcOB6HQ0Oh9FMkYh3k0DNnK0Z2HqWVMd2HbAOL1YBFh7MqW011U4B
 mVoFOKkO2c9hWxr8kyaLDITmUbb0HOTRkKjEeA9zwmwRa/emLe1NEOttE
 Pamp+7y2ChTStnFIGbGVZ2bLSCZqs1tmol2fvzSwqpK2bIFOnhhaH7ZNm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AcjkfQeV
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: check for unregistering
 correct number of devlink params
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
Cc: przemyslaw.kitszel@intel.com, lukasz.czapnik@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On module load, the ice driver checks for the lack of a specific PF
capability to determine if it should reduce the number of devlink params
to register.  One situation when this test returns true is when the
driver loads in safe mode.  The same check is not present on the unload
path when devlink params are unregistered.  This results in the driver
triggering a WARN_ON in the kernel devlink code.

The current check and code path uses a reduction in the number of elements
reported in the list of params.  This is fragile and not good for future
maintaining.

Change the parameters to be held in two lists, one always registered and
one dependent on the check.

Add a symmetrical check in the unload path so that the correct parameters
are unregistered as well.

Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

---
Changes in v2: break params into two list
clean up variable usage
---
 .../net/ethernet/intel/ice/devlink/devlink.c  | 31 +++++++++++++------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index c4b69655cdf5..704e9ad5144e 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -1388,7 +1388,7 @@ enum ice_param_id {
 	ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
 };
 
-static const struct devlink_param ice_devlink_params[] = {
+static const struct devlink_param ice_dvl_rdma_params[] = {
 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
 			      ice_devlink_enable_roce_get,
 			      ice_devlink_enable_roce_set,
@@ -1397,6 +1397,9 @@ static const struct devlink_param ice_devlink_params[] = {
 			      ice_devlink_enable_iw_get,
 			      ice_devlink_enable_iw_set,
 			      ice_devlink_enable_iw_validate),
+};
+
+static const struct devlink_param ice_dvl_sched_params[] = {
 	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_SCHED_LAYERS,
 			     "tx_scheduling_layers",
 			     DEVLINK_PARAM_TYPE_U8,
@@ -1464,21 +1467,31 @@ int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
 	struct ice_hw *hw = &pf->hw;
-	size_t params_size;
+	int status;
 
-	params_size =  ARRAY_SIZE(ice_devlink_params);
+	status = devl_params_register(devlink, ice_dvl_rdma_params,
+				      ARRAY_SIZE(ice_dvl_rdma_params));
+	if (status)
+		return status;
 
-	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
-		params_size--;
+	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
+		status = devl_params_register(devlink, ice_dvl_sched_params,
+					      ARRAY_SIZE(ice_dvl_sched_params));
 
-	return devl_params_register(devlink, ice_devlink_params,
-				    params_size);
+	return status;
 }
 
 void ice_devlink_unregister_params(struct ice_pf *pf)
 {
-	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
-			       ARRAY_SIZE(ice_devlink_params));
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct ice_hw *hw = &pf->hw;
+
+	devl_params_unregister(devlink, ice_dvl_rdma_params,
+			       ARRAY_SIZE(ice_dvl_rdma_params));
+
+	if (hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
+		devl_params_unregister(devlink, ice_dvl_sched_params,
+				       ARRAY_SIZE(ice_dvl_sched_params));
 }
 
 #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
-- 
2.44.0


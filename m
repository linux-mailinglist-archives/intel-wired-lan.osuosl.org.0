Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B24D59AC717
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Oct 2024 11:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED9680A6C;
	Wed, 23 Oct 2024 09:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BZVXJFI5Y4jO; Wed, 23 Oct 2024 09:54:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB2A380AE1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729677279;
	bh=PY3O5BzcLzlFXvAc6GgHEwSLODDEap+5G2BGiw0iWWQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hYCr2tC+OP85aztY2jsMBdeC+bFz1WCkc8yqJe2tndeCWTRLyisDnGUj2vAXF+V2m
	 bHuWIa/ZvT6FmMVnADYi6TNUwKPyVm+rDoUR2ko65at6Ex/LMQFN6A9j0Ncuj4/1FT
	 9HOl7jOqcr2nuqImkDAYE7uTAhqZm/yz3W2fPCQfJ8H5nn9ef8yg0Tr1EMHmo0YMkP
	 inJCFrM/uj7Nvog6rdBhXdQEttxdpqziTf4ftEasP2chgH1AJk2cxHQrw6/BUzcoCA
	 0SVfcQ+bLcz/flBUpDBB5Nv+yE5RZzKFqNNYk/dOEOVYgcLuuyPv8CkuVS3eBvBCpK
	 sl2nmG9s0S9/A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB2A380AE1;
	Wed, 23 Oct 2024 09:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id E14304C2A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEC2740524
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ST-siTwSRkdU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Oct 2024 09:54:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=konrad.knitter@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 699A140506
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 699A140506
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 699A140506
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Oct 2024 09:54:33 +0000 (UTC)
X-CSE-ConnectionGUID: ED4T/JFeTye79MBgM6FT2g==
X-CSE-MsgGUID: xPjPrGQiQlSgz3RJuTwpRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="54658371"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="54658371"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 02:54:33 -0700
X-CSE-ConnectionGUID: wtbvklKIRQGoKOSiMM59gQ==
X-CSE-MsgGUID: DX/InaVBRZOAdFtvu0bvSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84771111"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 23 Oct 2024 02:54:30 -0700
Received: from kord.igk.intel.com (kord.igk.intel.com [10.123.220.9])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A5AE328195;
 Wed, 23 Oct 2024 10:54:28 +0100 (IST)
From: Konrad Knitter <konrad.knitter@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, linux-kernel@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Konrad Knitter <konrad.knitter@intel.com>
Date: Wed, 23 Oct 2024 12:07:03 +0200
Message-Id: <20241023100702.12606-4-konrad.knitter@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20241023100702.12606-1-konrad.knitter@intel.com>
References: <20241023100702.12606-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729677273; x=1761213273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6gBPyg03LkhBjzHGPFcjPDy96P9aNbvvkBnmJY29e4=;
 b=TcfkeHTcEDFf0mHg653+h6aJjgdeY+jhu1AzkfzmfwaH8L/l5lK/N+Nq
 hYpj24TAdvSr5yoWq6eooVhon7VS8wQSND0ujF2l6jvcNXv1vNZMwZC2r
 qlpxJqodEjDbHXnYiTowW3wNSbgu+8qvnRhsWseuDX8QxWrrxu6PCwIkd
 ScDTWWcj/N7w/xvj/rWzJdkvGmZrLP41VshJrZmgqNgPtA3mqZcZ0gbAH
 lTX8kjf5+RN72XK3x8mg5oJWISVM6qlvou9RTlSpmH4KZKEZKAz9epBWi
 o6HtSOnUfX70Z3VNzbnl87+eeKOS1FYc6ucGHyvBIB4EHPefM8AM3xWLv
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TcfkeHTc
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/3] ice: support FW Recovery
 Mode
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

Recovery Mode is intended to recover from a fatal failure scenario in
which the device is not accessible to the host, meaning the firmware is
non-responsive.

The purpose of the Firmware Recovery Mode is to enable software tools to
update firmware and/or device configuration so the fatal error can be
resolved.

Recovery Mode Firmware supports a limited set of admin commands required
for NVM update.
Recovery Firmware does not support hardware interrupts so a polling mode
is used.

The driver will expose only the minimum set of devlink commands required
for the recovery of the adapter.

Using an appropriate NVM image, the user can recover the adapter using
the devlink flash API.

Prior to 4.20 E810 Adapter Recovery Firmware supports only the update
and erase of the "fw.mgmt" component.

E810 Adapter Recovery Firmware doesn't support selected preservation of
cards settings or identifiers.

The following command can be used to recover the adapter:

$ devlink dev flash <pci-address> <update-image.bin> component fw.mgmt
  overwrite settings overwrite identifier

Newer FW versions (4.20 or newer) supports update of "fw.undi" and
"fw.netlist" components.

$ devlink dev flash <pci-address> <update-image.bin>

Tested on Intel Corporation Ethernet Controller E810-C for SFP
FW revision 3.20 and 4.30.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Konrad Knitter <konrad.knitter@intel.com>
---
 .../net/ethernet/intel/ice/devlink/devlink.c  |  8 ++-
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  1 +
 .../net/ethernet/intel/ice/ice_fw_update.c    | 14 ++++-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  6 +++
 drivers/net/ethernet/intel/ice/ice_lib.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_main.c     | 53 +++++++++++++++++++
 6 files changed, 80 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index d1b9ccec5e05..d116e2b10bce 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -368,14 +368,18 @@ static int ice_devlink_info_get(struct devlink *devlink,
 			}
 			break;
 		case ICE_VERSION_RUNNING:
-			err = devlink_info_version_running_put(req, key, ctx->buf);
+			err = devlink_info_version_running_put_ext(req, key,
+								   ctx->buf,
+								   DEVLINK_INFO_VERSION_TYPE_COMPONENT);
 			if (err) {
 				NL_SET_ERR_MSG_MOD(extack, "Unable to set running version");
 				goto out_free_ctx;
 			}
 			break;
 		case ICE_VERSION_STORED:
-			err = devlink_info_version_stored_put(req, key, ctx->buf);
+			err = devlink_info_version_stored_put_ext(req, key,
+								  ctx->buf,
+								  DEVLINK_INFO_VERSION_TYPE_COMPONENT);
 			if (err) {
 				NL_SET_ERR_MSG_MOD(extack, "Unable to set stored version");
 				goto out_free_ctx;
diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 1489a8ceec51..b026478fd98d 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1807,6 +1807,7 @@ struct ice_aqc_nvm_pass_comp_tbl {
 #define ICE_AQ_NVM_PASS_COMP_CAN_BE_UPDATED		0x0
 #define ICE_AQ_NVM_PASS_COMP_CAN_MAY_BE_UPDATEABLE	0x1
 #define ICE_AQ_NVM_PASS_COMP_CAN_NOT_BE_UPDATED		0x2
+#define ICE_AQ_NVM_PASS_COMP_PARTIAL_CHECK		0x3
 	u8 component_response_code; /* Response only */
 #define ICE_AQ_NVM_PASS_COMP_CAN_BE_UPDATED_CODE	0x0
 #define ICE_AQ_NVM_PASS_COMP_STAMP_IDENTICAL_CODE	0x1
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 2702a0da5c3e..70c201f569ce 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -6,6 +6,7 @@
 #include <linux/crc32.h>
 #include <linux/pldmfw.h>
 #include "ice.h"
+#include "ice_lib.h"
 #include "ice_fw_update.h"
 
 struct ice_fwu_priv {
@@ -125,6 +126,10 @@ ice_check_component_response(struct ice_pf *pf, u16 id, u8 response, u8 code,
 	case ICE_AQ_NVM_PASS_COMP_CAN_NOT_BE_UPDATED:
 		dev_info(dev, "firmware has rejected updating %s\n", component);
 		break;
+	case ICE_AQ_NVM_PASS_COMP_PARTIAL_CHECK:
+		if (ice_is_recovery_mode(&pf->hw))
+			return 0;
+		break;
 	}
 
 	switch (code) {
@@ -1004,13 +1009,20 @@ int ice_devlink_flash_update(struct devlink *devlink,
 		return -EOPNOTSUPP;
 	}
 
-	if (!hw->dev_caps.common_cap.nvm_unified_update) {
+	if (!hw->dev_caps.common_cap.nvm_unified_update && !ice_is_recovery_mode(hw)) {
 		NL_SET_ERR_MSG_MOD(extack, "Current firmware does not support unified update");
 		return -EOPNOTSUPP;
 	}
 
 	memset(&priv, 0, sizeof(priv));
 
+	if (params->component && strcmp(params->component, "fw.mgmt") == 0) {
+		priv.context.mode = PLDMFW_UPDATE_MODE_SINGLE_COMPONENT;
+		priv.context.component_identifier = NVM_COMP_ID_NVM;
+	} else if (params->component) {
+		return -EOPNOTSUPP;
+	}
+
 	/* the E822 device needs a slightly different ops */
 	if (hw->mac_type == ICE_MAC_GENERIC)
 		priv.context.ops = &ice_fwu_ops_e822;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 01220e21cc81..0cb7137d17d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1708,6 +1708,12 @@ bool ice_pf_state_is_nominal(struct ice_pf *pf)
 	return true;
 }
 
+#define ICE_FW_MODE_REC_M BIT(1)
+bool ice_is_recovery_mode(struct ice_hw *hw)
+{
+	return rd32(hw, GL_MNG_FWSM) & ICE_FW_MODE_REC_M;
+}
+
 /**
  * ice_update_eth_stats - Update VSI-specific ethernet statistics counters
  * @vsi: the VSI to be updated
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 10d6fc479a32..eabb35834a24 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -90,6 +90,7 @@ void ice_set_q_vector_intrl(struct ice_q_vector *q_vector);
 
 bool ice_is_safe_mode(struct ice_pf *pf);
 bool ice_is_rdma_ena(struct ice_pf *pf);
+bool ice_is_recovery_mode(struct ice_hw *hw);
 bool ice_is_dflt_vsi_in_use(struct ice_port_info *pi);
 bool ice_is_vsi_dflt_vsi(struct ice_vsi *vsi);
 int ice_set_dflt_vsi(struct ice_vsi *vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index f3dd300a7dad..41f0d0933c2b 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2361,6 +2361,18 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 	}
 }
 
+static void ice_service_task_recovery_mode(struct work_struct *work)
+{
+	struct ice_pf *pf = container_of(work, struct ice_pf, serv_task);
+
+	set_bit(ICE_ADMINQ_EVENT_PENDING, pf->state);
+	ice_clean_adminq_subtask(pf);
+
+	ice_service_task_complete(pf);
+
+	mod_timer(&pf->serv_tmr, jiffies + msecs_to_jiffies(100));
+}
+
 /**
  * ice_service_task - manage and run subtasks
  * @work: pointer to work_struct contained by the PF struct
@@ -5211,6 +5223,36 @@ void ice_unload(struct ice_pf *pf)
 	ice_decfg_netdev(vsi);
 }
 
+static int ice_probe_recovery_mode(struct ice_pf *pf)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int err;
+
+	dev_err(dev, "Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode\n");
+
+	INIT_HLIST_HEAD(&pf->aq_wait_list);
+	spin_lock_init(&pf->aq_wait_lock);
+	init_waitqueue_head(&pf->aq_wait_queue);
+
+	timer_setup(&pf->serv_tmr, ice_service_timer, 0);
+	pf->serv_tmr_period = HZ;
+	INIT_WORK(&pf->serv_task, ice_service_task_recovery_mode);
+	clear_bit(ICE_SERVICE_SCHED, pf->state);
+	err = ice_create_all_ctrlq(&pf->hw);
+	if (err)
+		return err;
+
+	scoped_guard(devl, priv_to_devlink(pf)) {
+		err = ice_init_devlink(pf);
+		if (err)
+			return err;
+	}
+
+	ice_service_task_restart(pf);
+
+	return 0;
+}
+
 /**
  * ice_probe - Device initialization routine
  * @pdev: PCI device information struct
@@ -5302,6 +5344,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		hw->debug_mask = debug;
 #endif
 
+	if (ice_is_recovery_mode(hw))
+		return ice_probe_recovery_mode(pf);
+
 	err = ice_init_hw(hw);
 	if (err) {
 		dev_err(dev, "ice_init_hw failed: %d\n", err);
@@ -5419,6 +5464,14 @@ static void ice_remove(struct pci_dev *pdev)
 		msleep(100);
 	}
 
+	if (ice_is_recovery_mode(&pf->hw)) {
+		ice_service_task_stop(pf);
+		scoped_guard(devl, priv_to_devlink(pf)) {
+			ice_deinit_devlink(pf);
+		}
+		return;
+	}
+
 	if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
 		set_bit(ICE_VF_RESETS_DISABLED, pf->state);
 		ice_free_vfs(pf);
-- 
2.38.1


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BE488B2CA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Mar 2024 22:30:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A90481D2D;
	Mon, 25 Mar 2024 21:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jBz0yWDX5ll2; Mon, 25 Mar 2024 21:30:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAA8C8199D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711402213;
	bh=MBxnAOMjQWpOhTObUm2EP9Xpmv57NQOicH7OhgMP4ow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AvZhcckG/5R4HJBvCKLKge+p194Fw0i3tNv9BN6oPdVgijri/Hne42XMdgy1I39dV
	 MDKtduNxReym+pKc7r7PBXewfSTzZkrMg5qSJqXb8qEN7LHndx2AbiCcJmv/CJfcSz
	 9rUJh3MFBsWhkbY1pndE1ktuhAz0N/JgeVOiNg3dEN61kxXmrRhTD8wz2XyH7N182s
	 8hOMyhf+PS0+mGPooolSk5J8AhowE9jHPI/lMX4tcvhvgoCXQHh9zymTNajF9bF9dy
	 zHktloTSfATI2peCMzOfLYYp081HzGhTvrab3NJHQewtI0GXDHc1e8L9FBCGeKhhCE
	 sWcVVdk86juuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAA8C8199D;
	Mon, 25 Mar 2024 21:30:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC8531BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE52040786
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M71qPGuB5ZR2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Mar 2024 21:30:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 149D140751
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 149D140751
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 149D140751
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Mar 2024 21:30:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17064550"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="17064550"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 14:30:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15713505"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 25 Mar 2024 14:30:04 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Mar 2024 22:34:32 +0100
Message-ID: <20240325213433.829161-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711402207; x=1742938207;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SGH5VFPW+igJoThbxUiVhK7F4PvZXvllQmrlZB2e0Dc=;
 b=O7pWljWNRgEG1vHG2z+GyGWZB45orykGbvhJfoBvEoR/LTiXE2kp+Exz
 lDmm7F2Jkf+flvu8/OYNKw91xQ614RANS9yUk8qFWOwX0gfLrzZrB3H/K
 Vb2hGfzYQYIiLOlAQnuEa9gT2Ug1OWoJw/UW2XN0BKRozsFaJMSisQs74
 jO8LAIywrxoHcrnAqn8x1hjmO5jNEj/ovm49EjTu88F3I+dbTmG6vGgP3
 ScmUdcHtu34LrPHW+pHs2nSdfTZr7142jNPzvqlJmPvRWKsDLJPVc9Ys+
 yfRA68cnjPZC/+ISE7C//2cnCWDj6KH1Btzn6uBBRIW3n/6+15HFBIOsg
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O7pWljWN
Subject: [Intel-wired-lan] [iwl-next v1 2/3] ice: move devlink port code to
 a separate file
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Piotr Raczynski <piotr.raczynski@intel.com>

Keep devlink related code in a separate file. More devlink port code and
handlers will be added here for other port operations.

Remove no longer needed include of our devlink.h in ice_lib.c.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/devlink/devlink.c  | 423 -----------------
 .../ethernet/intel/ice/devlink/devlink_port.c | 430 ++++++++++++++++++
 .../ethernet/intel/ice/devlink/devlink_port.h |  12 +
 drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
 drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
 drivers/net/ethernet/intel/ice/ice_repr.c     |   1 +
 7 files changed, 445 insertions(+), 424 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_port.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_port.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 97edd0dfba26..17933d67a697 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -30,6 +30,7 @@ ice-y := ice_main.o	\
 	 ice_flow.o	\
 	 ice_idc.o	\
 	 devlink/devlink.o	\
+	 devlink/devlink_port.o \
 	 ice_ddp.o	\
 	 ice_fw_update.o \
 	 ice_lag.o	\
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index d61bc8340326..71c2f30984d8 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -10,8 +10,6 @@
 #include "ice_fw_update.h"
 #include "ice_dcb_lib.h"
 
-static int ice_active_port_option = -1;
-
 /* context for devlink info version reporting */
 struct ice_info_ctx {
 	char buf[128];
@@ -525,251 +523,6 @@ ice_devlink_reload_empr_finish(struct ice_pf *pf,
 	return 0;
 }
 
-/**
- * ice_devlink_port_opt_speed_str - convert speed to a string
- * @speed: speed value
- */
-static const char *ice_devlink_port_opt_speed_str(u8 speed)
-{
-	switch (speed & ICE_AQC_PORT_OPT_MAX_LANE_M) {
-	case ICE_AQC_PORT_OPT_MAX_LANE_100M:
-		return "0.1";
-	case ICE_AQC_PORT_OPT_MAX_LANE_1G:
-		return "1";
-	case ICE_AQC_PORT_OPT_MAX_LANE_2500M:
-		return "2.5";
-	case ICE_AQC_PORT_OPT_MAX_LANE_5G:
-		return "5";
-	case ICE_AQC_PORT_OPT_MAX_LANE_10G:
-		return "10";
-	case ICE_AQC_PORT_OPT_MAX_LANE_25G:
-		return "25";
-	case ICE_AQC_PORT_OPT_MAX_LANE_50G:
-		return "50";
-	case ICE_AQC_PORT_OPT_MAX_LANE_100G:
-		return "100";
-	}
-
-	return "-";
-}
-
-#define ICE_PORT_OPT_DESC_LEN	50
-/**
- * ice_devlink_port_options_print - Print available port split options
- * @pf: the PF to print split port options
- *
- * Prints a table with available port split options and max port speeds
- */
-static void ice_devlink_port_options_print(struct ice_pf *pf)
-{
-	u8 i, j, options_count, cnt, speed, pending_idx, active_idx;
-	struct ice_aqc_get_port_options_elem *options, *opt;
-	struct device *dev = ice_pf_to_dev(pf);
-	bool active_valid, pending_valid;
-	char desc[ICE_PORT_OPT_DESC_LEN];
-	const char *str;
-	int status;
-
-	options = kcalloc(ICE_AQC_PORT_OPT_MAX * ICE_MAX_PORT_PER_PCI_DEV,
-			  sizeof(*options), GFP_KERNEL);
-	if (!options)
-		return;
-
-	for (i = 0; i < ICE_MAX_PORT_PER_PCI_DEV; i++) {
-		opt = options + i * ICE_AQC_PORT_OPT_MAX;
-		options_count = ICE_AQC_PORT_OPT_MAX;
-		active_valid = 0;
-
-		status = ice_aq_get_port_options(&pf->hw, opt, &options_count,
-						 i, true, &active_idx,
-						 &active_valid, &pending_idx,
-						 &pending_valid);
-		if (status) {
-			dev_dbg(dev, "Couldn't read port option for port %d, err %d\n",
-				i, status);
-			goto err;
-		}
-	}
-
-	dev_dbg(dev, "Available port split options and max port speeds (Gbps):\n");
-	dev_dbg(dev, "Status  Split      Quad 0          Quad 1\n");
-	dev_dbg(dev, "        count  L0  L1  L2  L3  L4  L5  L6  L7\n");
-
-	for (i = 0; i < options_count; i++) {
-		cnt = 0;
-
-		if (i == ice_active_port_option)
-			str = "Active";
-		else if ((i == pending_idx) && pending_valid)
-			str = "Pending";
-		else
-			str = "";
-
-		cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
-				"%-8s", str);
-
-		cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
-				"%-6u", options[i].pmd);
-
-		for (j = 0; j < ICE_MAX_PORT_PER_PCI_DEV; ++j) {
-			speed = options[i + j * ICE_AQC_PORT_OPT_MAX].max_lane_speed;
-			str = ice_devlink_port_opt_speed_str(speed);
-			cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
-					"%3s ", str);
-		}
-
-		dev_dbg(dev, "%s\n", desc);
-	}
-
-err:
-	kfree(options);
-}
-
-/**
- * ice_devlink_aq_set_port_option - Send set port option admin queue command
- * @pf: the PF to print split port options
- * @option_idx: selected port option
- * @extack: extended netdev ack structure
- *
- * Sends set port option admin queue command with selected port option and
- * calls NVM write activate.
- */
-static int
-ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
-			       struct netlink_ext_ack *extack)
-{
-	struct device *dev = ice_pf_to_dev(pf);
-	int status;
-
-	status = ice_aq_set_port_option(&pf->hw, 0, true, option_idx);
-	if (status) {
-		dev_dbg(dev, "ice_aq_set_port_option, err %d aq_err %d\n",
-			status, pf->hw.adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Port split request failed");
-		return -EIO;
-	}
-
-	status = ice_acquire_nvm(&pf->hw, ICE_RES_WRITE);
-	if (status) {
-		dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
-			status, pf->hw.adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
-		return -EIO;
-	}
-
-	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
-	if (status) {
-		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
-			status, pf->hw.adminq.sq_last_status);
-		NL_SET_ERR_MSG_MOD(extack, "Port split request failed to save data");
-		ice_release_nvm(&pf->hw);
-		return -EIO;
-	}
-
-	ice_release_nvm(&pf->hw);
-
-	NL_SET_ERR_MSG_MOD(extack, "Reboot required to finish port split");
-	return 0;
-}
-
-/**
- * ice_devlink_port_split - .port_split devlink handler
- * @devlink: devlink instance structure
- * @port: devlink port structure
- * @count: number of ports to split to
- * @extack: extended netdev ack structure
- *
- * Callback for the devlink .port_split operation.
- *
- * Unfortunately, the devlink expression of available options is limited
- * to just a number, so search for an FW port option which supports
- * the specified number. As there could be multiple FW port options with
- * the same port split count, allow switching between them. When the same
- * port split count request is issued again, switch to the next FW port
- * option with the same port split count.
- *
- * Return: zero on success or an error code on failure.
- */
-static int
-ice_devlink_port_split(struct devlink *devlink, struct devlink_port *port,
-		       unsigned int count, struct netlink_ext_ack *extack)
-{
-	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX];
-	u8 i, j, active_idx, pending_idx, new_option;
-	struct ice_pf *pf = devlink_priv(devlink);
-	u8 option_count = ICE_AQC_PORT_OPT_MAX;
-	struct device *dev = ice_pf_to_dev(pf);
-	bool active_valid, pending_valid;
-	int status;
-
-	status = ice_aq_get_port_options(&pf->hw, options, &option_count,
-					 0, true, &active_idx, &active_valid,
-					 &pending_idx, &pending_valid);
-	if (status) {
-		dev_dbg(dev, "Couldn't read port split options, err = %d\n",
-			status);
-		NL_SET_ERR_MSG_MOD(extack, "Failed to get available port split options");
-		return -EIO;
-	}
-
-	new_option = ICE_AQC_PORT_OPT_MAX;
-	active_idx = pending_valid ? pending_idx : active_idx;
-	for (i = 1; i <= option_count; i++) {
-		/* In order to allow switching between FW port options with
-		 * the same port split count, search for a new option starting
-		 * from the active/pending option (with array wrap around).
-		 */
-		j = (active_idx + i) % option_count;
-
-		if (count == options[j].pmd) {
-			new_option = j;
-			break;
-		}
-	}
-
-	if (new_option == active_idx) {
-		dev_dbg(dev, "request to split: count: %u is already set and there are no other options\n",
-			count);
-		NL_SET_ERR_MSG_MOD(extack, "Requested split count is already set");
-		ice_devlink_port_options_print(pf);
-		return -EINVAL;
-	}
-
-	if (new_option == ICE_AQC_PORT_OPT_MAX) {
-		dev_dbg(dev, "request to split: count: %u not found\n", count);
-		NL_SET_ERR_MSG_MOD(extack, "Port split requested unsupported port config");
-		ice_devlink_port_options_print(pf);
-		return -EINVAL;
-	}
-
-	status = ice_devlink_aq_set_port_option(pf, new_option, extack);
-	if (status)
-		return status;
-
-	ice_devlink_port_options_print(pf);
-
-	return 0;
-}
-
-/**
- * ice_devlink_port_unsplit - .port_unsplit devlink handler
- * @devlink: devlink instance structure
- * @port: devlink port structure
- * @extack: extended netdev ack structure
- *
- * Callback for the devlink .port_unsplit operation.
- * Calls ice_devlink_port_split with split count set to 1.
- * There could be no FW option available with split count 1.
- *
- * Return: zero on success or an error code on failure.
- */
-static int
-ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
-			 struct netlink_ext_ack *extack)
-{
-	return ice_devlink_port_split(devlink, port, 1, extack);
-}
-
 /**
  * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
  * @pf: pf struct
@@ -1548,23 +1301,6 @@ void ice_devlink_unregister(struct ice_pf *pf)
 	devlink_unregister(priv_to_devlink(pf));
 }
 
-/**
- * ice_devlink_set_switch_id - Set unique switch id based on pci dsn
- * @pf: the PF to create a devlink port for
- * @ppid: struct with switch id information
- */
-static void
-ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
-{
-	struct pci_dev *pdev = pf->pdev;
-	u64 id;
-
-	id = pci_get_dsn(pdev);
-
-	ppid->id_len = sizeof(id);
-	put_unaligned_be64(id, &ppid->id);
-}
-
 int ice_devlink_register_params(struct ice_pf *pf)
 {
 	struct devlink *devlink = priv_to_devlink(pf);
@@ -1579,165 +1315,6 @@ void ice_devlink_unregister_params(struct ice_pf *pf)
 				  ARRAY_SIZE(ice_devlink_params));
 }
 
-/**
- * ice_devlink_set_port_split_options - Set port split options
- * @pf: the PF to set port split options
- * @attrs: devlink attributes
- *
- * Sets devlink port split options based on available FW port options
- */
-static void
-ice_devlink_set_port_split_options(struct ice_pf *pf,
-				   struct devlink_port_attrs *attrs)
-{
-	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX];
-	u8 i, active_idx, pending_idx, option_count = ICE_AQC_PORT_OPT_MAX;
-	bool active_valid, pending_valid;
-	int status;
-
-	status = ice_aq_get_port_options(&pf->hw, options, &option_count,
-					 0, true, &active_idx, &active_valid,
-					 &pending_idx, &pending_valid);
-	if (status) {
-		dev_dbg(ice_pf_to_dev(pf), "Couldn't read port split options, err = %d\n",
-			status);
-		return;
-	}
-
-	/* find the biggest available port split count */
-	for (i = 0; i < option_count; i++)
-		attrs->lanes = max_t(int, attrs->lanes, options[i].pmd);
-
-	attrs->splittable = attrs->lanes ? 1 : 0;
-	ice_active_port_option = active_idx;
-}
-
-static const struct devlink_port_ops ice_devlink_port_ops = {
-	.port_split = ice_devlink_port_split,
-	.port_unsplit = ice_devlink_port_unsplit,
-};
-
-/**
- * ice_devlink_create_pf_port - Create a devlink port for this PF
- * @pf: the PF to create a devlink port for
- *
- * Create and register a devlink_port for this PF.
- * This function has to be called under devl_lock.
- *
- * Return: zero on success or an error code on failure.
- */
-int ice_devlink_create_pf_port(struct ice_pf *pf)
-{
-	struct devlink_port_attrs attrs = {};
-	struct devlink_port *devlink_port;
-	struct devlink *devlink;
-	struct ice_vsi *vsi;
-	struct device *dev;
-	int err;
-
-	devlink = priv_to_devlink(pf);
-
-	dev = ice_pf_to_dev(pf);
-
-	devlink_port = &pf->devlink_port;
-
-	vsi = ice_get_main_vsi(pf);
-	if (!vsi)
-		return -EIO;
-
-	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
-	attrs.phys.port_number = pf->hw.bus.func;
-
-	/* As FW supports only port split options for whole device,
-	 * set port split options only for first PF.
-	 */
-	if (pf->hw.pf_id == 0)
-		ice_devlink_set_port_split_options(pf, &attrs);
-
-	ice_devlink_set_switch_id(pf, &attrs.switch_id);
-
-	devlink_port_attrs_set(devlink_port, &attrs);
-
-	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
-					  &ice_devlink_port_ops);
-	if (err) {
-		dev_err(dev, "Failed to create devlink port for PF %d, error %d\n",
-			pf->hw.pf_id, err);
-		return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_devlink_destroy_pf_port - Destroy the devlink_port for this PF
- * @pf: the PF to cleanup
- *
- * Unregisters the devlink_port structure associated with this PF.
- * This function has to be called under devl_lock.
- */
-void ice_devlink_destroy_pf_port(struct ice_pf *pf)
-{
-	devl_port_unregister(&pf->devlink_port);
-}
-
-/**
- * ice_devlink_create_vf_port - Create a devlink port for this VF
- * @vf: the VF to create a port for
- *
- * Create and register a devlink_port for this VF.
- *
- * Return: zero on success or an error code on failure.
- */
-int ice_devlink_create_vf_port(struct ice_vf *vf)
-{
-	struct devlink_port_attrs attrs = {};
-	struct devlink_port *devlink_port;
-	struct devlink *devlink;
-	struct ice_vsi *vsi;
-	struct device *dev;
-	struct ice_pf *pf;
-	int err;
-
-	pf = vf->pf;
-	dev = ice_pf_to_dev(pf);
-	devlink_port = &vf->devlink_port;
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi)
-		return -EINVAL;
-
-	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
-	attrs.pci_vf.pf = pf->hw.bus.func;
-	attrs.pci_vf.vf = vf->vf_id;
-
-	ice_devlink_set_switch_id(pf, &attrs.switch_id);
-
-	devlink_port_attrs_set(devlink_port, &attrs);
-	devlink = priv_to_devlink(pf);
-
-	err = devlink_port_register(devlink, devlink_port, vsi->idx);
-	if (err) {
-		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
-			vf->vf_id, err);
-		return err;
-	}
-
-	return 0;
-}
-
-/**
- * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
- * @vf: the VF to cleanup
- *
- * Unregisters the devlink_port structure associated with this VF.
- */
-void ice_devlink_destroy_vf_port(struct ice_vf *vf)
-{
-	devl_rate_leaf_destroy(&vf->devlink_port);
-	devlink_port_unregister(&vf->devlink_port);
-}
-
 #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
 
 static const struct devlink_region_ops ice_nvm_region_ops;
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.c b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
new file mode 100644
index 000000000000..13e6790d3cae
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.c
@@ -0,0 +1,430 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024, Intel Corporation. */
+
+#include <linux/vmalloc.h>
+
+#include "ice.h"
+#include "devlink.h"
+
+static int ice_active_port_option = -1;
+
+/**
+ * ice_devlink_port_opt_speed_str - convert speed to a string
+ * @speed: speed value
+ */
+static const char *ice_devlink_port_opt_speed_str(u8 speed)
+{
+	switch (speed & ICE_AQC_PORT_OPT_MAX_LANE_M) {
+	case ICE_AQC_PORT_OPT_MAX_LANE_100M:
+		return "0.1";
+	case ICE_AQC_PORT_OPT_MAX_LANE_1G:
+		return "1";
+	case ICE_AQC_PORT_OPT_MAX_LANE_2500M:
+		return "2.5";
+	case ICE_AQC_PORT_OPT_MAX_LANE_5G:
+		return "5";
+	case ICE_AQC_PORT_OPT_MAX_LANE_10G:
+		return "10";
+	case ICE_AQC_PORT_OPT_MAX_LANE_25G:
+		return "25";
+	case ICE_AQC_PORT_OPT_MAX_LANE_50G:
+		return "50";
+	case ICE_AQC_PORT_OPT_MAX_LANE_100G:
+		return "100";
+	}
+
+	return "-";
+}
+
+#define ICE_PORT_OPT_DESC_LEN	50
+/**
+ * ice_devlink_port_options_print - Print available port split options
+ * @pf: the PF to print split port options
+ *
+ * Prints a table with available port split options and max port speeds
+ */
+static void ice_devlink_port_options_print(struct ice_pf *pf)
+{
+	u8 i, j, options_count, cnt, speed, pending_idx, active_idx;
+	struct ice_aqc_get_port_options_elem *options, *opt;
+	struct device *dev = ice_pf_to_dev(pf);
+	bool active_valid, pending_valid;
+	char desc[ICE_PORT_OPT_DESC_LEN];
+	const char *str;
+	int status;
+
+	options = kcalloc(ICE_AQC_PORT_OPT_MAX * ICE_MAX_PORT_PER_PCI_DEV,
+			  sizeof(*options), GFP_KERNEL);
+	if (!options)
+		return;
+
+	for (i = 0; i < ICE_MAX_PORT_PER_PCI_DEV; i++) {
+		opt = options + i * ICE_AQC_PORT_OPT_MAX;
+		options_count = ICE_AQC_PORT_OPT_MAX;
+		active_valid = 0;
+
+		status = ice_aq_get_port_options(&pf->hw, opt, &options_count,
+						 i, true, &active_idx,
+						 &active_valid, &pending_idx,
+						 &pending_valid);
+		if (status) {
+			dev_dbg(dev, "Couldn't read port option for port %d, err %d\n",
+				i, status);
+			goto err;
+		}
+	}
+
+	dev_dbg(dev, "Available port split options and max port speeds (Gbps):\n");
+	dev_dbg(dev, "Status  Split      Quad 0          Quad 1\n");
+	dev_dbg(dev, "        count  L0  L1  L2  L3  L4  L5  L6  L7\n");
+
+	for (i = 0; i < options_count; i++) {
+		cnt = 0;
+
+		if (i == ice_active_port_option)
+			str = "Active";
+		else if ((i == pending_idx) && pending_valid)
+			str = "Pending";
+		else
+			str = "";
+
+		cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
+				"%-8s", str);
+
+		cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
+				"%-6u", options[i].pmd);
+
+		for (j = 0; j < ICE_MAX_PORT_PER_PCI_DEV; ++j) {
+			speed = options[i + j * ICE_AQC_PORT_OPT_MAX].max_lane_speed;
+			str = ice_devlink_port_opt_speed_str(speed);
+			cnt += snprintf(&desc[cnt], ICE_PORT_OPT_DESC_LEN - cnt,
+					"%3s ", str);
+		}
+
+		dev_dbg(dev, "%s\n", desc);
+	}
+
+err:
+	kfree(options);
+}
+
+/**
+ * ice_devlink_aq_set_port_option - Send set port option admin queue command
+ * @pf: the PF to print split port options
+ * @option_idx: selected port option
+ * @extack: extended netdev ack structure
+ *
+ * Sends set port option admin queue command with selected port option and
+ * calls NVM write activate.
+ */
+static int
+ice_devlink_aq_set_port_option(struct ice_pf *pf, u8 option_idx,
+			       struct netlink_ext_ack *extack)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+	int status;
+
+	status = ice_aq_set_port_option(&pf->hw, 0, true, option_idx);
+	if (status) {
+		dev_dbg(dev, "ice_aq_set_port_option, err %d aq_err %d\n",
+			status, pf->hw.adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack, "Port split request failed");
+		return -EIO;
+	}
+
+	status = ice_acquire_nvm(&pf->hw, ICE_RES_WRITE);
+	if (status) {
+		dev_dbg(dev, "ice_acquire_nvm failed, err %d aq_err %d\n",
+			status, pf->hw.adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire NVM semaphore");
+		return -EIO;
+	}
+
+	status = ice_nvm_write_activate(&pf->hw, ICE_AQC_NVM_ACTIV_REQ_EMPR, NULL);
+	if (status) {
+		dev_dbg(dev, "ice_nvm_write_activate failed, err %d aq_err %d\n",
+			status, pf->hw.adminq.sq_last_status);
+		NL_SET_ERR_MSG_MOD(extack, "Port split request failed to save data");
+		ice_release_nvm(&pf->hw);
+		return -EIO;
+	}
+
+	ice_release_nvm(&pf->hw);
+
+	NL_SET_ERR_MSG_MOD(extack, "Reboot required to finish port split");
+	return 0;
+}
+
+/**
+ * ice_devlink_port_split - .port_split devlink handler
+ * @devlink: devlink instance structure
+ * @port: devlink port structure
+ * @count: number of ports to split to
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_split operation.
+ *
+ * Unfortunately, the devlink expression of available options is limited
+ * to just a number, so search for an FW port option which supports
+ * the specified number. As there could be multiple FW port options with
+ * the same port split count, allow switching between them. When the same
+ * port split count request is issued again, switch to the next FW port
+ * option with the same port split count.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_split(struct devlink *devlink, struct devlink_port *port,
+		       unsigned int count, struct netlink_ext_ack *extack)
+{
+	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX];
+	u8 i, j, active_idx, pending_idx, new_option;
+	struct ice_pf *pf = devlink_priv(devlink);
+	u8 option_count = ICE_AQC_PORT_OPT_MAX;
+	struct device *dev = ice_pf_to_dev(pf);
+	bool active_valid, pending_valid;
+	int status;
+
+	status = ice_aq_get_port_options(&pf->hw, options, &option_count,
+					 0, true, &active_idx, &active_valid,
+					 &pending_idx, &pending_valid);
+	if (status) {
+		dev_dbg(dev, "Couldn't read port split options, err = %d\n",
+			status);
+		NL_SET_ERR_MSG_MOD(extack, "Failed to get available port split options");
+		return -EIO;
+	}
+
+	new_option = ICE_AQC_PORT_OPT_MAX;
+	active_idx = pending_valid ? pending_idx : active_idx;
+	for (i = 1; i <= option_count; i++) {
+		/* In order to allow switching between FW port options with
+		 * the same port split count, search for a new option starting
+		 * from the active/pending option (with array wrap around).
+		 */
+		j = (active_idx + i) % option_count;
+
+		if (count == options[j].pmd) {
+			new_option = j;
+			break;
+		}
+	}
+
+	if (new_option == active_idx) {
+		dev_dbg(dev, "request to split: count: %u is already set and there are no other options\n",
+			count);
+		NL_SET_ERR_MSG_MOD(extack, "Requested split count is already set");
+		ice_devlink_port_options_print(pf);
+		return -EINVAL;
+	}
+
+	if (new_option == ICE_AQC_PORT_OPT_MAX) {
+		dev_dbg(dev, "request to split: count: %u not found\n", count);
+		NL_SET_ERR_MSG_MOD(extack, "Port split requested unsupported port config");
+		ice_devlink_port_options_print(pf);
+		return -EINVAL;
+	}
+
+	status = ice_devlink_aq_set_port_option(pf, new_option, extack);
+	if (status)
+		return status;
+
+	ice_devlink_port_options_print(pf);
+
+	return 0;
+}
+
+/**
+ * ice_devlink_port_unsplit - .port_unsplit devlink handler
+ * @devlink: devlink instance structure
+ * @port: devlink port structure
+ * @extack: extended netdev ack structure
+ *
+ * Callback for the devlink .port_unsplit operation.
+ * Calls ice_devlink_port_split with split count set to 1.
+ * There could be no FW option available with split count 1.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+static int
+ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
+			 struct netlink_ext_ack *extack)
+{
+	return ice_devlink_port_split(devlink, port, 1, extack);
+}
+
+/**
+ * ice_devlink_set_port_split_options - Set port split options
+ * @pf: the PF to set port split options
+ * @attrs: devlink attributes
+ *
+ * Sets devlink port split options based on available FW port options
+ */
+static void
+ice_devlink_set_port_split_options(struct ice_pf *pf,
+				   struct devlink_port_attrs *attrs)
+{
+	struct ice_aqc_get_port_options_elem options[ICE_AQC_PORT_OPT_MAX];
+	u8 i, active_idx, pending_idx, option_count = ICE_AQC_PORT_OPT_MAX;
+	bool active_valid, pending_valid;
+	int status;
+
+	status = ice_aq_get_port_options(&pf->hw, options, &option_count,
+					 0, true, &active_idx, &active_valid,
+					 &pending_idx, &pending_valid);
+	if (status) {
+		dev_dbg(ice_pf_to_dev(pf), "Couldn't read port split options, err = %d\n",
+			status);
+		return;
+	}
+
+	/* find the biggest available port split count */
+	for (i = 0; i < option_count; i++)
+		attrs->lanes = max_t(int, attrs->lanes, options[i].pmd);
+
+	attrs->splittable = attrs->lanes ? 1 : 0;
+	ice_active_port_option = active_idx;
+}
+
+static const struct devlink_port_ops ice_devlink_port_ops = {
+	.port_split = ice_devlink_port_split,
+	.port_unsplit = ice_devlink_port_unsplit,
+};
+
+/**
+ * ice_devlink_set_switch_id - Set unique switch id based on pci dsn
+ * @pf: the PF to create a devlink port for
+ * @ppid: struct with switch id information
+ */
+static void
+ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
+{
+	struct pci_dev *pdev = pf->pdev;
+	u64 id;
+
+	id = pci_get_dsn(pdev);
+
+	ppid->id_len = sizeof(id);
+	put_unaligned_be64(id, &ppid->id);
+}
+
+/**
+ * ice_devlink_create_pf_port - Create a devlink port for this PF
+ * @pf: the PF to create a devlink port for
+ *
+ * Create and register a devlink_port for this PF.
+ * This function has to be called under devl_lock.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_pf_port(struct ice_pf *pf)
+{
+	struct devlink_port_attrs attrs = {};
+	struct devlink_port *devlink_port;
+	struct devlink *devlink;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	int err;
+
+	devlink = priv_to_devlink(pf);
+
+	dev = ice_pf_to_dev(pf);
+
+	devlink_port = &pf->devlink_port;
+
+	vsi = ice_get_main_vsi(pf);
+	if (!vsi)
+		return -EIO;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
+	attrs.phys.port_number = pf->hw.bus.func;
+
+	/* As FW supports only port split options for whole device,
+	 * set port split options only for first PF.
+	 */
+	if (pf->hw.pf_id == 0)
+		ice_devlink_set_port_split_options(pf, &attrs);
+
+	ice_devlink_set_switch_id(pf, &attrs.switch_id);
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+
+	err = devl_port_register_with_ops(devlink, devlink_port, vsi->idx,
+					  &ice_devlink_port_ops);
+	if (err) {
+		dev_err(dev, "Failed to create devlink port for PF %d, error %d\n",
+			pf->hw.pf_id, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_destroy_pf_port - Destroy the devlink_port for this PF
+ * @pf: the PF to cleanup
+ *
+ * Unregisters the devlink_port structure associated with this PF.
+ * This function has to be called under devl_lock.
+ */
+void ice_devlink_destroy_pf_port(struct ice_pf *pf)
+{
+	devl_port_unregister(&pf->devlink_port);
+}
+
+/**
+ * ice_devlink_create_vf_port - Create a devlink port for this VF
+ * @vf: the VF to create a port for
+ *
+ * Create and register a devlink_port for this VF.
+ *
+ * Return: zero on success or an error code on failure.
+ */
+int ice_devlink_create_vf_port(struct ice_vf *vf)
+{
+	struct devlink_port_attrs attrs = {};
+	struct devlink_port *devlink_port;
+	struct devlink *devlink;
+	struct ice_vsi *vsi;
+	struct device *dev;
+	struct ice_pf *pf;
+	int err;
+
+	pf = vf->pf;
+	dev = ice_pf_to_dev(pf);
+	devlink_port = &vf->devlink_port;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi)
+		return -EINVAL;
+
+	attrs.flavour = DEVLINK_PORT_FLAVOUR_PCI_VF;
+	attrs.pci_vf.pf = pf->hw.bus.func;
+	attrs.pci_vf.vf = vf->vf_id;
+
+	ice_devlink_set_switch_id(pf, &attrs.switch_id);
+
+	devlink_port_attrs_set(devlink_port, &attrs);
+	devlink = priv_to_devlink(pf);
+
+	err = devlink_port_register(devlink, devlink_port, vsi->idx);
+	if (err) {
+		dev_err(dev, "Failed to create devlink port for VF %d, error %d\n",
+			vf->vf_id, err);
+		return err;
+	}
+
+	return 0;
+}
+
+/**
+ * ice_devlink_destroy_vf_port - Destroy the devlink_port for this VF
+ * @vf: the VF to cleanup
+ *
+ * Unregisters the devlink_port structure associated with this VF.
+ */
+void ice_devlink_destroy_vf_port(struct ice_vf *vf)
+{
+	devl_rate_leaf_destroy(&vf->devlink_port);
+	devlink_port_unregister(&vf->devlink_port);
+}
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
new file mode 100644
index 000000000000..17b5525aa1d1
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2023, Intel Corporation. */
+
+#ifndef _DEVLINK_PORT_H_
+#define _DEVLINK_PORT_H_
+
+int ice_devlink_create_pf_port(struct ice_pf *pf);
+void ice_devlink_destroy_pf_port(struct ice_pf *pf);
+int ice_devlink_create_vf_port(struct ice_vf *vf);
+void ice_devlink_destroy_vf_port(struct ice_vf *vf);
+
+#endif /* _DEVLINK_PORT_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index be10a88d00e9..98ee530c5bda 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -7,7 +7,6 @@
 #include "ice_lib.h"
 #include "ice_fltr.h"
 #include "ice_dcb_lib.h"
-#include "devlink/devlink.h"
 #include "ice_vsi_vlan_ops.h"
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3184fac8804d..b8b7a47c3b8a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -14,6 +14,7 @@
 #include "ice_dcb_lib.h"
 #include "ice_dcb_nl.h"
 #include "devlink/devlink.h"
+#include "devlink/devlink_port.h"
 #include "ice_hwmon.h"
 /* Including ice_trace.h with CREATE_TRACE_POINTS defined will generate the
  * ice tracepoint functions. This must be done exactly once across the
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 116cb56aa962..4bd43a2d445a 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -4,6 +4,7 @@
 #include "ice.h"
 #include "ice_eswitch.h"
 #include "devlink/devlink.h"
+#include "devlink/devlink_port.h"
 #include "ice_sriov.h"
 #include "ice_tc_lib.h"
 #include "ice_dcb_lib.h"
-- 
2.42.0


Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95796293226
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 01:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34CB4869ED;
	Mon, 19 Oct 2020 23:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vU1DltwGQQSM; Mon, 19 Oct 2020 23:56:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9A88869EA;
	Mon, 19 Oct 2020 23:56:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DFEDD1BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1BA68732A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id st4tbFSQpAiw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 23:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7BCFC872CB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:01 +0000 (UTC)
IronPort-SDR: Y/q9lmWCv44fQdbPLjKlZEX1Uktsq/+T5A87VdzLn5Q+h1hxtvPiPWISkrf1oHtGjxQFU218pl
 AlGgeF+HyCfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166351758"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="166351758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 16:56:00 -0700
IronPort-SDR: MGTkBS/HCtkzRh/yYW1T3LKPmIEYiLEs1P6fdiwIeY+ePcpXQhOsKarf8PTCR9WHMjBMpwO0RT
 NfrYvYXUNnwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="465712632"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2020 16:55:59 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Oct 2020 23:50:28 +0000
Message-Id: <20201019235029.176050-3-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20201019235029.176050-1-arkadiusz.kubalewski@intel.com>
References: <20201019235029.176050-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/3] i40e: Add init and default
 config of software based DCB
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add extra handling on changing the "disable-fw-lldp" private
flag to properly initialize software based DCB feature.

Add default configuration of DCB functionality when Firmware
LLDP agent is turned off, in case of driver probe and device
reset on reconfiguration.

Update copyright dates as appropriate.

Software based DCB is a brand-new feature in i40e driver.
Before, DCB was implemented by Firmware LLDP agent only. The agent was
responsible for handling incoming DCB-related LLDP frames and
applying received DCB configuration to hardware.

Default configuration and new initialization flow for software based
DCB is required. If LLDP agent is turned off in BIOS, or after
setting private flag ("disable-fw-lldp on"). The driver initializes
DCB functionality with default values, one traffic class with 100%
bandwidth allocated.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  15 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 520 ++++++++++++++++--
 3 files changed, 496 insertions(+), 59 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index c517c47..3d5a46a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1,5 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2020 Intel Corporation. */
 
 #ifndef _I40E_H_
 #define _I40E_H_
@@ -292,6 +292,9 @@ struct i40e_cloud_filter {
 	u8 tunnel_type;
 };
 
+#define I40E_DCB_PRIO_TYPE_STRICT	0
+#define I40E_DCB_PRIO_TYPE_ETS		1
+#define I40E_DCB_STRICT_PRIO_CREDITS	127
 /* DCB per TC information data structure */
 struct i40e_tc_info {
 	u16	qoffset;	/* Queue offset from base queue */
@@ -635,6 +638,8 @@ struct i40e_pf {
 	u16 dcbx_cap;
 
 	struct i40e_filter_control_settings filter_settings;
+	struct i40e_rx_pb_config pb_cfg; /* Current Rx packet buffer config */
+	struct i40e_dcbx_config tmp_cfg;
 
 /* GPIO defines used by PTP */
 #define I40E_SDP3_2			18
@@ -1194,6 +1199,12 @@ bool i40e_is_vsi_in_vlan(struct i40e_vsi *vsi);
 int i40e_count_filters(struct i40e_vsi *vsi);
 struct i40e_mac_filter *i40e_find_mac(struct i40e_vsi *vsi, const u8 *macaddr);
 void i40e_vlan_stripping_enable(struct i40e_vsi *vsi);
+static inline bool i40e_is_sw_dcb(struct i40e_pf *pf)
+{
+	return !!(pf->flags & I40E_FLAG_DISABLE_FW_LLDP);
+}
+
+void i40e_set_lldp_forwarding(struct i40e_pf *pf, bool enable);
 #ifdef CONFIG_I40E_DCB
 void i40e_dcbnl_flush_apps(struct i40e_pf *pf,
 			   struct i40e_dcbx_config *old_cfg,
@@ -1203,6 +1214,8 @@ void i40e_dcbnl_setup(struct i40e_vsi *vsi);
 bool i40e_dcb_need_reconfig(struct i40e_pf *pf,
 			    struct i40e_dcbx_config *old_cfg,
 			    struct i40e_dcbx_config *new_cfg);
+int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg);
+int i40e_dcb_sw_default_config(struct i40e_pf *pf);
 #endif /* CONFIG_I40E_DCB */
 void i40e_ptp_rx_hang(struct i40e_pf *pf);
 void i40e_ptp_tx_hang(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index ea3388f..f9d76f2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5217,23 +5217,13 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 
 	if (changed_flags & I40E_FLAG_DISABLE_FW_LLDP) {
 		if (new_flags & I40E_FLAG_DISABLE_FW_LLDP) {
-			struct i40e_dcbx_config *dcbcfg;
-
+#ifdef CONFIG_I40E_DCB
+			i40e_dcb_sw_default_config(pf);
+#endif /* CONFIG_I40E_DCB */
+			i40e_aq_cfg_lldp_mib_change_event(&pf->hw, false, NULL);
 			i40e_aq_stop_lldp(&pf->hw, true, false, NULL);
-			i40e_aq_set_dcb_parameters(&pf->hw, true, NULL);
-			/* reset local_dcbx_config to default */
-			dcbcfg = &pf->hw.local_dcbx_config;
-			dcbcfg->etscfg.willing = 1;
-			dcbcfg->etscfg.maxtcs = 0;
-			dcbcfg->etscfg.tcbwtable[0] = 100;
-			for (i = 1; i < I40E_MAX_TRAFFIC_CLASS; i++)
-				dcbcfg->etscfg.tcbwtable[i] = 0;
-			for (i = 0; i < I40E_MAX_USER_PRIORITY; i++)
-				dcbcfg->etscfg.prioritytable[i] = 0;
-			dcbcfg->etscfg.tsatable[0] = I40E_IEEE_TSA_ETS;
-			dcbcfg->pfc.willing = 1;
-			dcbcfg->pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
 		} else {
+			i40e_set_lldp_forwarding(pf, false);
 			status = i40e_aq_start_lldp(&pf->hw, false, NULL);
 			if (status) {
 				adq_err = pf->hw.aq.asq_last_status;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8dd8d7b..41850fb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/* Copyright(c) 2013 - 2018 Intel Corporation. */
+/* Copyright(c) 2013 - 2020 Intel Corporation. */
 
 #include <linux/etherdevice.h>
 #include <linux/of_net.h>
@@ -35,7 +35,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit);
 static int i40e_setup_misc_vector(struct i40e_pf *pf);
 static void i40e_determine_queue_usage(struct i40e_pf *pf);
 static int i40e_setup_pf_filter_control(struct i40e_pf *pf);
-static void i40e_prep_for_reset(struct i40e_pf *pf, bool lock_acquired);
+static void i40e_prep_for_reset(struct i40e_pf *pf);
 static int i40e_reset(struct i40e_pf *pf);
 static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired);
 static int i40e_setup_misc_vector_for_recovery_mode(struct i40e_pf *pf);
@@ -5307,6 +5307,7 @@ static int i40e_vsi_configure_bw_alloc(struct i40e_vsi *vsi, u8 enabled_tc,
 				 vsi->seid);
 		return ret;
 	}
+	memset(&bw_data, 0, sizeof(bw_data));
 	bw_data.tc_valid_bits = enabled_tc;
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
 		bw_data.tc_bw_credits[i] = bw_share[i];
@@ -5959,6 +5960,7 @@ static int i40e_channel_config_bw(struct i40e_vsi *vsi, struct i40e_channel *ch,
 	i40e_status ret;
 	int i;
 
+	memset(&bw_data, 0, sizeof(bw_data));
 	bw_data.tc_valid_bits = ch->enabled_tc;
 	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++)
 		bw_data.tc_bw_credits[i] = bw_share[i];
@@ -6414,6 +6416,9 @@ static void i40e_dcb_reconfigure(struct i40e_pf *pf)
 
 	/* Enable the TCs available on PF to all VEBs */
 	tc_map = i40e_pf_get_tc_map(pf);
+	if (tc_map == I40E_DEFAULT_TRAFFIC_CLASS)
+		return;
+
 	for (v = 0; v < I40E_MAX_VEB; v++) {
 		if (!pf->veb[v])
 			continue;
@@ -6480,6 +6485,316 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 	return ret;
 }
 
+/**
+ * i40e_suspend_port_tx - Suspend port Tx
+ * @pf: PF struct
+ *
+ * Suspend a port's Tx and issue a PF reset in case of failure.
+ **/
+static int i40e_suspend_port_tx(struct i40e_pf *pf)
+{
+	struct i40e_hw *hw = &pf->hw;
+	int ret;
+
+	ret = i40e_aq_suspend_port_tx(hw, pf->mac_seid, NULL);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Suspend Port Tx failed, err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		/* Schedule PF reset to recover */
+		set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
+		i40e_service_event_schedule(pf);
+	}
+
+	return ret;
+}
+
+/**
+ * i40e_hw_set_dcb_config - Program new DCBX settings into HW
+ * @pf: PF being configured
+ * @new_cfg: New DCBX configuration
+ *
+ * Program DCB settings into HW and reconfigure VEB/VSIs on
+ * given PF. Uses "Set LLDP MIB" AQC to program the hardware.
+ **/
+static int i40e_hw_set_dcb_config(struct i40e_pf *pf,
+				  struct i40e_dcbx_config *new_cfg)
+{
+	struct i40e_dcbx_config *old_cfg = &pf->hw.local_dcbx_config;
+	int ret;
+
+	/* Check if need reconfiguration */
+	if (!memcmp(&new_cfg, &old_cfg, sizeof(new_cfg))) {
+		dev_dbg(&pf->pdev->dev, "No Change in DCB Config required.\n");
+		return 0;
+	}
+
+	/* Config change disable all VSIs */
+	i40e_pf_quiesce_all_vsi(pf);
+
+	/* Copy the new config to the current config */
+	*old_cfg = *new_cfg;
+	old_cfg->etsrec = old_cfg->etscfg;
+	ret = i40e_set_dcb_config(&pf->hw);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Set DCB Config failed, err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		goto out;
+	}
+
+	/* Changes in configuration update VEB/VSI */
+	i40e_dcb_reconfigure(pf);
+out:
+	/* In case of reset do not try to resume anything */
+	if (!test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state)) {
+		/* Re-start the VSIs if disabled */
+		ret = i40e_resume_port_tx(pf);
+		/* In case of error no point in resuming VSIs */
+		if (ret)
+			goto err;
+		i40e_pf_unquiesce_all_vsi(pf);
+	}
+err:
+	return ret;
+}
+
+/**
+ * i40e_hw_dcb_config - Program new DCBX settings into HW
+ * @pf: PF being configured
+ * @new_cfg: New DCBX configuration
+ *
+ * Program DCB settings into HW and reconfigure VEB/VSIs on
+ * given PF
+ **/
+int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
+{
+	struct i40e_aqc_configure_switching_comp_ets_data ets_data;
+	u8 prio_type[I40E_MAX_TRAFFIC_CLASS] = {0};
+	u32 mfs_tc[I40E_MAX_TRAFFIC_CLASS];
+	struct i40e_dcbx_config *old_cfg;
+	u8 mode[I40E_MAX_TRAFFIC_CLASS];
+	struct i40e_rx_pb_config pb_cfg;
+	struct i40e_hw *hw = &pf->hw;
+	u8 num_ports = hw->num_ports;
+	bool need_reconfig;
+	int ret = -EINVAL;
+	u8 lltc_map = 0;
+	u8 tc_map = 0;
+	u8 new_numtc;
+	u8 i;
+
+	dev_dbg(&pf->pdev->dev, "Configuring DCB registers directly\n");
+	/* Un-pack information to Program ETS HW via shared API
+	 * numtc, tcmap
+	 * LLTC map
+	 * ETS/NON-ETS arbiter mode
+	 * max exponent (credit refills)
+	 * Total number of ports
+	 * PFC priority bit-map
+	 * Priority Table
+	 * BW % per TC
+	 * Arbiter mode between UPs sharing same TC
+	 * TSA table (ETS or non-ETS)
+	 * EEE enabled or not
+	 * MFS TC table
+	 */
+
+	new_numtc = i40e_dcb_get_num_tc(new_cfg);
+
+	memset(&ets_data, 0, sizeof(ets_data));
+	for (i = 0; i < new_numtc; i++) {
+		tc_map |= BIT(i);
+		switch (new_cfg->etscfg.tsatable[i]) {
+		case I40E_IEEE_TSA_ETS:
+			prio_type[i] = I40E_DCB_PRIO_TYPE_ETS;
+			ets_data.tc_bw_share_credits[i] =
+					new_cfg->etscfg.tcbwtable[i];
+			break;
+		case I40E_IEEE_TSA_STRICT:
+			prio_type[i] = I40E_DCB_PRIO_TYPE_STRICT;
+			lltc_map |= BIT(i);
+			ets_data.tc_bw_share_credits[i] =
+					I40E_DCB_STRICT_PRIO_CREDITS;
+			break;
+		default:
+			/* Invalid TSA type */
+			need_reconfig = false;
+			goto out;
+		}
+	}
+
+	old_cfg = &hw->local_dcbx_config;
+	/* Check if need reconfiguration */
+	need_reconfig = i40e_dcb_need_reconfig(pf, old_cfg, new_cfg);
+
+	/* If needed, enable/disable frame tagging, disable all VSIs
+	 * and suspend port tx
+	 */
+	if (need_reconfig) {
+		/* Enable DCB tagging only when more than one TC */
+		if (new_numtc > 1)
+			pf->flags |= I40E_FLAG_DCB_ENABLED;
+		else
+			pf->flags &= ~I40E_FLAG_DCB_ENABLED;
+
+		set_bit(__I40E_PORT_SUSPENDED, pf->state);
+		/* Reconfiguration needed quiesce all VSIs */
+		i40e_pf_quiesce_all_vsi(pf);
+		ret = i40e_suspend_port_tx(pf);
+		if (ret)
+			goto err;
+	}
+
+	/* Configure Port ETS Tx Scheduler */
+	ets_data.tc_valid_bits = tc_map;
+	ets_data.tc_strict_priority_flags = lltc_map;
+	ret = i40e_aq_config_switch_comp_ets
+		(hw, pf->mac_seid, &ets_data,
+		 i40e_aqc_opc_modify_switching_comp_ets, NULL);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "Modify Port ETS failed, err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		goto out;
+	}
+
+	/* Configure Rx ETS HW */
+	memset(&mode, I40E_DCB_ARB_MODE_ROUND_ROBIN, sizeof(mode));
+	i40e_dcb_hw_set_num_tc(hw, new_numtc);
+	i40e_dcb_hw_rx_fifo_config(hw, I40E_DCB_ARB_MODE_ROUND_ROBIN,
+				   I40E_DCB_ARB_MODE_STRICT_PRIORITY,
+				   I40E_DCB_DEFAULT_MAX_EXPONENT,
+				   lltc_map);
+	i40e_dcb_hw_rx_cmd_monitor_config(hw, new_numtc, num_ports);
+	i40e_dcb_hw_rx_ets_bw_config(hw, new_cfg->etscfg.tcbwtable, mode,
+				     prio_type);
+	i40e_dcb_hw_pfc_config(hw, new_cfg->pfc.pfcenable,
+			       new_cfg->etscfg.prioritytable);
+	i40e_dcb_hw_rx_up2tc_config(hw, new_cfg->etscfg.prioritytable);
+
+	/* Configure Rx Packet Buffers in HW */
+	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
+		mfs_tc[i] = pf->vsi[pf->lan_vsi]->netdev->mtu;
+		mfs_tc[i] += I40E_PACKET_HDR_PAD;
+	}
+
+	i40e_dcb_hw_calculate_pool_sizes(hw, num_ports,
+					 false, new_cfg->pfc.pfcenable,
+					 mfs_tc, &pb_cfg);
+	i40e_dcb_hw_rx_pb_config(hw, &pf->pb_cfg, &pb_cfg);
+
+	/* Update the local Rx Packet buffer config */
+	pf->pb_cfg = pb_cfg;
+
+	/* Inform the FW about changes to DCB configuration */
+	ret = i40e_aq_dcb_updated(&pf->hw, NULL);
+	if (ret) {
+		dev_info(&pf->pdev->dev,
+			 "DCB Updated failed, err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, ret),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		goto out;
+	}
+
+	/* Update the port DCBx configuration */
+	*old_cfg = *new_cfg;
+
+	/* Changes in configuration update VEB/VSI */
+	i40e_dcb_reconfigure(pf);
+out:
+	/* Re-start the VSIs if disabled */
+	if (need_reconfig) {
+		ret = i40e_resume_port_tx(pf);
+
+		clear_bit(__I40E_PORT_SUSPENDED, pf->state);
+		/* In case of error no point in resuming VSIs */
+		if (ret)
+			goto err;
+
+		/* Wait for the PF's queues to be disabled */
+		ret = i40e_pf_wait_queues_disabled(pf);
+		if (ret) {
+			/* Schedule PF reset to recover */
+			set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
+			i40e_service_event_schedule(pf);
+			goto err;
+		} else {
+			i40e_pf_unquiesce_all_vsi(pf);
+			set_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
+			set_bit(__I40E_CLIENT_L2_CHANGE, pf->state);
+		}
+	/* registers are set, lets apply */
+	if (pf->hw_features & I40E_HW_USE_SET_LLDP_MIB)
+		ret = i40e_hw_set_dcb_config(pf, new_cfg);
+	}
+
+err:
+	return ret;
+}
+
+/**
+ * i40e_dcb_sw_default_config - Set default DCB configuration when DCB in SW
+ * @pf: PF being queried
+ *
+ * Set default DCB configuration in case DCB is to be done in SW.
+ **/
+int i40e_dcb_sw_default_config(struct i40e_pf *pf)
+{
+	struct i40e_dcbx_config *dcb_cfg = &pf->hw.local_dcbx_config;
+	struct i40e_aqc_configure_switching_comp_ets_data ets_data;
+	struct i40e_hw *hw = &pf->hw;
+	int err;
+
+	if (pf->hw_features & I40E_HW_USE_SET_LLDP_MIB) {
+		/* Update the local cached instance with TC0 ETS */
+		memset(&pf->tmp_cfg, 0, sizeof(struct i40e_dcbx_config));
+		pf->tmp_cfg.etscfg.willing = I40E_IEEE_DEFAULT_ETS_WILLING;
+		pf->tmp_cfg.etscfg.maxtcs = 0;
+		pf->tmp_cfg.etscfg.tcbwtable[0] = I40E_IEEE_DEFAULT_ETS_TCBW;
+		pf->tmp_cfg.etscfg.tsatable[0] = I40E_IEEE_TSA_ETS;
+		pf->tmp_cfg.pfc.willing = I40E_IEEE_DEFAULT_PFC_WILLING;
+		pf->tmp_cfg.pfc.pfccap = I40E_MAX_TRAFFIC_CLASS;
+		/* FW needs one App to configure HW */
+		pf->tmp_cfg.numapps = I40E_IEEE_DEFAULT_NUM_APPS;
+		pf->tmp_cfg.app[0].selector = I40E_APP_SEL_ETHTYPE;
+		pf->tmp_cfg.app[0].priority = I40E_IEEE_DEFAULT_APP_PRIO;
+		pf->tmp_cfg.app[0].protocolid = I40E_APP_PROTOID_FCOE;
+
+		return i40e_hw_set_dcb_config(pf, &pf->tmp_cfg);
+	}
+
+	memset(&ets_data, 0, sizeof(ets_data));
+	ets_data.tc_valid_bits = I40E_DEFAULT_TRAFFIC_CLASS; /* TC0 only */
+	ets_data.tc_strict_priority_flags = 0; /* ETS */
+	ets_data.tc_bw_share_credits[0] = I40E_IEEE_DEFAULT_ETS_TCBW; /* 100% to TC0 */
+
+	/* Enable ETS on the Physical port */
+	err = i40e_aq_config_switch_comp_ets
+		(hw, pf->mac_seid, &ets_data,
+		 i40e_aqc_opc_enable_switching_comp_ets, NULL);
+	if (err) {
+		dev_info(&pf->pdev->dev,
+			 "Enable Port ETS failed, err %s aq_err %s\n",
+			 i40e_stat_str(&pf->hw, err),
+			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		err = -ENOENT;
+		goto out;
+	}
+
+	/* Update the local cached instance with TC0 ETS */
+	dcb_cfg->etscfg.willing = I40E_IEEE_DEFAULT_ETS_WILLING;
+	dcb_cfg->etscfg.cbs = 0;
+	dcb_cfg->etscfg.maxtcs = I40E_MAX_TRAFFIC_CLASS;
+	dcb_cfg->etscfg.tcbwtable[0] = I40E_IEEE_DEFAULT_ETS_TCBW;
+
+out:
+	return err;
+}
+
 /**
  * i40e_init_pf_dcb - Initialize DCB configuration
  * @pf: PF being configured
@@ -6490,18 +6805,31 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 static int i40e_init_pf_dcb(struct i40e_pf *pf)
 {
 	struct i40e_hw *hw = &pf->hw;
-	int err = 0;
+	int err;
 
 	/* Do not enable DCB for SW1 and SW2 images even if the FW is capable
 	 * Also do not enable DCBx if FW LLDP agent is disabled
 	 */
-	if ((pf->hw_features & I40E_HW_NO_DCB_SUPPORT) ||
-	    (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)) {
-		dev_info(&pf->pdev->dev, "DCB is not supported or FW LLDP is disabled\n");
+	if (pf->hw_features & I40E_HW_NO_DCB_SUPPORT) {
+		dev_info(&pf->pdev->dev, "DCB is not supported.\n");
 		err = I40E_NOT_SUPPORTED;
 		goto out;
 	}
-
+	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP) {
+		dev_info(&pf->pdev->dev, "FW LLDP is disabled, attempting SW DCB\n");
+		err = i40e_dcb_sw_default_config(pf);
+		if (err) {
+			dev_info(&pf->pdev->dev, "Could not initialize SW DCB\n");
+			goto out;
+		}
+		dev_info(&pf->pdev->dev, "SW DCB initialization succeeded.\n");
+		pf->dcbx_cap = DCB_CAP_DCBX_HOST |
+			       DCB_CAP_DCBX_VER_IEEE;
+		/* at init capable but disabled */
+		pf->flags |= I40E_FLAG_DCB_CAPABLE;
+		pf->flags &= ~I40E_FLAG_DCB_ENABLED;
+		goto out;
+	}
 	err = i40e_init_dcb(hw, true);
 	if (!err) {
 		/* Device/Function is not DCBX capable */
@@ -6540,6 +6868,40 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 }
 #endif /* CONFIG_I40E_DCB */
 
+/**
+ * i40e_set_lldp_forwarding - set forwarding of lldp frames
+ * @pf: PF being configured
+ * @enable: if forwarding to OS shall be enabled
+ *
+ * Toggle forwarding of lldp frames behavior,
+ * When passing DCB control from firmware to software
+ * lldp frames must be forwarded to the software based
+ * lldp agent.
+ */
+void i40e_set_lldp_forwarding(struct i40e_pf *pf, bool enable)
+{
+	if (pf->lan_vsi == I40E_NO_VSI)
+		return;
+
+	if (!pf->vsi[pf->lan_vsi])
+		return;
+
+	/* No need to check the outcome, commands may fail
+	 * if desired value is already set
+	 */
+	i40e_aq_add_rem_control_packet_filter(&pf->hw, NULL, ETH_P_LLDP,
+					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX |
+					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC,
+					      pf->vsi[pf->lan_vsi]->seid, 0,
+					      enable, NULL, NULL);
+
+	i40e_aq_add_rem_control_packet_filter(&pf->hw, NULL, ETH_P_LLDP,
+					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_RX |
+					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC,
+					      pf->vsi[pf->lan_vsi]->seid, 0,
+					      enable, NULL, NULL);
+}
+
 /**
  * i40e_print_link_message - print link up or down
  * @vsi: the VSI for which link needs a message
@@ -8304,7 +8666,6 @@ int i40e_open(struct net_device *netdev)
 						       TCP_FLAG_FIN |
 						       TCP_FLAG_CWR) >> 16);
 	wr32(&pf->hw, I40E_GLLAN_TSOMSK_L, be32_to_cpu(TCP_FLAG_CWR) >> 16);
-
 	udp_tunnel_get_rx_info(netdev);
 
 	return 0;
@@ -8684,6 +9045,14 @@ static int i40e_handle_lldp_event(struct i40e_pf *pf,
 	int ret = 0;
 	u8 type;
 
+	/* X710-T*L 2.5G and 5G speeds don't support DCB */
+	if (I40E_IS_X710TL_DEVICE(hw->device_id) &&
+	    (hw->phy.link_info.link_speed &
+	     ~(I40E_LINK_SPEED_2_5GB | I40E_LINK_SPEED_5GB)) &&
+	     !(pf->flags & I40E_FLAG_DCB_CAPABLE))
+		/* let firmware decide if the DCB should be disabled */
+		pf->flags |= I40E_FLAG_DCB_CAPABLE;
+
 	/* Not DCB capable or capability disabled */
 	if (!(pf->flags & I40E_FLAG_DCB_CAPABLE))
 		return ret;
@@ -8715,10 +9084,20 @@ static int i40e_handle_lldp_event(struct i40e_pf *pf,
 	/* Get updated DCBX data from firmware */
 	ret = i40e_get_dcb_config(&pf->hw);
 	if (ret) {
-		dev_info(&pf->pdev->dev,
-			 "Failed querying DCB configuration data from firmware, err %s aq_err %s\n",
-			 i40e_stat_str(&pf->hw, ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+		/* X710-T*L 2.5G and 5G speeds don't support DCB */
+		if (I40E_IS_X710TL_DEVICE(hw->device_id) &&
+		    (hw->phy.link_info.link_speed &
+		     (I40E_LINK_SPEED_2_5GB | I40E_LINK_SPEED_5GB))) {
+			dev_warn(&pf->pdev->dev,
+				 "DCB is not supported for X710-T*L 2.5/5G speeds\n");
+			pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
+		} else {
+			dev_info(&pf->pdev->dev,
+				 "Failed querying DCB configuration data from firmware, err %s aq_err %s\n",
+				 i40e_stat_str(&pf->hw, ret),
+				 i40e_aq_str(&pf->hw,
+					     pf->hw.aq.asq_last_status));
+		}
 		goto exit;
 	}
 
@@ -9165,6 +9544,9 @@ static void i40e_link_event(struct i40e_pf *pf)
 	u8 new_link_speed, old_link_speed;
 	i40e_status status;
 	bool new_link, old_link;
+#ifdef CONFIG_I40E_DCB
+	int err;
+#endif /* CONFIG_I40E_DCB */
 
 	/* set this to force the get_link_status call to refresh state */
 	pf->hw.phy.get_link_info = true;
@@ -9208,6 +9590,31 @@ static void i40e_link_event(struct i40e_pf *pf)
 
 	if (pf->flags & I40E_FLAG_PTP)
 		i40e_ptp_set_increment(pf);
+#ifdef CONFIG_I40E_DCB
+	if (new_link == old_link)
+		return;
+	/* Not SW DCB so firmware will take care of default settings */
+	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED)
+		return;
+
+	/* We cover here only link down, as after link up in case of SW DCB
+	 * SW LLDP agent will take care of setting it up
+	 */
+	if (!new_link) {
+		dev_dbg(&pf->pdev->dev, "Reconfig DCB to single TC as result of Link Down\n");
+		memset(&pf->tmp_cfg, 0, sizeof(pf->tmp_cfg));
+		err = i40e_dcb_sw_default_config(pf);
+		if (err) {
+			pf->flags &= ~(I40E_FLAG_DCB_CAPABLE |
+				       I40E_FLAG_DCB_ENABLED);
+		} else {
+			pf->dcbx_cap = DCB_CAP_DCBX_HOST |
+				       DCB_CAP_DCBX_VER_IEEE;
+			pf->flags |= I40E_FLAG_DCB_CAPABLE;
+			pf->flags &= ~I40E_FLAG_DCB_ENABLED;
+		}
+	}
+#endif /* CONFIG_I40E_DCB */
 }
 
 /**
@@ -9284,7 +9691,7 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
 	 * precedence before starting a new reset sequence.
 	 */
 	if (test_bit(__I40E_RESET_INTR_RECEIVED, pf->state)) {
-		i40e_prep_for_reset(pf, false);
+		i40e_prep_for_reset(pf);
 		i40e_reset(pf);
 		i40e_rebuild(pf, false, false);
 	}
@@ -9416,7 +9823,9 @@ static void i40e_clean_adminq_subtask(struct i40e_pf *pf)
 		switch (opcode) {
 
 		case i40e_aqc_opc_get_link_status:
+			rtnl_lock();
 			i40e_handle_link_event(pf, &event);
+			rtnl_unlock();
 			break;
 		case i40e_aqc_opc_send_msg_to_pf:
 			ret = i40e_vc_process_vf_msg(pf,
@@ -9916,12 +10325,10 @@ static int i40e_rebuild_channels(struct i40e_vsi *vsi)
 /**
  * i40e_prep_for_reset - prep for the core to reset
  * @pf: board private structure
- * @lock_acquired: indicates whether or not the lock has been acquired
- * before this function was called.
  *
  * Close up the VFs and other things in prep for PF Reset.
   **/
-static void i40e_prep_for_reset(struct i40e_pf *pf, bool lock_acquired)
+static void i40e_prep_for_reset(struct i40e_pf *pf)
 {
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status ret = 0;
@@ -9936,12 +10343,7 @@ static void i40e_prep_for_reset(struct i40e_pf *pf, bool lock_acquired)
 	dev_dbg(&pf->pdev->dev, "Tearing down internal switch for reset\n");
 
 	/* quiesce the VSIs and their queues that are not already DOWN */
-	/* pf_quiesce_all_vsi modifies netdev structures -rtnl_lock needed */
-	if (!lock_acquired)
-		rtnl_lock();
 	i40e_pf_quiesce_all_vsi(pf);
-	if (!lock_acquired)
-		rtnl_unlock();
 
 	for (v = 0; v < pf->num_alloc_vsi; v++) {
 		if (pf->vsi[v])
@@ -10153,24 +10555,41 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		goto end_core_reset;
 	}
 
-	/* Enable FW to write a default DCB config on link-up */
-	i40e_aq_set_dcb_parameters(hw, true, NULL);
-
-#ifdef CONFIG_I40E_DCB
-	ret = i40e_init_pf_dcb(pf);
-	if (ret) {
-		dev_info(&pf->pdev->dev, "DCB init failed %d, disabled\n", ret);
-		pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
-		/* Continue without DCB enabled */
-	}
-#endif /* CONFIG_I40E_DCB */
-	/* do basic switch setup */
 	if (!lock_acquired)
 		rtnl_lock();
 	ret = i40e_setup_pf_switch(pf, reinit);
 	if (ret)
 		goto end_unlock;
 
+#ifdef CONFIG_I40E_DCB
+	/* Enable FW to write a default DCB config on link-up
+	 * unless I40E_FLAG_TC_MQPRIO was enabled or DCB
+	 * is not supported with new link speed
+	 */
+	if (pf->flags & I40E_FLAG_TC_MQPRIO) {
+		i40e_aq_set_dcb_parameters(hw, false, NULL);
+	} else {
+		if (I40E_IS_X710TL_DEVICE(hw->device_id) &&
+		    (hw->phy.link_info.link_speed &
+		     (I40E_LINK_SPEED_2_5GB | I40E_LINK_SPEED_5GB))) {
+			i40e_aq_set_dcb_parameters(hw, false, NULL);
+			dev_warn(&pf->pdev->dev,
+				 "DCB is not supported for X710-T*L 2.5/5G speeds\n");
+				 pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
+		} else {
+			i40e_aq_set_dcb_parameters(hw, true, NULL);
+			ret = i40e_init_pf_dcb(pf);
+			if (ret) {
+				dev_info(&pf->pdev->dev, "DCB init failed %d, disabled\n",
+					 ret);
+				pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
+				/* Continue without DCB enabled */
+			}
+		}
+	}
+
+#endif /* CONFIG_I40E_DCB */
+
 	/* The driver only wants link up/down and module qualification
 	 * reports from firmware.  Note the negative logic.
 	 */
@@ -10307,6 +10726,10 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	 */
 	i40e_add_filter_to_drop_tx_flow_control_frames(&pf->hw,
 						       pf->main_vsi_seid);
+#ifdef CONFIG_I40E_DCB
+	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)
+		i40e_set_lldp_forwarding(pf, true);
+#endif /* CONFIG_I40E_DCB */
 
 	/* restart the VSIs that were rebuilt and running before the reset */
 	i40e_pf_unquiesce_all_vsi(pf);
@@ -10373,7 +10796,7 @@ static void i40e_reset_and_rebuild(struct i40e_pf *pf, bool reinit,
  **/
 static void i40e_handle_reset_warning(struct i40e_pf *pf, bool lock_acquired)
 {
-	i40e_prep_for_reset(pf, lock_acquired);
+	i40e_prep_for_reset(pf);
 	i40e_reset_and_rebuild(pf, false, lock_acquired);
 }
 
@@ -11707,7 +12130,7 @@ int i40e_reconfig_rss_queues(struct i40e_pf *pf, int queue_count)
 		u16 qcount;
 
 		vsi->req_queue_pairs = queue_count;
-		i40e_prep_for_reset(pf, true);
+		i40e_prep_for_reset(pf);
 
 		pf->alloc_rss_size = new_rss_size;
 
@@ -12525,7 +12948,7 @@ static int i40e_xdp_setup(struct i40e_vsi *vsi,
 	need_reset = (i40e_enabled_xdp_vsi(vsi) != !!prog);
 
 	if (need_reset)
-		i40e_prep_for_reset(pf, true);
+		i40e_prep_for_reset(pf);
 
 	old_prog = xchg(&vsi->xdp_prog, prog);
 
@@ -14765,6 +15188,10 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
 static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
+#ifdef CONFIG_I40E_DCB
+	enum i40e_get_fw_lldp_status_resp lldp_status;
+	i40e_status status;
+#endif /* CONFIG_I40E_DCB */
 	struct i40e_pf *pf;
 	struct i40e_hw *hw;
 	static u16 pfs_found;
@@ -15017,11 +15444,15 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i40e_get_port_mac_addr(hw, hw->mac.port_addr);
 	if (is_valid_ether_addr(hw->mac.port_addr))
 		pf->hw_features |= I40E_HW_PORT_ID_VALID;
-
 	i40e_ptp_alloc_pins(pf);
 	pci_set_drvdata(pdev, pf);
 	pci_save_state(pdev);
-
+#ifdef CONFIG_I40E_DCB
+	status = i40e_get_fw_lldp_status(&pf->hw, &lldp_status);
+	(!status &&
+	 lldp_status == I40E_GET_FW_LLDP_STATUS_ENABLED) ?
+		(pf->flags &= ~I40E_FLAG_DISABLE_FW_LLDP) :
+		(pf->flags |= I40E_FLAG_DISABLE_FW_LLDP);
 	dev_info(&pdev->dev,
 		 (pf->flags & I40E_FLAG_DISABLE_FW_LLDP) ?
 			"FW LLDP is disabled\n" :
@@ -15030,7 +15461,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Enable FW to write default DCB config on link-up */
 	i40e_aq_set_dcb_parameters(hw, true, NULL);
 
-#ifdef CONFIG_I40E_DCB
 	err = i40e_init_pf_dcb(pf);
 	if (err) {
 		dev_info(&pdev->dev, "DCB init failed %d, disabled\n", err);
@@ -15323,6 +15753,10 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 	i40e_add_filter_to_drop_tx_flow_control_frames(&pf->hw,
 						       pf->main_vsi_seid);
+#ifdef CONFIG_I40E_DCB
+	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)
+		i40e_set_lldp_forwarding(pf, true);
+#endif /* CONFIG_I40E_DCB */
 
 	if ((pf->hw.device_id == I40E_DEV_ID_10G_BASE_T) ||
 		(pf->hw.device_id == I40E_DEV_ID_10G_BASE_T4))
@@ -15525,7 +15959,7 @@ static pci_ers_result_t i40e_pci_error_detected(struct pci_dev *pdev,
 
 	/* shutdown all operations */
 	if (!test_bit(__I40E_SUSPENDED, pf->state))
-		i40e_prep_for_reset(pf, false);
+		i40e_prep_for_reset(pf);
 
 	/* Request a slot reset */
 	return PCI_ERS_RESULT_NEED_RESET;
@@ -15575,7 +16009,7 @@ static void i40e_pci_error_reset_prepare(struct pci_dev *pdev)
 {
 	struct i40e_pf *pf = pci_get_drvdata(pdev);
 
-	i40e_prep_for_reset(pf, false);
+	i40e_prep_for_reset(pf);
 }
 
 /**
@@ -15679,7 +16113,7 @@ static void i40e_shutdown(struct pci_dev *pdev)
 	if (pf->wol_en && (pf->hw_features & I40E_HW_WOL_MC_MAGIC_PKT_WAKE))
 		i40e_enable_mc_magic_wake(pf);
 
-	i40e_prep_for_reset(pf, false);
+	i40e_prep_for_reset(pf);
 
 	wr32(hw, I40E_PFPM_APM,
 	     (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
@@ -15738,7 +16172,7 @@ static int __maybe_unused i40e_suspend(struct device *dev)
 	 */
 	rtnl_lock();
 
-	i40e_prep_for_reset(pf, true);
+	i40e_prep_for_reset(pf);
 
 	wr32(hw, I40E_PFPM_APM, (pf->wol_en ? I40E_PFPM_APM_APME_MASK : 0));
 	wr32(hw, I40E_PFPM_WUFC, (pf->wol_en ? I40E_PFPM_WUFC_MAG_MASK : 0));
-- 
2.18.4

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

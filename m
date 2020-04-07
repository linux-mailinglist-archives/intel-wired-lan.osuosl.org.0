Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A137D1A1348
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Apr 2020 20:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF1BB87D28;
	Tue,  7 Apr 2020 18:03:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJm9T2LcZgH3; Tue,  7 Apr 2020 18:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA28687D11;
	Tue,  7 Apr 2020 18:03:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FCEA1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 18:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0B7A8875CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 18:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DQXoDHybtVdM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 18:03:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5A8486D69
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 18:03:18 +0000 (UTC)
IronPort-SDR: ZBXNK0ZWCukE1rfN+s9pasEPNtJvbMTV+5aR+BsIXbuD8WwXyI+yRtOliO8mvzkuyYsvFIPsrf
 zzN+cQIcAS0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 11:02:56 -0700
IronPort-SDR: QkhFPDz3uozRPJlUhZ3E4TNn1rTqpkg8R08BjZ70tDcWkn7fBWwYch7/trU/0PBNQZ141+xcEg
 GprQSHjA9rnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="297012197"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2020 11:02:55 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 11:02:52 -0700
Message-Id: <20200407180252.1920528-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add support for a new
 feature: Total Port Shutdown
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
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Currently after requesting to down a link on a physical network port,
the traffic is no longer being processed but the physical link
with a link partner is still established.

Total Port Shutdown allows to completely shutdown the port on the
link-down procedure by physically removing the link from the port.

Introduced changes:
- probe NVM if the feature was enabled at initialization of the port
- special handling on link-down procedure to let FW physically
shutdown the port if the feature was enabled

Testing Hints (required if no HSD):
Link up/down, link-down-on-close

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2: added missing define

 drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |   1 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   8 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 125 +++++++++++++++---
 4 files changed, 114 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index e8a42415531a..0019fbe0865b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -547,6 +547,7 @@ struct i40e_pf {
 #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
 #define I40E_FLAG_RS_FEC			BIT(25)
 #define I40E_FLAG_BASE_R_FEC			BIT(26)
+#define I40E_FLAG_TOTAL_PORT_SHUTDOWN		BIT(27)
 
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index 12bc19a7716e..08c315333073 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -1687,6 +1687,7 @@ struct i40e_aq_set_phy_config { /* same bits as above in all */
 	u8	link_speed;
 	u8	abilities;
 /* bits 0-2 use the values from get_phy_abilities_resp */
+#define I40E_AQ_PHY_ENABLE_LINK		0x08
 #define I40E_AQ_PHY_ENABLE_AN		0x10
 #define I40E_AQ_PHY_ENABLE_ATOMIC_LINK	0x20
 	__le16	eee_capability;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index aa8026b1eb81..533dab295720 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -428,6 +428,7 @@ struct i40e_priv_flags {
 static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	/* NOTE: MFP setting cannot be changed */
 	I40E_PRIV_FLAG("MFP", I40E_FLAG_MFP_ENABLED, 1),
+	I40E_PRIV_FLAG("total-port-shutdown", I40E_FLAG_TOTAL_PORT_SHUTDOWN, 1),
 	I40E_PRIV_FLAG("LinkPolling", I40E_FLAG_LINK_POLLING_ENABLED, 0),
 	I40E_PRIV_FLAG("flow-director-atr", I40E_FLAG_FD_ATR_ENABLED, 0),
 	I40E_PRIV_FLAG("veb-stats", I40E_FLAG_VEB_STATS_ENABLED, 0),
@@ -5006,6 +5007,13 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 			dev_warn(&pf->pdev->dev, "Cannot change FEC config\n");
 	}
 
+	if ((changed_flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED) &&
+	    (orig_flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN)) {
+		dev_err(&pf->pdev->dev,
+			"Setting link-down-on-close not supported on this port\n");
+		return -EOPNOTSUPP;
+	}
+
 	if ((changed_flags & new_flags &
 	     I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED) &&
 	    (new_flags & I40E_FLAG_MFP_ENABLED))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index ee1110bc8d09..b08dccbe6ef2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -54,7 +54,7 @@ static void i40e_fdir_sb_setup(struct i40e_pf *pf);
 static int i40e_veb_get_bw_info(struct i40e_veb *veb);
 static int i40e_get_capabilities(struct i40e_pf *pf,
 				 enum i40e_admin_queue_opc list_type);
-
+static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf);
 
 /* i40e_pci_tbl - PCI Device ID Table
  *
@@ -6670,21 +6670,6 @@ static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi)
 	clear_bit(__I40E_CONFIG_BUSY, pf->state);
 }
 
-/**
- * i40e_up - Bring the connection back up after being down
- * @vsi: the VSI being configured
- **/
-int i40e_up(struct i40e_vsi *vsi)
-{
-	int err;
-
-	err = i40e_vsi_configure(vsi);
-	if (!err)
-		err = i40e_up_complete(vsi);
-
-	return err;
-}
-
 /**
  * i40e_force_link_state - Force the link status
  * @pf: board private structure
@@ -6695,10 +6680,12 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_aq_set_phy_config config = {0};
 	struct i40e_hw *hw = &pf->hw;
+	bool non_zero_phy_type;
 	i40e_status err;
 	u64 mask;
 	u8 speed;
 
+	non_zero_phy_type = is_up;
 	/* Card might've been put in an unstable state by other drivers
 	 * and applications, which causes incorrect speed values being
 	 * set on startup. In order to clear speed registers, we call
@@ -6729,8 +6716,11 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 
 	/* If link needs to go up, but was not forced to go down,
 	 * and its speed values are OK, no need for a flap
+	 * if non_zero_phy_type was set, still need to force up
 	 */
-	if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
+	if (pf->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN)
+		non_zero_phy_type = true;
+	else if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
 		return I40E_SUCCESS;
 
 	/* To force link we need to set bits for all supported PHY types,
@@ -6738,10 +6728,18 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	 * across two fields.
 	 */
 	mask = I40E_PHY_TYPES_BITMASK;
-	config.phy_type = is_up ? cpu_to_le32((u32)(mask & 0xffffffff)) : 0;
-	config.phy_type_ext = is_up ? (u8)((mask >> 32) & 0xff) : 0;
+	config.phy_type =
+		non_zero_phy_type ? cpu_to_le32((u32)(mask & 0xffffffff)) : 0;
+	config.phy_type_ext =
+		non_zero_phy_type ? (u8)((mask >> 32) & 0xff) : 0;
 	/* Copy the old settings, except of phy_type */
 	config.abilities = abilities.abilities;
+	if (pf->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN) {
+		if (is_up)
+			config.abilities |= I40E_AQ_PHY_ENABLE_LINK;
+		else
+			config.abilities &= ~(I40E_AQ_PHY_ENABLE_LINK);
+	}
 	if (abilities.link_speed != 0)
 		config.link_speed = abilities.link_speed;
 	else
@@ -6772,11 +6770,31 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 		i40e_update_link_info(hw);
 	}
 
-	i40e_aq_set_link_restart_an(hw, true, NULL);
+	i40e_aq_set_link_restart_an(hw, is_up, NULL);
 
 	return I40E_SUCCESS;
 }
 
+/**
+ * i40e_up - Bring the connection back up after being down
+ * @vsi: the VSI being configured
+ **/
+int i40e_up(struct i40e_vsi *vsi)
+{
+	int err;
+
+	if (vsi->type == I40E_VSI_MAIN &&
+	    (vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED ||
+	     vsi->back->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN))
+		i40e_force_link_state(vsi->back, true);
+
+	err = i40e_vsi_configure(vsi);
+	if (!err)
+		err = i40e_up_complete(vsi);
+
+	return err;
+}
+
 /**
  * i40e_down - Shutdown the connection processing
  * @vsi: the VSI being stopped
@@ -6795,7 +6813,8 @@ void i40e_down(struct i40e_vsi *vsi)
 	i40e_vsi_disable_irq(vsi);
 	i40e_vsi_stop_rings(vsi);
 	if (vsi->type == I40E_VSI_MAIN &&
-	    vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED)
+	   (vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED ||
+	    vsi->back->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN))
 		i40e_force_link_state(vsi->back, false);
 	i40e_napi_disable_all(vsi);
 
@@ -11834,6 +11853,60 @@ i40e_status i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 	return ret;
 }
 
+/**
+ * i40e_is_total_port_shutdown_enabled - read nvm and return value
+ * if total port shutdown feature is enabled for this pf
+ * @pf: board private structure
+ **/
+static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf)
+{
+#define I40E_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(4)
+#define I40E_FEATURES_ENABLE_PTR		0x2A
+#define I40E_CURRENT_SETTING_PTR		0x2B
+#define I40E_LINK_BEHAVIOR_WORD_OFFSET		0x2D
+#define I40E_LINK_BEHAVIOR_WORD_LENGTH		0x1
+#define I40E_LINK_BEHAVIOR_OS_FORCED_ENABLED	BIT(0)
+#define I40E_LINK_BEHAVIOR_PORT_BIT_LENGTH	4
+	i40e_status read_status = I40E_SUCCESS;
+	u16 sr_emp_sr_settings_ptr = 0;
+	u16 features_enable = 0;
+	u16 link_behavior = 0;
+	bool ret = false;
+
+	read_status = i40e_read_nvm_word(&pf->hw,
+					 I40E_SR_EMP_SR_SETTINGS_PTR,
+					 &sr_emp_sr_settings_ptr);
+	if (read_status)
+		goto err_nvm;
+	read_status = i40e_read_nvm_word(&pf->hw,
+					 sr_emp_sr_settings_ptr +
+					 I40E_FEATURES_ENABLE_PTR,
+					 &features_enable);
+	if (read_status)
+		goto err_nvm;
+	if (I40E_TOTAL_PORT_SHUTDOWN_ENABLED & features_enable) {
+		read_status =
+		i40e_read_nvm_module_data(&pf->hw,
+					  I40E_SR_EMP_SR_SETTINGS_PTR,
+					  I40E_CURRENT_SETTING_PTR,
+					  I40E_LINK_BEHAVIOR_WORD_OFFSET,
+					  I40E_LINK_BEHAVIOR_WORD_LENGTH,
+					  &link_behavior);
+		if (read_status)
+			goto err_nvm;
+		link_behavior >>=
+		(pf->hw.port * I40E_LINK_BEHAVIOR_PORT_BIT_LENGTH);
+		ret = I40E_LINK_BEHAVIOR_OS_FORCED_ENABLED & link_behavior;
+	}
+	return ret;
+
+err_nvm:
+	dev_warn(&pf->pdev->dev,
+		 "Total Port Shutdown feature is off due to read nvm error:%d\n",
+		 read_status);
+	return ret;
+}
+
 /**
  * i40e_sw_init - Initialize general software structures (struct i40e_pf)
  * @pf: board private structure to initialize
@@ -12009,6 +12082,16 @@ static int i40e_sw_init(struct i40e_pf *pf)
 
 	pf->tx_timeout_recovery_level = 1;
 
+	if (pf->hw.mac.type != I40E_MAC_X722 &&
+	    i40e_is_total_port_shutdown_enabled(pf)) {
+		/* Link down on close must be on when total port shutdown
+		 * is enabled for a given port
+		 */
+		pf->flags |= (I40E_FLAG_TOTAL_PORT_SHUTDOWN
+			  | I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED);
+		dev_info(&pf->pdev->dev,
+			 "Total Port Shutdown is enabled, link-down-on-close forced on\n");
+	}
 	mutex_init(&pf->switch_mutex);
 
 sw_init_done:
-- 
2.25.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A78141FC29F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2020 02:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F1CD87A58;
	Wed, 17 Jun 2020 00:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJQyJqIJ6W7w; Wed, 17 Jun 2020 00:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F03087A59;
	Wed, 17 Jun 2020 00:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14CE51BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 00:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1043587A4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 00:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K79AwPQExO_G for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2020 00:11:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0D0A878E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2020 00:11:34 +0000 (UTC)
IronPort-SDR: +6W4LDvhPkB5feISsdepJV5QYQXCYhpHalZizu5q60/0WR2Fr9AbAe5sQ3rLkDe+q1nvtXA1lH
 4e+KCgeWZXtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 17:11:26 -0700
IronPort-SDR: c6GoOZM3od6KmzwAjyXKWOnAyDfkvVM/A7CjJjJQcZHQFuakV73x/cu9kmqms3OuchCjfGZyE2
 U/cKqECVsrgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="383030663"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga001.fm.intel.com with ESMTP; 16 Jun 2020 17:11:24 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 17 Jun 2020 00:05:55 +0000
Message-Id: <20200617000555.15985-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3] i40e: Add support for a new feature:
 Total Port Shutdown
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

After OS requests to down a link on a physical network port, the
traffic is no longer being processed but the physical link with
a link partner is still established.

Currently there is a feature (Link down on close) which allows
to physically bring the link down (after OS request).

With this patch new feature with similar capability is introduced:
TOTAL_PORT_SHUTDOWN
Allows to physically disable the link on the NIC's port.
If enabled, (after link down request from the OS)
no link, traffic or led activity is possible on that port.

If I40E_FLAG_TOTAL_PORT_SHUTDOWN is enabled, the
I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED must be explicitly forced to
true and cannot be disabled at that time.
The functionalities are exclusive in terms of configuration, but
they also have similar behavior (allowing to disable physical link
of the port), with following differences:
- LINK_DOWN_ON_CLOSE_ENABLED is configurable at host OS run-time
  and is supported by whole family of 7xx Intel Ethernet Controllers
- TOTAL_PORT_SHUTDOWN may be enabled only before OS loads (in BIOS)
  only if motherboard's BIOS and NIC's FW has support of it
- when LINK_DOWN_ON_CLOSE_ENABLED is used, the link is being brought
  down by sending phy_type=0 to NIC's FW
- when TOTAL_PORT_SHUTDOWN is used, phy_type is not altered, instead
  the link is being brought down by clearing bit
  (I40E_AQ_PHY_ENABLE_LINK) in abilities field of
  i40e_aq_set_phy_config structure

Introduced changes:
- new private flag I40E_FLAG_TOTAL_PORT_SHUTDOWN for handling the
  feature
- probe of NVM if the feature was enabled at driver's port
  initialization
- special handling on link-down procedure to let FW physically
  shutdown the port if the feature was enabled

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v3:
- error messages changed
- '_ENABLED' suffix in a new private flag name
- new comment for documentation of a new private flag
- rewrite commit message

--- Cut off before submitting to external review ---
Testing Hints (required if no HSD):
Link up/down, link-down-on-close

Change-Id: I5427227c31b5e2d30f1149ad8d27d475caa27241
Title: i40e: Add support for a new feature: Total Port Shutdown
Change-type: FeatureImplementation
HSDES-Number: 2209979406
HSDES-Tenant: server_platf_lan.bug
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  22 ++++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   9 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 124 +++++++++++++++---
 3 files changed, 134 insertions(+), 21 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 4833187..f9b966f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -567,6 +567,28 @@ struct i40e_pf {
 #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
 #define I40E_FLAG_RS_FEC			BIT(25)
 #define I40E_FLAG_BASE_R_FEC			BIT(26)
+/* TOTAL_PORT_SHUTDOWN
+ * Allows to physically disable the link on the NIC's port.
+ * If enabled, (after link down request from the OS)
+ * no link, traffic or led activity is possible on that port.
+ *
+ * If I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED is set, the
+ * I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED must be explicitly forced to true
+ * and cannot be disabled by system admin at that time.
+ * The functionalities are exclusive in terms of configuration, but they also
+ * have similar behavior (allowing to disable physical link of the port),
+ * with following differences:
+ * - LINK_DOWN_ON_CLOSE_ENABLED is configurable at host OS run-time and is
+ *   supported by whole family of 7xx Intel Ethernet Controllers
+ * - TOTAL_PORT_SHUTDOWN may be enabled only before OS loads (in BIOS)
+ *   only if motherboard's BIOS and NIC's FW has support of it
+ * - when LINK_DOWN_ON_CLOSE_ENABLED is used, the link is being brought down
+ *   by sending phy_type=0 to NIC's FW
+ * - when TOTAL_PORT_SHUTDOWN is used, phy_type is not altered, instead
+ *   the link is being brought down by clearing bit (I40E_AQ_PHY_ENABLE_LINK)
+ *   in abilities field of i40e_aq_set_phy_config structure
+ */
+#define I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED	BIT(27)
 
 	struct i40e_client_instance *cinst;
 	bool stat_offsets_loaded;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 317f3f1..1cb65da 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -428,6 +428,8 @@ struct i40e_priv_flags {
 static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	/* NOTE: MFP setting cannot be changed */
 	I40E_PRIV_FLAG("MFP", I40E_FLAG_MFP_ENABLED, 1),
+	I40E_PRIV_FLAG("total-port-shutdown",
+		       I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED, 1),
 	I40E_PRIV_FLAG("LinkPolling", I40E_FLAG_LINK_POLLING_ENABLED, 0),
 	I40E_PRIV_FLAG("flow-director-atr", I40E_FLAG_FD_ATR_ENABLED, 0),
 	I40E_PRIV_FLAG("veb-stats", I40E_FLAG_VEB_STATS_ENABLED, 0),
@@ -5006,6 +5008,13 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 			dev_warn(&pf->pdev->dev, "Cannot change FEC config\n");
 	}
 
+	if ((changed_flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED) &&
+	    (orig_flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED)) {
+		dev_err(&pf->pdev->dev,
+			"Setting link-down-on-close not supported on this port (because total-port-shutdown is enabled)\n");
+		return -EOPNOTSUPP;
+	}
+
 	if ((changed_flags & new_flags &
 	     I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED) &&
 	    (new_flags & I40E_FLAG_MFP_ENABLED))
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8c3e753..c872298 100644
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
@@ -6672,21 +6672,6 @@ static void i40e_vsi_reinit_locked(struct i40e_vsi *vsi)
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
@@ -6696,6 +6681,7 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_aq_set_phy_config config = {0};
+	bool non_zero_phy_type = is_up;
 	struct i40e_hw *hw = &pf->hw;
 	i40e_status err;
 	u64 mask;
@@ -6731,8 +6717,11 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 
 	/* If link needs to go up, but was not forced to go down,
 	 * and its speed values are OK, no need for a flap
+	 * if non_zero_phy_type was set, still need to force up
 	 */
-	if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
+	if (pf->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED)
+		non_zero_phy_type = true;
+	else if (is_up && abilities.phy_type != 0 && abilities.link_speed != 0)
 		return I40E_SUCCESS;
 
 	/* To force link we need to set bits for all supported PHY types,
@@ -6740,10 +6729,18 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
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
+	if (pf->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED) {
+		if (is_up)
+			config.abilities |= I40E_AQ_PHY_ENABLE_LINK;
+		else
+			config.abilities &= ~(I40E_AQ_PHY_ENABLE_LINK);
+	}
 	if (abilities.link_speed != 0)
 		config.link_speed = abilities.link_speed;
 	else
@@ -6774,11 +6771,31 @@ static i40e_status i40e_force_link_state(struct i40e_pf *pf, bool is_up)
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
+	     vsi->back->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED))
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
@@ -6797,7 +6814,8 @@ void i40e_down(struct i40e_vsi *vsi)
 	i40e_vsi_disable_irq(vsi);
 	i40e_vsi_stop_rings(vsi);
 	if (vsi->type == I40E_VSI_MAIN &&
-	    vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED)
+	   (vsi->back->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED ||
+	    vsi->back->flags & I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED))
 		i40e_force_link_state(vsi->back, false);
 	i40e_napi_disable_all(vsi);
 
@@ -11837,6 +11855,60 @@ i40e_status i40e_commit_partition_bw_setting(struct i40e_pf *pf)
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
+		 "total-port-shutdown feature is off due to read nvm error:%s\n",
+		 i40e_stat_str(&pf->hw, read_status));
+	return ret;
+}
+
 /**
  * i40e_sw_init - Initialize general software structures (struct i40e_pf)
  * @pf: board private structure to initialize
@@ -12012,6 +12084,16 @@ static int i40e_sw_init(struct i40e_pf *pf)
 
 	pf->tx_timeout_recovery_level = 1;
 
+	if (pf->hw.mac.type != I40E_MAC_X722 &&
+	    i40e_is_total_port_shutdown_enabled(pf)) {
+		/* Link down on close must be on when total port shutdown
+		 * is enabled for a given port
+		 */
+		pf->flags |= (I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENABLED
+			  | I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED);
+		dev_info(&pf->pdev->dev,
+			 "total-port-shutdown was enabled, link-down-on-close is forced on\n");
+	}
 	mutex_init(&pf->switch_mutex);
 
 sw_init_done:
-- 
2.26.0

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

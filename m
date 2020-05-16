Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4581D5D3E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 478B722812;
	Sat, 16 May 2020 00:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kXP-vCU6O2Pp; Sat, 16 May 2020 00:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5F82F227FC;
	Sat, 16 May 2020 00:39:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4AB51BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A0FF189A27
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 39X96bnfrYrw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E62A589A23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: WLiUh05Y/hCcWGvrtWj190bQm8USiy5zIr1z16rLNqJGYZWk+63FjcNfbmnA3uyv9r28JlEI84
 VQayld3hHUfg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:18 -0700
IronPort-SDR: UcyxQZ0eDhfA2Hl4uNQtKFEzgjdvM3LgsKgGtkrVN038OXCjRoHDNb/FEbUxG2NQQcfHI3CBA1
 5vsChTITgLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560865"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:37 -0700
Message-Id: <20200516003644.4658-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 08/15] ice: cleanup unsigned loops
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Fix loop variables that are comparing or assigning signed against
unsigned values, mostly by declaring loop counters as unsigned.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c      |  9 +++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c     | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_main.c        |  4 ++--
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c |  4 ++--
 4 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index c4c12414083a..93cf70d06fe5 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -671,7 +671,7 @@ static bool
 ice_dcbnl_find_app(struct ice_dcbx_cfg *cfg,
 		   struct ice_dcb_app_priority_table *app)
 {
-	int i;
+	unsigned int i;
 
 	for (i = 0; i < cfg->numapps; i++) {
 		if (app->selector == cfg->app[i].selector &&
@@ -746,7 +746,8 @@ static int ice_dcbnl_delapp(struct net_device *netdev, struct dcb_app *app)
 {
 	struct ice_pf *pf = ice_netdev_to_pf(netdev);
 	struct ice_dcbx_cfg *old_cfg, *new_cfg;
-	int i, j, ret = 0;
+	unsigned int i, j;
+	int ret = 0;
 
 	if (pf->dcbx_cap & DCB_CAP_DCBX_LLD_MANAGED)
 		return -EINVAL;
@@ -869,7 +870,7 @@ void ice_dcbnl_set_all(struct ice_vsi *vsi)
 	struct ice_port_info *pi;
 	struct dcb_app sapp;
 	struct ice_pf *pf;
-	int i;
+	unsigned int i;
 
 	if (!netdev)
 		return;
@@ -941,7 +942,7 @@ ice_dcbnl_flush_apps(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
 		     struct ice_dcbx_cfg *new_cfg)
 {
 	struct ice_vsi *main_vsi = ice_get_main_vsi(pf);
-	int i;
+	unsigned int i;
 
 	if (!main_vsi)
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f39d4eb7fd8b..fd1849155d85 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -205,7 +205,7 @@ ice_get_regs(struct net_device *netdev, struct ethtool_regs *regs, void *p)
 	struct ice_pf *pf = np->vsi->back;
 	struct ice_hw *hw = &pf->hw;
 	u32 *regs_buf = (u32 *)p;
-	int i;
+	unsigned int i;
 
 	regs->version = 1;
 
@@ -308,7 +308,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
  */
 static bool ice_active_vfs(struct ice_pf *pf)
 {
-	int i;
+	unsigned int i;
 
 	ice_for_each_vf(pf, i) {
 		struct ice_vf *vf = &pf->vf[i];
@@ -378,7 +378,7 @@ static int ice_reg_pattern_test(struct ice_hw *hw, u32 reg, u32 mask)
 		0x00000000, 0xFFFFFFFF
 	};
 	u32 val, orig_val;
-	int i;
+	unsigned int i;
 
 	orig_val = rd32(hw, reg);
 	for (i = 0; i < ARRAY_SIZE(patterns); ++i) {
@@ -431,7 +431,7 @@ static u64 ice_reg_test(struct net_device *netdev)
 			GLINT_ITR(2, 1) - GLINT_ITR(2, 0)},
 		{GLINT_CTL, 0xffff0001, 1, 0}
 	};
-	int i;
+	unsigned int i;
 
 	netdev_dbg(netdev, "Register test\n");
 	for (i = 0; i < ARRAY_SIZE(ice_reg_list); ++i) {
@@ -3759,10 +3759,10 @@ ice_get_module_eeprom(struct net_device *netdev,
 	struct ice_hw *hw = &pf->hw;
 	enum ice_status status;
 	bool is_sfp = false;
+	unsigned int i;
 	u16 offset = 0;
 	u8 value = 0;
 	u8 page = 0;
-	int i;
 
 	status = ice_aq_sff_eeprom(hw, 0, addr, offset, page, 0,
 				   &value, 1, 0, NULL);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4731c919a080..e12413ec2504 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -453,7 +453,7 @@ static void
 ice_prepare_for_reset(struct ice_pf *pf)
 {
 	struct ice_hw *hw = &pf->hw;
-	int i;
+	unsigned int i;
 
 	/* already prepared for reset */
 	if (test_bit(__ICE_PREPARED_FOR_RESET, pf->state))
@@ -1192,8 +1192,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
+	unsigned int i;
 	u32 reg;
-	int i;
 
 	if (!test_and_clear_bit(__ICE_MDD_EVENT_PENDING, pf->state)) {
 		/* Since the VF MDD event logging is rate limited, check if
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 6ea3d15e1a6d..aec619215b2e 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -80,7 +80,7 @@ ice_vc_vf_broadcast(struct ice_pf *pf, enum virtchnl_ops v_opcode,
 		    enum virtchnl_status_code v_retval, u8 *msg, u16 msglen)
 {
 	struct ice_hw *hw = &pf->hw;
-	int i;
+	unsigned int i;
 
 	ice_for_each_vf(pf, i) {
 		struct ice_vf *vf = &pf->vf[i];
@@ -325,7 +325,7 @@ void ice_free_vfs(struct ice_pf *pf)
 {
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
-	int tmp, i;
+	unsigned int tmp, i;
 
 	if (!pf->vf)
 		return;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

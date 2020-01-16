Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 52EF513E4CD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2020 18:10:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02E77203AF;
	Thu, 16 Jan 2020 17:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PgQLmwNmwx3X; Thu, 16 Jan 2020 17:10:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 201F021552;
	Thu, 16 Jan 2020 17:10:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C107F1BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 17:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBB3D20031
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 17:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJsqbJ01HlVg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2020 17:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B031203AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2020 17:10:49 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA08124685;
 Thu, 16 Jan 2020 17:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194649;
 bh=UkDYX+AVN0sx2l2HvyraE4qpL1+m/Wbdc9iDyQCvfYU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BZl+O7vXawB0IJh5q9vHNP0puzJsjOqAELxpBtcvl7BJNSn7Y5aOc1pnt/4H3NBKh
 ungFE0Gs03pi7c8j0c9ug7J4HSPqduNYpU8/A3EzdwUpBGodEU45FJ0kuxNCHfaEGA
 o2vzvA9mZtivQ42i5D/cTPgLaCut4y4bUYdV5HrI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Thu, 16 Jan 2020 12:02:22 -0500
Message-Id: <20200116170509.12787-241-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 4.19 504/671] i40e: reduce stack
 usage in i40e_set_fc
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
Cc: Sasha Levin <sashal@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 33b165684ab70867d4545643f550a5d48d3ddc57 ]

The functions i40e_aq_get_phy_abilities_resp() and i40e_set_fc() both
have giant structure on the stack, which makes each one use stack frames
larger than 500 bytes.

As clang decides one function into the other, we get a warning for
exceeding the frame size limit on 32-bit architectures:

drivers/net/ethernet/intel/i40e/i40e_common.c:1654:23: error: stack frame size of 1116 bytes in function 'i40e_set_fc' [-Werror,-Wframe-larger-than=]

When building with gcc, the inlining does not happen, but i40e_set_fc()
calls i40e_aq_get_phy_abilities_resp() anyway, so they add up on the
kernel stack just as much.

The parts that actually use large stacks don't overlap, so make sure
each one is a separate function, and mark them as noinline_for_stack to
prevent the compilers from combining them again.

Fixes: 0a862b43acc6 ("i40e/i40evf: Add module_types and update_link_info")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 91 +++++++++++--------
 1 file changed, 51 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 85f75b5978fc..eb0ae6ab01e2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1668,25 +1668,15 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
 	return status;
 }
 
-/**
- * i40e_set_fc
- * @hw: pointer to the hw struct
- * @aq_failures: buffer to return AdminQ failure information
- * @atomic_restart: whether to enable atomic link restart
- *
- * Set the requested flow control mode using set_phy_config.
- **/
-enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
-				  bool atomic_restart)
+static noinline_for_stack enum i40e_status_code
+i40e_set_fc_status(struct i40e_hw *hw,
+		   struct i40e_aq_get_phy_abilities_resp *abilities,
+		   bool atomic_restart)
 {
-	enum i40e_fc_mode fc_mode = hw->fc.requested_mode;
-	struct i40e_aq_get_phy_abilities_resp abilities;
 	struct i40e_aq_set_phy_config config;
-	enum i40e_status_code status;
+	enum i40e_fc_mode fc_mode = hw->fc.requested_mode;
 	u8 pause_mask = 0x0;
 
-	*aq_failures = 0x0;
-
 	switch (fc_mode) {
 	case I40E_FC_FULL:
 		pause_mask |= I40E_AQ_PHY_FLAG_PAUSE_TX;
@@ -1702,6 +1692,48 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 		break;
 	}
 
+	memset(&config, 0, sizeof(struct i40e_aq_set_phy_config));
+	/* clear the old pause settings */
+	config.abilities = abilities->abilities & ~(I40E_AQ_PHY_FLAG_PAUSE_TX) &
+			   ~(I40E_AQ_PHY_FLAG_PAUSE_RX);
+	/* set the new abilities */
+	config.abilities |= pause_mask;
+	/* If the abilities have changed, then set the new config */
+	if (config.abilities == abilities->abilities)
+		return 0;
+
+	/* Auto restart link so settings take effect */
+	if (atomic_restart)
+		config.abilities |= I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
+	/* Copy over all the old settings */
+	config.phy_type = abilities->phy_type;
+	config.phy_type_ext = abilities->phy_type_ext;
+	config.link_speed = abilities->link_speed;
+	config.eee_capability = abilities->eee_capability;
+	config.eeer = abilities->eeer_val;
+	config.low_power_ctrl = abilities->d3_lpan;
+	config.fec_config = abilities->fec_cfg_curr_mod_ext_info &
+			    I40E_AQ_PHY_FEC_CONFIG_MASK;
+
+	return i40e_aq_set_phy_config(hw, &config, NULL);
+}
+
+/**
+ * i40e_set_fc
+ * @hw: pointer to the hw struct
+ * @aq_failures: buffer to return AdminQ failure information
+ * @atomic_restart: whether to enable atomic link restart
+ *
+ * Set the requested flow control mode using set_phy_config.
+ **/
+enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
+				  bool atomic_restart)
+{
+	struct i40e_aq_get_phy_abilities_resp abilities;
+	enum i40e_status_code status;
+
+	*aq_failures = 0x0;
+
 	/* Get the current phy config */
 	status = i40e_aq_get_phy_capabilities(hw, false, false, &abilities,
 					      NULL);
@@ -1710,31 +1742,10 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
 		return status;
 	}
 
-	memset(&config, 0, sizeof(struct i40e_aq_set_phy_config));
-	/* clear the old pause settings */
-	config.abilities = abilities.abilities & ~(I40E_AQ_PHY_FLAG_PAUSE_TX) &
-			   ~(I40E_AQ_PHY_FLAG_PAUSE_RX);
-	/* set the new abilities */
-	config.abilities |= pause_mask;
-	/* If the abilities have changed, then set the new config */
-	if (config.abilities != abilities.abilities) {
-		/* Auto restart link so settings take effect */
-		if (atomic_restart)
-			config.abilities |= I40E_AQ_PHY_ENABLE_ATOMIC_LINK;
-		/* Copy over all the old settings */
-		config.phy_type = abilities.phy_type;
-		config.phy_type_ext = abilities.phy_type_ext;
-		config.link_speed = abilities.link_speed;
-		config.eee_capability = abilities.eee_capability;
-		config.eeer = abilities.eeer_val;
-		config.low_power_ctrl = abilities.d3_lpan;
-		config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
-				    I40E_AQ_PHY_FEC_CONFIG_MASK;
-		status = i40e_aq_set_phy_config(hw, &config, NULL);
+	status = i40e_set_fc_status(hw, &abilities, atomic_restart);
+	if (status)
+		*aq_failures |= I40E_SET_FC_AQ_FAIL_SET;
 
-		if (status)
-			*aq_failures |= I40E_SET_FC_AQ_FAIL_SET;
-	}
 	/* Update the link info */
 	status = i40e_update_link_info(hw);
 	if (status) {
@@ -2563,7 +2574,7 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
  * i40e_updatelink_status - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
-i40e_status i40e_update_link_info(struct i40e_hw *hw)
+noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	i40e_status status = 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

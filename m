Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB1B688F1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2019 14:35:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2CB38682A;
	Mon, 15 Jul 2019 12:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lArKpaVe5ZsT; Mon, 15 Jul 2019 12:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9192486833;
	Mon, 15 Jul 2019 12:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C51A11BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 12:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BFD928682A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 12:35:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgUPoeqdBMTB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2019 12:35:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 50732866A3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2019 12:35:43 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mw8gc-1iclyK33WG-00s2DM; Mon, 15 Jul 2019 14:35:24 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Mon, 15 Jul 2019 14:35:07 +0200
Message-Id: <20190715123518.3510791-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:51h6XA6Bl7Ot/Uvt6DUGZkDIrFXg806s4a58fRPDph6XbOA1o/L
 WbrLnPSeHtrhEkUKGOVrm5zUllrmDXlbf9sY1i7UrNwWXggoPcaEA5UD4UGKnUoTTFo4dpm
 0TRgYhqp7cK6Ie2JTDQgnYJaHFmkPGATyMsIU6zlwwf+XYBlKpTln4rDUhPPfmMznJ5h5ld
 c4g9OyyEza1nG+nfJfpDg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:w3445uxjZ9Q=:IVjWnMlU8v6q1ppXkoEDOr
 TcwYXO5MhadeyYS0gcqKDbQzsIE7gvrpPKyLCD/n7BdFt1BF/1gJJeX55JuLAZFzqLCx14P4S
 KyME68RN9pQFkXfD20FJ8UdFfcd4BHXwAXpoqEsBuZlVOzCFLmy+Vp842jwKVKFYvjBrOg/Xa
 sMlCPyZBlMEgVVO6egSgygkv1fwdKXOJARUAT8Ry1ejRBzPQbvpjuev73yHSzESmEjlYT9mwU
 qCmmawfcrTGFGKUuCrDxDe37+9KJmClLRO1TOeh8L5wsUkmid/ot2n3hArbTuyk914HUJvwbf
 +ealJyZMF57ToycZtuxBwt+KlDoEFM/i9M2yXInOiBbx5qHnUeuu9A7V9kb3SfiO2ogD83C0y
 vo+GXtQxGzVXRRRxF0+89+goT5Vl2oaMVygnBZAhr4JH5q2N40Fxn9XBNymFt3lwdP0vHVVXn
 DndWovInEB2xr7t9Pt1qu4pu/pNli0KVkzRQWIJUjuxYIuMNdTU9Su1kkmpast8RPUbQOh+75
 sXpvevqf7VFXOQX9z2cE1sJVoS8i3RMCAxTGV2Z27eoI9bVIarF8KciTm+ugaZWHCaot8JjAI
 Gdwo6uf0ZUOe6tLfIK1dQ74gjtNywzvLW2Py1tmx6TrgazEA3ZxxfPGClKihSv9qgbgODVY8J
 wfg+piibOONRRTt1OqC4aVuj/lGoUZYBWPucGB+kB06SgwL+HQDShpWn6p6BsiRxisRHw8He+
 UH2n4lg37ZTxT7uNUIe7hFtppe2/G7B+q8lCjw==
Subject: [Intel-wired-lan] [PATCH] i40e: reduce stack usage in i40e_set_fc
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
Cc: Catherine Sullivan <catherine.sullivan@intel.com>,
 Doug Dziggel <douglas.a.dziggel@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org,
 =?UTF-8?q?Patryk=20Ma=C5=82ek?= <patryk.malek@intel.com>,
 linux-kernel@vger.kernel.org, Piotr Azarewicz <piotr.azarewicz@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 clang-built-linux@googlegroups.com, intel-wired-lan@lists.osuosl.org,
 Piotr Marczak <piotr.marczak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

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
---
 drivers/net/ethernet/intel/i40e/i40e_common.c | 91 +++++++++++--------
 1 file changed, 51 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 906cf68d3453..7af1b7477140 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -1643,25 +1643,15 @@ enum i40e_status_code i40e_aq_set_phy_config(struct i40e_hw *hw,
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
@@ -1677,6 +1667,48 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
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
@@ -1685,31 +1717,10 @@ enum i40e_status_code i40e_set_fc(struct i40e_hw *hw, u8 *aq_failures,
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
@@ -2537,7 +2548,7 @@ i40e_status i40e_get_link_status(struct i40e_hw *hw, bool *link_up)
  * i40e_updatelink_status - update status of the HW network link
  * @hw: pointer to the hw struct
  **/
-i40e_status i40e_update_link_info(struct i40e_hw *hw)
+noinline_for_stack i40e_status i40e_update_link_info(struct i40e_hw *hw)
 {
 	struct i40e_aq_get_phy_abilities_resp abilities;
 	i40e_status status = 0;
-- 
2.20.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

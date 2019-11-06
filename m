Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 589A5F1DA2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2019 19:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0890989F73;
	Wed,  6 Nov 2019 18:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A77FkW6l7PnE; Wed,  6 Nov 2019 18:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DA6489F84;
	Wed,  6 Nov 2019 18:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0750E1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 043D18A870
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ncg94IRk1hkO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C1028A854
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 10:36:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="205918155"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 06 Nov 2019 10:36:27 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Nov 2019 02:05:32 -0800
Message-Id: <20191106100541.48639-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v3 06/15] ice: configure software LLDP
 in ice_init_pf_dcb
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

Move software LLDP configuration when FW DCBX is disabled to
ice_init_pf_dcb, since that is where the FW DCBX state is determined.
Remove this software LLDP configuration from ice_vsi_setup and
ice_set_priv_flags. Software configuration includes redirecting Rx LLDP
packets up the stack, when FW DCBX is not running.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 15 +++++++++++++++
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  5 -----
 drivers/net/ethernet/intel/ice/ice_lib.c     | 14 ++++----------
 3 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 9448a289363d..1150dbd98d0b 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -594,6 +594,8 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		 "DCB is enabled in the hardware, max number of TCs supported on this port are %d\n",
 		 pf->hw.func_caps.common_cap.maxtc);
 	if (err) {
+		struct ice_vsi *pf_vsi;
+
 		/* FW LLDP is disabled, activate SW DCBX/LLDP mode */
 		dev_info(&pf->pdev->dev,
 			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
@@ -606,6 +608,19 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 			goto dcb_init_err;
 		}
 
+		/* If the FW DCBX engine is not running then Rx LLDP packets
+		 * need to be redirected up the stack.
+		 */
+		pf_vsi = ice_get_main_vsi(pf);
+		if (!pf_vsi) {
+			dev_err(&pf->pdev->dev,
+				"Failed to set local DCB config\n");
+			err = -EIO;
+			goto dcb_init_err;
+		}
+
+		ice_cfg_sw_lldp(pf_vsi, false, true);
+
 		pf->dcbx_cap = DCB_CAP_DCBX_HOST | DCB_CAP_DCBX_VER_IEEE;
 		return 0;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 3b9d33ad23d8..9c2045056d59 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1295,11 +1295,6 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 			status = ice_init_pf_dcb(pf, true);
 			if (status)
 				dev_warn(&pf->pdev->dev, "Fail to init DCB\n");
-
-			/* Forward LLDP packets to default VSI so that they
-			 * are passed up the stack
-			 */
-			ice_cfg_sw_lldp(vsi, false, true);
 		} else {
 			enum ice_status status;
 			bool dcbx_agent_status;
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d4e3df6544f5..c9e0b533da47 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1881,23 +1881,17 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 	 * out PAUSE or PFC frames. If enabled, FW can still send FC frames.
 	 * The rule is added once for PF VSI in order to create appropriate
 	 * recipe, since VSI/VSI list is ignored with drop action...
-	 * Also add rules to handle LLDP Tx and Rx packets.  Tx LLDP packets
-	 * need to be dropped so that VFs cannot send LLDP packets to reconfig
-	 * DCB settings in the HW.  Also, if the FW DCBX engine is not running
-	 * then Rx LLDP packets need to be redirected up the stack.
+	 * Also add rules to handle LLDP Tx packets.  Tx LLDP packets need to
+	 * be dropped so that VFs cannot send LLDP packets to reconfig DCB
+	 * settings in the HW.
 	 */
-	if (!ice_is_safe_mode(pf)) {
+	if (!ice_is_safe_mode(pf))
 		if (vsi->type == ICE_VSI_PF) {
 			ice_vsi_add_rem_eth_mac(vsi, true);
 
 			/* Tx LLDP packets */
 			ice_cfg_sw_lldp(vsi, true, true);
-
-			/* Rx LLDP packets */
-			if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
-				ice_cfg_sw_lldp(vsi, false, true);
 		}
-	}
 
 	return vsi;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

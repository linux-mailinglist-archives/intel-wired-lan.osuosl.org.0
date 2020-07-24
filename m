Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B1922C523
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Jul 2020 14:27:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C4F02010B;
	Fri, 24 Jul 2020 12:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IiIdXd1C1jwT; Fri, 24 Jul 2020 12:27:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A737D2045B;
	Fri, 24 Jul 2020 12:27:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 458C31BF29D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 12:27:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D07820365
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 12:27:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 80IjyOYg7zIW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Jul 2020 12:27:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 3069B2010B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Jul 2020 12:27:42 +0000 (UTC)
IronPort-SDR: BFiEq3MDzlppfBXyRxtD+PonWexlwp/4O64nnoTECSBdiAfBrsqANY0Uc1p3fMJOjov9NfxzPm
 D0t+IadALv1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="138197301"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="138197301"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 05:27:40 -0700
IronPort-SDR: poa9QJ1Ie5eZyyN8ROb8Z4q8PWLiKVo5QYRxUCEBkATI+0Yf669CFCYbSNRS7JCTDC/TOKmr/r
 lm3p3yPH3tZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="302657852"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga002.jf.intel.com with ESMTP; 24 Jul 2020 05:27:38 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 24 Jul 2020 12:23:56 +0000
Message-Id: <20200724122356.24058-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] i40e: Allow changing FEC settings on X722
 if supported by FW
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>

Starting with API version 1.10 firmware for X722 devices has ability
to change FEC settings in PHY. Code added in this patch allows
changing FEC settings if the capability flag indicates the device
supports this feature.

Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  6 +++++
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  2 ++
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 22 ++++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 19 ++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_type.h   |  1 +
 5 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 6a08984..a58d8bf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -541,6 +541,12 @@ static void i40e_set_hw_flags(struct i40e_hw *hw)
 		    (aq->api_maj_ver == 1 &&
 		     aq->api_min_ver >= I40E_MINOR_VER_GET_LINK_INFO_X722))
 			hw->flags |= I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE;
+
+		if (aq->api_maj_ver > 1 ||
+		    (aq->api_maj_ver == 1 &&
+		     aq->api_min_ver >= I40E_MINOR_VER_FW_REQUEST_FEC_X722))
+			hw->flags |= I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE;
+
 		/* fall through */
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
index aa5f1c0..4666130 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
@@ -24,6 +24,8 @@
 #define I40E_MINOR_VER_GET_LINK_INFO_X722 0x0009
 /* API version 1.6 for X722 devices adds ability to stop FW LLDP agent */
 #define I40E_MINOR_VER_FW_LLDP_STOPPABLE_X722 0x0006
+/* API version 1.10 for X722 devices adds ability to request FEC encoding */
+#define I40E_MINOR_VER_FW_REQUEST_FEC_X722 0x000A
 
 struct i40e_aq_desc {
 	__le16 flags;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 67806b7..8a0de8a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -889,6 +889,7 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 		if (hw_link_info->requested_speeds & I40E_LINK_SPEED_10GB)
 			ethtool_link_ksettings_add_link_mode(ks, advertising,
 							     10000baseT_Full);
+		i40e_get_settings_link_up_fec(hw_link_info->req_fec_info, ks);
 		break;
 	case I40E_PHY_TYPE_SGMII:
 		ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
@@ -1482,11 +1483,18 @@ static int i40e_set_fec_param(struct net_device *netdev,
 	int err = 0;
 
 	if (hw->device_id != I40E_DEV_ID_25G_SFP28 &&
-	    hw->device_id != I40E_DEV_ID_25G_B) {
+	    hw->device_id != I40E_DEV_ID_25G_B &&
+	    hw->device_id != I40E_DEV_ID_KX_X722) {
 		err = -EPERM;
 		goto done;
 	}
 
+	if (hw->mac.type == I40E_MAC_X722 &&
+	    !(hw->flags & I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE)) {
+		netdev_err(netdev, "Setting FEC encoding not supported by firmware. Please update the NVM image.\n");
+		return -EINVAL;
+	}
+
 	switch (fecparam->fec) {
 	case ETHTOOL_FEC_AUTO:
 		fec_cfg = I40E_AQ_SET_FEC_AUTO;
@@ -4951,8 +4959,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 		}
 	}
 
-	if (((changed_flags & I40E_FLAG_RS_FEC) ||
-	     (changed_flags & I40E_FLAG_BASE_R_FEC)) &&
+	if (changed_flags & I40E_FLAG_RS_FEC &&
 	    pf->hw.device_id != I40E_DEV_ID_25G_SFP28 &&
 	    pf->hw.device_id != I40E_DEV_ID_25G_B) {
 		dev_warn(&pf->pdev->dev,
@@ -4960,6 +4967,15 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 		return -EOPNOTSUPP;
 	}
 
+	if (changed_flags & I40E_FLAG_BASE_R_FEC &&
+	    pf->hw.device_id != I40E_DEV_ID_25G_SFP28 &&
+	    pf->hw.device_id != I40E_DEV_ID_25G_B &&
+	    pf->hw.device_id != I40E_DEV_ID_KX_X722) {
+		dev_warn(&pf->pdev->dev,
+			 "Device does not support changing FEC configuration\n");
+		return -EOPNOTSUPP;
+	}
+
 	/* Process any additional changes needed as a result of flag changes.
 	 * The changed_flags value reflects the list of bits that were
 	 * changed in the code above.
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 56ecd6c..83e31cc 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6611,6 +6611,25 @@ void i40e_print_link_message(struct i40e_vsi *vsi, bool isup)
 			else
 				req_fec = "CL74 FC-FEC/BASE-R";
 		}
+		netdev_info(vsi->netdev,
+			    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
+			    speed, req_fec, fec, an, fc);
+	} else if (pf->hw.device_id == I40E_DEV_ID_KX_X722) {
+		req_fec = "None";
+		fec = "None";
+		an = "False";
+
+		if (pf->hw.phy.link_info.an_info & I40E_AQ_AN_COMPLETED)
+			an = "True";
+
+		if (pf->hw.phy.link_info.fec_info &
+		    I40E_AQ_CONFIG_FEC_KR_ENA)
+			fec = "CL74 FC-FEC/BASE-R";
+
+		if (pf->hw.phy.link_info.req_fec_info &
+		    I40E_AQ_REQUEST_FEC_KR)
+			req_fec = "CL74 FC-FEC/BASE-R";
+
 		netdev_info(vsi->netdev,
 			    "NIC Link is Up, %sbps Full Duplex, Requested FEC: %s, Negotiated FEC: %s, Autoneg: %s, Flow Control: %s\n",
 			    speed, req_fec, fec, an, fc);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_type.h b/drivers/net/ethernet/intel/i40e/i40e_type.h
index 63e098f..1b06100 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_type.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_type.h
@@ -626,6 +626,7 @@ struct i40e_hw {
 #define I40E_HW_FLAG_FW_LLDP_PERSISTENT     BIT_ULL(5)
 #define I40E_HW_FLAG_AQ_PHY_ACCESS_EXTENDED BIT_ULL(6)
 #define I40E_HW_FLAG_DROP_MODE              BIT_ULL(7)
+#define I40E_HW_FLAG_X722_FEC_REQUEST_CAPABLE BIT_ULL(8)
 	u64 flags;
 
 	/* Used in set switch config AQ command */
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

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3705D798
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 22:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C534E85F3E;
	Tue,  2 Jul 2019 20:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sE_Sq_x0KbKh; Tue,  2 Jul 2019 20:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BB0E885F4B;
	Tue,  2 Jul 2019 20:43:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 30F701BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2B70287CDB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gY8PODDkQGIR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 20:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 791B587B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805464"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 08:22:56 -0400
Message-Id: <20190702122259.79070-6-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702122259.79070-1-alice.michael@intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S7 6/9] i40e: Update visual effect
 for advertised FEC mode.
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
Cc: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Czeslaw Zagorski <czeslawx.zagorski@intel.com>

Updates visual effect for advertised mode after setting desired mode.
The mode appears in advertised FEC mode correctly, when ethtool
interface command is called. Without this commit advertised FEC
is displayed regardless of the settings as "None BaseR RS".

Signed-off-by: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 63 ++++++++++---------
 1 file changed, 35 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 65e016f54f58..663de4fd7bbe 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -710,6 +710,35 @@ static void i40e_phy_type_to_ethtool(struct i40e_pf *pf,
 	}
 }
 
+/**
+ * i40e_get_settings_link_up_fec - Get the FEC mode encoding from mask
+ * @req_fec_info: mask request fec info
+ * @ks: ethtool ksettings to fill in
+ **/
+static void i40e_get_settings_link_up_fec(u8 req_fec_info,
+					  struct ethtool_link_ksettings *ks)
+{
+	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
+	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
+	ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
+
+	if (I40E_AQ_SET_FEC_REQUEST_RS & req_fec_info) {
+		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
+	} else if (I40E_AQ_SET_FEC_REQUEST_KR & req_fec_info) {
+		ethtool_link_ksettings_add_link_mode(ks, advertising,
+						     FEC_BASER);
+	} else {
+		ethtool_link_ksettings_add_link_mode(ks, advertising,
+						     FEC_NONE);
+		if (I40E_AQ_SET_FEC_AUTO & req_fec_info) {
+			ethtool_link_ksettings_add_link_mode(ks, advertising,
+							     FEC_RS);
+			ethtool_link_ksettings_add_link_mode(ks, advertising,
+							     FEC_BASER);
+		}
+	}
+}
+
 /**
  * i40e_get_settings_link_up - Get the Link settings for when link is up
  * @hw: hw structure
@@ -769,13 +798,7 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 						     25000baseSR_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     25000baseSR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     FEC_BASER);
+		i40e_get_settings_link_up_fec(hw_link_info->req_fec_info, ks);
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     10000baseSR_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
@@ -892,9 +915,6 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 						     40000baseKR4_Full);
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     25000baseKR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     20000baseKR2_Full);
 		ethtool_link_ksettings_add_link_mode(ks, supported,
@@ -908,10 +928,7 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 						     40000baseKR4_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     25000baseKR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     FEC_BASER);
+		i40e_get_settings_link_up_fec(hw_link_info->req_fec_info, ks);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     20000baseKR2_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
@@ -929,13 +946,8 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 						     25000baseCR_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     25000baseCR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     FEC_BASER);
+		i40e_get_settings_link_up_fec(hw_link_info->req_fec_info, ks);
+
 		break;
 	case I40E_PHY_TYPE_25GBASE_AOC:
 	case I40E_PHY_TYPE_25GBASE_ACC:
@@ -945,13 +957,8 @@ static void i40e_get_settings_link_up(struct i40e_hw *hw,
 						     25000baseCR_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
 						     25000baseCR_Full);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_BASER);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_NONE);
-		ethtool_link_ksettings_add_link_mode(ks, advertising, FEC_RS);
-		ethtool_link_ksettings_add_link_mode(ks, advertising,
-						     FEC_BASER);
+		i40e_get_settings_link_up_fec(hw_link_info->req_fec_info, ks);
+
 		ethtool_link_ksettings_add_link_mode(ks, supported,
 						     10000baseCR_Full);
 		ethtool_link_ksettings_add_link_mode(ks, advertising,
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

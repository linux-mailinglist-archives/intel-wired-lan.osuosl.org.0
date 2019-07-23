Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C471E20
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 19:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93CEB85BB5;
	Tue, 23 Jul 2019 17:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSdIgJhTob37; Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C436185B73;
	Tue, 23 Jul 2019 17:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4939B1BF95A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 408F381FAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcwmBJXUtmXL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 17:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D96E084D49
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 17:56:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 10:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="180816348"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga002.jf.intel.com with ESMTP; 23 Jul 2019 10:56:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 02:27:55 -0700
Message-Id: <20190723092759.3614-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
References: <20190723092759.3614-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S24 08/12] ice: Rename ethtool private
 flag for lldp
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

From: Dave Ertman <david.m.ertman@intel.com>

The current flag name of "enable-fw-lldp" is a bit cumbersome.

Change priv-flag name to "fw-lldp-agent" with a value of on or
off.  This is more straight-forward in meaning.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         | 2 +-
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 6 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c     | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 8398dd45a8a2..0e233b7c40bc 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -331,7 +331,7 @@ enum ice_pf_flags {
 	ICE_FLAG_DCB_ENA,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
 	ICE_FLAG_NO_MEDIA,
-	ICE_FLAG_ENABLE_FW_LLDP,
+	ICE_FLAG_FW_LLDP_AGENT,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
 	ICE_PF_FLAGS_NBITS		/* must be last */
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 2a868eea2a37..21405958aa63 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -462,7 +462,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 		dev_info(&pf->pdev->dev,
 			 "FW LLDP is disabled, DCBx/LLDP in SW mode.\n");
 		port_info->is_sw_lldp = true;
-		clear_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags);
+		clear_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
 		err = ice_dcb_sw_dflt_cfg(pf, locked);
 		if (err) {
 			dev_err(&pf->pdev->dev,
@@ -478,7 +478,7 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 	}
 
 	port_info->is_sw_lldp = false;
-	set_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags);
+	set_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
 
 	/* DCBX in FW and LLDP enabled in FW */
 	pf->dcbx_cap = DCB_CAP_DCBX_LLD_MANAGED | DCB_CAP_DCBX_VER_IEEE;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 35aa4a3f59df..b60bcbcf9bf2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -155,7 +155,7 @@ struct ice_priv_flag {
 
 static const struct ice_priv_flag ice_gstrings_priv_flags[] = {
 	ICE_PRIV_FLAG("link-down-on-close", ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA),
-	ICE_PRIV_FLAG("enable-fw-lldp", ICE_FLAG_ENABLE_FW_LLDP),
+	ICE_PRIV_FLAG("fw-lldp-agent", ICE_FLAG_FW_LLDP_AGENT),
 };
 
 #define ICE_PRIV_FLAG_ARRAY_SIZE	ARRAY_SIZE(ice_gstrings_priv_flags)
@@ -1201,8 +1201,8 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	bitmap_xor(change_flags, pf->flags, orig_flags, ICE_PF_FLAGS_NBITS);
 
-	if (test_bit(ICE_FLAG_ENABLE_FW_LLDP, change_flags)) {
-		if (!test_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags)) {
+	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, change_flags)) {
+		if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
 			enum ice_status status;
 
 			/* Disable FW LLDP engine */
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 42645c074691..aff65333c302 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2561,7 +2561,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 		ice_cfg_sw_lldp(vsi, true, true);
 
 		/* Rx LLDP packets */
-		if (!test_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags))
+		if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
 			ice_cfg_sw_lldp(vsi, false, true);
 	}
 
@@ -2908,7 +2908,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 		/* The Rx rule will only exist to remove if the LLDP FW
 		 * engine is currently stopped
 		 */
-		if (!test_bit(ICE_FLAG_ENABLE_FW_LLDP, pf->flags))
+		if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
 			ice_cfg_sw_lldp(vsi, false, false);
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

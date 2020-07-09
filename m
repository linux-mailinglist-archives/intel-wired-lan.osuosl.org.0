Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D420A21A4A0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jul 2020 18:20:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6031289A9A;
	Thu,  9 Jul 2020 16:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mdq7XkSNtB-2; Thu,  9 Jul 2020 16:20:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D37D89A8C;
	Thu,  9 Jul 2020 16:20:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 546DB1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4DE62228F1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g0GQ+ini8Cm0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2020 16:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 1DB7B2CAA9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2020 16:20:15 +0000 (UTC)
IronPort-SDR: 38tr3ZFVPpyHbuEc3EvVv0sQe4EaubRR9yA1kc/y1bKZxwa7j2j3X4BH5P6EKySGLUbx8QVBlx
 YqnmRYfwe5sQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="136252758"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136252758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 09:20:11 -0700
IronPort-SDR: ZOmoq3mKAnLdSt8SDYBoFof3MuuC6Q2YBzkDg+3+oY2g9C1MEPjwVMHUJPkUVTZFczk/LAg/gt
 pEoVWghqFIBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="280352068"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 09:20:07 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jul 2020 09:16:08 -0700
Message-Id: <20200709161614.61098-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S49 09/15] ice: support Total Port
 Shutdown on devices that support it
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

From: Bruce Allan <bruce.w.allan@intel.com>

When the Port Disable bit is set in the Link Default Override Mask TLV PFA
module in the NVM, Total Port Shutdown mode is supported and enabled.  In
this mode, the driver should act as if the link-down-on-close ethool
private flag is always enabled and dis-allow any change to that flag.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h         |  1 +
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c    | 14 +++++++++++++-
 3 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 7d73d7be6dcb..9b4c70310c3a 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -362,6 +362,7 @@ enum ice_pf_flags {
 	ICE_FLAG_FD_ENA,
 	ICE_FLAG_ADV_FEATURES,
 	ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA,
+	ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
 	ICE_FLAG_NO_MEDIA,
 	ICE_FLAG_FW_LLDP_AGENT,
 	ICE_FLAG_ETHTOOL_CTXT,		/* set when ethtool holds RTNL lock */
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index f382faaf64e3..60abd261b8bf 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1196,6 +1196,17 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	bitmap_xor(change_flags, pf->flags, orig_flags, ICE_PF_FLAGS_NBITS);
 
+	/* Do not allow change to link-down-on-close when Total Port Shutdown
+	 * is enabled.
+	 */
+	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, change_flags) &&
+	    test_bit(ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA, pf->flags)) {
+		dev_err(dev, "Setting link-down-on-close not supported on this port\n");
+		set_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags);
+		ret = -EINVAL;
+		goto ethtool_exit;
+	}
+
 	if (test_bit(ICE_FLAG_FW_LLDP_AGENT, change_flags)) {
 		if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags)) {
 			enum ice_status status;
@@ -1283,6 +1294,7 @@ static int ice_set_priv_flags(struct net_device *netdev, u32 flags)
 		change_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags);
 		ret = -EAGAIN;
 	}
+ethtool_exit:
 	clear_bit(ICE_FLAG_ETHTOOL_CTXT, pf->flags);
 	return ret;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index abc7a38c1dd5..a44273769264 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1446,6 +1446,8 @@ static int ice_init_nvm_phy_type(struct ice_port_info *pi)
 /**
  * ice_init_link_dflt_override - Initialize link default override
  * @pi: port info structure
+ *
+ * Initialize link default override and PHY total port shutdown during probe
  */
 static void ice_init_link_dflt_override(struct ice_port_info *pi)
 {
@@ -1453,7 +1455,17 @@ static void ice_init_link_dflt_override(struct ice_port_info *pi)
 	struct ice_pf *pf = pi->hw->back;
 
 	ldo = &pf->link_dflt_override;
-	ice_get_link_default_override(ldo, pi);
+	if (ice_get_link_default_override(ldo, pi))
+		return;
+
+	if (!(ldo->options & ICE_LINK_OVERRIDE_PORT_DIS))
+		return;
+
+	/* Enable Total Port Shutdown (override/replace link-down-on-close
+	 * ethtool private flag) for ports with Port Disable bit set.
+	 */
+	set_bit(ICE_FLAG_TOTAL_PORT_SHUTDOWN_ENA, pf->flags);
+	set_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

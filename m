Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C9415CD4E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:31:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 442A3873C9;
	Thu, 13 Feb 2020 21:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q+8NN+0E3VHi; Thu, 13 Feb 2020 21:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D46886F9F;
	Thu, 13 Feb 2020 21:31:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7EE131BF9B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C116862E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jksh1lag_nKs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D5B9B862B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382409"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:20 -0800
Message-Id: <20200213213129.34023-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 06/15] ice: Report correct DCB mode
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

From: Avinash Dayanand <avinash.dayanand@intel.com>

Add code to detect if DCB is in IEEE or CEE mode. Without this the code
will always report as IEEE mode which is incorrect and confuses the
user.

Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
Signed-off-by: Scott Register <scottx.register@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 27 +++++++++++++++++---
 1 file changed, 24 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 175b08219f7a..febd74324282 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -62,6 +62,26 @@ u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg *dcbcfg)
 	return ena_tc;
 }
 
+/**
+ * ice_dcb_get_mode - gets the DCB mode
+ * @port_info: pointer to port info structure
+ * @host: if set it's HOST if not it's MANAGED
+ */
+static u8 ice_dcb_get_mode(struct ice_port_info *port_info, bool host)
+{
+	u8 mode;
+
+	if (host)
+		mode = DCB_CAP_DCBX_HOST;
+	else
+		mode = DCB_CAP_DCBX_LLD_MANAGED;
+
+	if (port_info->local_dcbx_cfg.dcbx_mode & ICE_DCBX_MODE_CEE)
+		return (mode | DCB_CAP_DCBX_VER_CEE);
+	else
+		return (mode | DCB_CAP_DCBX_VER_IEEE);
+}
+
 /**
  * ice_dcb_get_num_tc - Get the number of TCs from DCBX config
  * @dcbcfg: config to retrieve number of TCs from
@@ -679,14 +699,14 @@ int ice_init_pf_dcb(struct ice_pf *pf, bool locked)
 
 		ice_cfg_sw_lldp(pf_vsi, false, true);
 
-		pf->dcbx_cap = DCB_CAP_DCBX_HOST | DCB_CAP_DCBX_VER_IEEE;
+		pf->dcbx_cap = ice_dcb_get_mode(port_info, true);
 		return 0;
 	}
 
 	set_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags);
 
-	/* DCBX in FW and LLDP enabled in FW */
-	pf->dcbx_cap = DCB_CAP_DCBX_LLD_MANAGED | DCB_CAP_DCBX_VER_IEEE;
+	/* DCBX/LLDP enabled in FW, set DCBNL mode advertisement */
+	pf->dcbx_cap = ice_dcb_get_mode(port_info, false);
 
 	err = ice_dcb_init_cfg(pf, locked);
 	if (err)
@@ -877,6 +897,7 @@ ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf,
 	/* No change detected in DCBX configs */
 	if (!memcmp(&tmp_dcbx_cfg, &pi->local_dcbx_cfg, sizeof(tmp_dcbx_cfg))) {
 		dev_dbg(dev, "No change detected in DCBX configuration.\n");
+		pf->dcbx_cap = ice_dcb_get_mode(pi, false);
 		goto out;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

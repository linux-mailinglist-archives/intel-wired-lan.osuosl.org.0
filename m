Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C30091D5D7C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12D2687F7D;
	Sat, 16 May 2020 00:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lX0ByfXAQLHB; Sat, 16 May 2020 00:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7902287F8B;
	Sat, 16 May 2020 00:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07C171BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04C4D88717
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WiwwC-W1wFRR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5E9089489
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:41 +0000 (UTC)
IronPort-SDR: UETidqP6Td2N34LO4TNA+UXzZJkCsBRJO6QM8pnSJIUftYsJid7+B8tc3cciOaEkMNWyZ8kgyn
 hUoogBiTiBKA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:41 -0700
IronPort-SDR: G1QJAv7Mv54nfsWmRSIz3WPgklkc8yKVbeAtXmHedIQnzNgk5r9ZKmlAsbkUrO4XfANS1V2Gnr
 Xx85N8KNk1Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922712"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:41 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:06 -0700
Message-Id: <20200516005506.5113-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 9/9] ice: Ignore EMODE when setting
 PHY config
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

From: Chinh T Cao <chinh.t.cao@intel.com>

When setting the PHY cfg (CQ cmd 0x0601), if the firmware responds
with an EMODE error, software will ignore the error as it simply
means that manageability (ex: BMC) is in control of the link and that
the new setting may not be applied.

Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 1 +
 drivers/net/ethernet/intel/ice/ice_common.c     | 7 ++++++-
 drivers/net/ethernet/intel/ice/ice_main.c       | 2 ++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index bba47f11e546..3c28379dfb3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1858,6 +1858,7 @@ enum ice_aq_err {
 	ICE_AQ_RC_EINVAL	= 14, /* Invalid argument */
 	ICE_AQ_RC_ENOSPC	= 16, /* No space left or allocation failure */
 	ICE_AQ_RC_ENOSYS	= 17, /* Function not implemented */
+	ICE_AQ_RC_EMODE		= 21, /* Op not allowed in current dev mode */
 	ICE_AQ_RC_ENOSEC	= 24, /* Missing security manifest */
 	ICE_AQ_RC_EBADSIG	= 25, /* Bad RSA signature */
 	ICE_AQ_RC_ESVN		= 26, /* SVN number prohibits this package */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ce578fe4ab3e..da724b0e524d 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2248,6 +2248,7 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, u8 lport,
 		   struct ice_aqc_set_phy_cfg_data *cfg, struct ice_sq_cd *cd)
 {
 	struct ice_aq_desc desc;
+	enum ice_status status;
 
 	if (!cfg)
 		return ICE_ERR_PARAM;
@@ -2276,7 +2277,11 @@ ice_aq_set_phy_cfg(struct ice_hw *hw, u8 lport,
 	ice_debug(hw, ICE_DBG_LINK, "eeer_value = 0x%x\n", cfg->eeer_value);
 	ice_debug(hw, ICE_DBG_LINK, "link_fec_opt = 0x%x\n", cfg->link_fec_opt);
 
-	return ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
+	status = ice_aq_send_cmd(hw, &desc, cfg, sizeof(*cfg), cd);
+	if (hw->adminq.sq_last_status == ICE_AQ_RC_EMODE)
+		status = 0;
+
+	return status;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7f444a24be07..a2d3cba19565 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5245,6 +5245,8 @@ const char *ice_aq_str(enum ice_aq_err aq_err)
 		return "ICE_AQ_RC_ENOSPC";
 	case ICE_AQ_RC_ENOSYS:
 		return "ICE_AQ_RC_ENOSYS";
+	case ICE_AQ_RC_EMODE:
+		return "ICE_AQ_RC_EMODE";
 	case ICE_AQ_RC_ENOSEC:
 		return "ICE_AQ_RC_ENOSEC";
 	case ICE_AQ_RC_EBADSIG:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

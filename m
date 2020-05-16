Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C5B1D5D3D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ED4088018;
	Sat, 16 May 2020 00:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNTetCsOGkch; Sat, 16 May 2020 00:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2841E87F93;
	Sat, 16 May 2020 00:39:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 17DF41BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1450089A34
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05U4swKCeqIU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D85089A2C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:20 +0000 (UTC)
IronPort-SDR: AAJUn5d4DD0tGL4mkJBq+G/3GgBfnR20Uh2x+Jf1MxUfWD9L+rQ4x9kuZxums1sMFazHz66YRF
 HiGe+wlZPfDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:19 -0700
IronPort-SDR: JZaqJYr/HB5y/3sgFZ4B708zHsH1QNV81xea/2I2YFjSgzWgRjv+ccol4rJvQL0Y3fN5u6pDR6
 +ebWI9Lr2e8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560869"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:41 -0700
Message-Id: <20200516003644.4658-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 12/15] ice: fix MAC write command
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

The manage MAC write command was implemented in an overly complex way
that actually didn't work, as it wasn't symmetric to the manage MAC
read command, and was feeding bytes out of order to the firmware. Fix
the implementation by just using a simple array to represent the MAC
address when it is being written via firmware command.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 10 ++++------
 drivers/net/ethernet/intel/ice/ice_common.c     |  5 +----
 2 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index d0ee14254df1..1d939ff4bf99 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -157,13 +157,11 @@ struct ice_aqc_manage_mac_write {
 #define ICE_AQC_MAN_MAC_WR_MC_MAG_EN		BIT(0)
 #define ICE_AQC_MAN_MAC_WR_WOL_LAA_PFR_KEEP	BIT(1)
 #define ICE_AQC_MAN_MAC_WR_S		6
-#define ICE_AQC_MAN_MAC_WR_M		(3 << ICE_AQC_MAN_MAC_WR_S)
+#define ICE_AQC_MAN_MAC_WR_M		ICE_M(3, ICE_AQC_MAN_MAC_WR_S)
 #define ICE_AQC_MAN_MAC_UPDATE_LAA	0
-#define ICE_AQC_MAN_MAC_UPDATE_LAA_WOL	(BIT(0) << ICE_AQC_MAN_MAC_WR_S)
-	/* High 16 bits of MAC address in big endian order */
-	__be16 sah;
-	/* Low 32 bits of MAC address in big endian order */
-	__be32 sal;
+#define ICE_AQC_MAN_MAC_UPDATE_LAA_WOL	BIT(ICE_AQC_MAN_MAC_WR_S)
+	/* byte stream in network order */
+	u8 mac_addr[ETH_ALEN];
 	__le32 addr_high;
 	__le32 addr_low;
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 06beae93176e..bba787a6faff 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -2010,10 +2010,7 @@ ice_aq_manage_mac_write(struct ice_hw *hw, const u8 *mac_addr, u8 flags,
 	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_manage_mac_write);
 
 	cmd->flags = flags;
-
-	/* Prep values for flags, sah, sal */
-	cmd->sah = htons(*((const u16 *)mac_addr));
-	cmd->sal = htonl(*((const u32 *)(mac_addr + 2)));
+	ether_addr_copy(cmd->mac_addr, mac_addr);
 
 	return ice_aq_send_cmd(hw, &desc, NULL, 0, cd);
 }
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

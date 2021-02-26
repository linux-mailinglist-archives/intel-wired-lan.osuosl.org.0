Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AA7326973
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Feb 2021 22:29:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6162A6EA49;
	Fri, 26 Feb 2021 21:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b92Y7M-sErOM; Fri, 26 Feb 2021 21:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 092426F73E;
	Fri, 26 Feb 2021 21:29:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44A7F1BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41567431C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z6ZJm1V_3TlC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Feb 2021 21:28:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21B8A433EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Feb 2021 21:28:57 +0000 (UTC)
IronPort-SDR: OS0mU/rDxlvXZa8ekCY/jtsviwqA7V3PqRv4qiwdUISJYHWHzcD8pM7Me66qFzJoxnPzgwFA/+
 JvKior/DHhDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="186117844"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="186117844"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 13:28:56 -0800
IronPort-SDR: EDypQ2RPLUiYYUUcKho/giJLxvG1dggveqULHJSeUpkh8jiMLz5+y3YhOovd3BA+70aSps1iSj
 uU6t1+xu5lYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="432913430"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Feb 2021 13:28:55 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 26 Feb 2021 13:19:22 -0800
Message-Id: <20210226211932.46683-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
References: <20210226211932.46683-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 03/13] ice: Continue probe on link/PHY
 errors
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

An incorrect NVM update procedure can result in the driver failing probe.
In this case, the recommended resolution method is to update the NVM
using the right procedure. However, if the driver fails probe, the user
will not be able to update the NVM. So do not fail probe on link/PHY
errors.

Fixes: 1a3571b5938c ("ice: restore PHY settings on media insertion")
Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2c23c8f468a5..53e053c997eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4192,28 +4192,25 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_send_version_unroll;
 	}
 
+	/* not a fatal error if this fails */
 	err = ice_init_nvm_phy_type(pf->hw.port_info);
-	if (err) {
+	if (err)
 		dev_err(dev, "ice_init_nvm_phy_type failed: %d\n", err);
-		goto err_send_version_unroll;
-	}
 
+	/* not a fatal error if this fails */
 	err = ice_update_link_info(pf->hw.port_info);
-	if (err) {
+	if (err)
 		dev_err(dev, "ice_update_link_info failed: %d\n", err);
-		goto err_send_version_unroll;
-	}
 
 	ice_init_link_dflt_override(pf->hw.port_info);
 
 	/* if media available, initialize PHY settings */
 	if (pf->hw.port_info->phy.link_info.link_info &
 	    ICE_AQ_MEDIA_AVAILABLE) {
+		/* not a fatal error if this fails */
 		err = ice_init_phy_user_cfg(pf->hw.port_info);
-		if (err) {
+		if (err)
 			dev_err(dev, "ice_init_phy_user_cfg failed: %d\n", err);
-			goto err_send_version_unroll;
-		}
 
 		if (!test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags)) {
 			struct ice_vsi *vsi = ice_get_main_vsi(pf);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

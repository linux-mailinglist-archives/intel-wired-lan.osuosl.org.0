Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1F921E1C1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2020 22:57:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E5D38A0D4;
	Mon, 13 Jul 2020 20:57:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsNrnodf+bjG; Mon, 13 Jul 2020 20:57:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C3958A117;
	Mon, 13 Jul 2020 20:57:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF6341BF344
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AC8E0888F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DI+B9Hi1gL2b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35B6588CB8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2020 20:57:11 +0000 (UTC)
IronPort-SDR: 3oXhjTWH/rB+huIKUrNPrA0oGstn6ma2htAGPery1fxabZWJh45yMrDy93L06BOtY/4K3nIYos
 1OlhhYqtDmnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="213545919"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="213545919"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 13:57:09 -0700
IronPort-SDR: fEzA73yC1ubsu3lKUomlwxAkeyQhp5XSc9fSTVN9CatgKr82hGowWdy5M4BlWPPepRCE7DsbQM
 /pVKGnfL0MdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="285526693"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 13 Jul 2020 13:57:08 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Jul 2020 13:53:15 -0700
Message-Id: <20200713205318.32425-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S50 12/15] ice: cleanup VSI on probe fail
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

From: Marcin Szycik <marcin.szycik@intel.com>

As part of ice_setup_pf_sw() a PF VSI is setup; release the VSI in case of
failure.

Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e6d758aa9a2f..840e35e5f6f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3991,7 +3991,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	if (err) {
 		dev_err(dev, "probe failed sending driver version %s. error: %d\n",
 			UTS_RELEASE, err);
-		goto err_alloc_sw_unroll;
+		goto err_send_version_unroll;
 	}
 
 	/* since everything is good, start the service timer */
@@ -4000,19 +4000,19 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	err = ice_init_link_events(pf->hw.port_info);
 	if (err) {
 		dev_err(dev, "ice_init_link_events failed: %d\n", err);
-		goto err_alloc_sw_unroll;
+		goto err_send_version_unroll;
 	}
 
 	err = ice_init_nvm_phy_type(pf->hw.port_info);
 	if (err) {
 		dev_err(dev, "ice_init_nvm_phy_type failed: %d\n", err);
-		goto err_alloc_sw_unroll;
+		goto err_send_version_unroll;
 	}
 
 	err = ice_update_link_info(pf->hw.port_info);
 	if (err) {
 		dev_err(dev, "ice_update_link_info failed: %d\n", err);
-		goto err_alloc_sw_unroll;
+		goto err_send_version_unroll;
 	}
 
 	ice_init_link_dflt_override(pf->hw.port_info);
@@ -4023,7 +4023,7 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		err = ice_init_phy_user_cfg(pf->hw.port_info);
 		if (err) {
 			dev_err(dev, "ice_init_phy_user_cfg failed: %d\n", err);
-			goto err_alloc_sw_unroll;
+			goto err_send_version_unroll;
 		}
 
 		if (!test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags)) {
@@ -4077,6 +4077,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	clear_bit(__ICE_DOWN, pf->state);
 	return 0;
 
+err_send_version_unroll:
+	ice_vsi_release_all(pf);
 err_alloc_sw_unroll:
 	ice_devlink_destroy_port(pf);
 	set_bit(__ICE_SERVICE_DIS, pf->state);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

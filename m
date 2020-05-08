Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CF61C9FBE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 May 2020 02:43:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B50A687A72;
	Fri,  8 May 2020 00:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DcJ1psWDqeUf; Fri,  8 May 2020 00:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD48687287;
	Fri,  8 May 2020 00:43:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B9CE81BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B726987B49
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4lhgW+32V9C for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2020 00:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A6D40878A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2020 00:43:34 +0000 (UTC)
IronPort-SDR: wQJwx2jVECscFVWESXuVRu639obfNUw8JaigTqeSedZ2eUjgWLO8VV/j7z6dtXnIUWfzzua/aq
 Iedyqrz4q1yA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 17:43:33 -0700
IronPort-SDR: Tds5I+yZLAUnRG3/ND24jpe4sxOdZ/Fgjnnc4p/9rmppaLbwYSS+V/fexi3hAr7zImqjqcbkC5
 1mwWzIj8oWpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="249468770"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga007.jf.intel.com with ESMTP; 07 May 2020 17:43:33 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 17:41:03 -0700
Message-Id: <20200508004113.39725-5-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S41 05/15] ice: Fix probe/open race
 condition
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

As soon as the driver registers the PF netdev, userspace utilities
like NetworkManager try to bring up the associated interface. When
this happens, the driver may not have finished initializing fully,
resulting in a bunch of errors in the interface up flow.

The driver already has a mechanism to indicate if it's not up yet;
by setting the __ICE_DOWN bit in pf->state, but this bit gets
cleared too early in the current flow. So clear this bit only when
the driver is fully up. Also check for the same bit in the ice_open
flow, and return -EBUSY if the bit is set.

Also in ice_open, replace references of vsi->back with a local
variable.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 2128238a0f6d..f6c2dd55553f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2144,10 +2144,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 	}
 	ret = IRQ_HANDLED;
 
-	if (!test_bit(__ICE_DOWN, pf->state)) {
-		ice_service_task_schedule(pf);
-		ice_irq_dynamic_ena(hw, NULL, NULL);
-	}
+	ice_service_task_schedule(pf);
+	ice_irq_dynamic_ena(hw, NULL, NULL);
 
 	return ret;
 }
@@ -3339,9 +3337,6 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		goto err_init_interrupt_unroll;
 	}
 
-	/* Driver is mostly up */
-	clear_bit(__ICE_DOWN, pf->state);
-
 	/* In case of MSIX we are going to setup the misc vector right here
 	 * to handle admin queue events etc. In case of legacy and MSI
 	 * the misc functionality and queue processing is combined in
@@ -3397,9 +3392,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	ice_verify_cacheline_size(pf);
 
-	/* If no DDP driven features have to be setup, return here */
+	/* If no DDP driven features have to be setup, we are done with probe */
 	if (ice_is_safe_mode(pf))
-		return 0;
+		goto probe_done;
 
 	/* initialize DDP driven features */
 
@@ -3434,6 +3429,9 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	/* print PCI link speed and width */
 	pcie_print_link_status(pf->pdev);
 
+probe_done:
+	/* ready to go, so clear down state bit */
+	clear_bit(__ICE_DOWN, pf->state);
 	return 0;
 
 err_init_peer_unroll:
@@ -5348,14 +5346,20 @@ int ice_open(struct net_device *netdev)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
+	struct ice_pf *pf = vsi->back;
 	struct ice_port_info *pi;
 	int err;
 
-	if (test_bit(__ICE_NEEDS_RESTART, vsi->back->state)) {
+	if (test_bit(__ICE_NEEDS_RESTART, pf->state)) {
 		netdev_err(netdev, "driver needs to be unloaded and reloaded\n");
 		return -EIO;
 	}
 
+	if (test_bit(__ICE_DOWN, pf->state)) {
+		netdev_err(netdev, "device is not ready yet\n");
+		return -EBUSY;
+	}
+
 	netif_carrier_off(netdev);
 
 	pi = vsi->port_info;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

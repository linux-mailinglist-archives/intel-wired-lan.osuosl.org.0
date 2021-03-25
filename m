Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777F5349C79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Mar 2021 23:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20DF7401FE;
	Thu, 25 Mar 2021 22:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiyedCSQtoXY; Thu, 25 Mar 2021 22:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 204834000B;
	Thu, 25 Mar 2021 22:45:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42DC21C1173
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E2BA740002
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lP2bFhr96LLA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41BDE40003
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Mar 2021 22:45:04 +0000 (UTC)
IronPort-SDR: G3uKI4y+Eu7um5cICWrhoP0deZn+cTq8uLody5ToRazgFzgXr0HGHY2KbqOIJ8Nwh1OxiA+EeK
 2LF/TQJpTC7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="255031247"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="255031247"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 15:45:02 -0700
IronPort-SDR: m6KJcwEJ+f8o/MNJ2lUsm7aMhaBusZxO090WKcrAoUbXSHZfUGqVZTBQ88ANmKpE8a66sflXwh
 Bi2eFVK5MAJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375251376"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga003.jf.intel.com with ESMTP; 25 Mar 2021 15:45:01 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Mar 2021 15:35:17 -0700
Message-Id: <20210325223517.17722-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S57 14/14] ice: Remove unnecessary checks
 in add/kill_vid ndo ops
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

From: Brett Creeley <brett.creeley@intel.com>

Currently the driver is doing two unnecessary checks. First both ops are
checking if the VLAN ID passed in is less than VLAN_N_VID and second
both ops are checking to see if a port VLAN is configured on the VSI.

The first check is already handled by the 8021q driver so this is an
unnecessary check. The second check is unnecessary because the PF VSI is
never put into a port VLAN.

Remove these checks.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b3229202a300..47a7531f517d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3097,15 +3097,6 @@ ice_vlan_rx_add_vid(struct net_device *netdev, __always_unused __be16 proto,
 	struct ice_vsi *vsi = np->vsi;
 	int ret;
 
-	if (vid >= VLAN_N_VID) {
-		netdev_err(netdev, "VLAN id requested %d is out of range %d\n",
-			   vid, VLAN_N_VID);
-		return -EINVAL;
-	}
-
-	if (vsi->info.pvid)
-		return -EINVAL;
-
 	/* VLAN 0 is added by default during load/reset */
 	if (!vid)
 		return 0;
@@ -3143,9 +3134,6 @@ ice_vlan_rx_kill_vid(struct net_device *netdev, __always_unused __be16 proto,
 	struct ice_vsi *vsi = np->vsi;
 	int ret;
 
-	if (vsi->info.pvid)
-		return -EINVAL;
-
 	/* don't allow removal of VLAN 0 */
 	if (!vid)
 		return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

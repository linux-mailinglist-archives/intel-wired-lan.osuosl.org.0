Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B84001D5D7A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 460C3227FF;
	Sat, 16 May 2020 00:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yhSRNR7JpnV0; Sat, 16 May 2020 00:57:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC02722795;
	Sat, 16 May 2020 00:57:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8C51BF9CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 46BF3204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id baDzHHrjT1sB for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id E3C2A22731
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:41 +0000 (UTC)
IronPort-SDR: doX47zDKx1D7/pQ0R66vX5kuQLfs0PqjUwwEfsXgwQY+zUYeSVnxMWRtLrLJBg99Pml1vFnt3s
 28Rh8HRPWPjA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:40 -0700
IronPort-SDR: jeN8P/eMWnw7H6Xp1lEPuHZLIk4wDS++gv8sll4dzD1tJPkqa+iVocmPgcHW6w6mz8jBWMCZI4
 Mk/7eh11hu1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922698"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:00 -0700
Message-Id: <20200516005506.5113-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 3/9] ice: Fix inability to set
 channels when down
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

Currently the driver prevents a user from doing
modprobe ice
ethtool -L eth0 combined 5
ip link set eth0 up

The ethtool command fails, because the driver is checking to see if the
interface is down before allowing the get_channels to proceed (even for
a set_channels).

Remove this check and allow the user to configure the interface
before bringing it up, which is a much better usability case.

Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index fd1849155d85..68c38004a088 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3189,10 +3189,6 @@ ice_get_channels(struct net_device *dev, struct ethtool_channels *ch)
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_pf *pf = vsi->back;
 
-	/* check to see if VSI is active */
-	if (test_bit(__ICE_DOWN, vsi->state))
-		return;
-
 	/* report maximum channels */
 	ch->max_rx = ice_get_max_rxq(pf);
 	ch->max_tx = ice_get_max_txq(pf);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA561D5D7B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:57:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04839881F9;
	Sat, 16 May 2020 00:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 09ZClizh6a4R; Sat, 16 May 2020 00:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD102880B7;
	Sat, 16 May 2020 00:57:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05AC21BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 00004204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPu1uODKtcLl for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 619D4227FA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:57:42 +0000 (UTC)
IronPort-SDR: z3gkgbc73Q1saGPX8aX/iTLFWbUrGQWZ80XpwxdHv2Ep0/GKOEqNE0goDndg2oGS4npxL2iByl
 S6yD3+lVyy7Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:57:41 -0700
IronPort-SDR: bkxABxNxzGckIwzG9gHhNvMHgcxUsPgrYWgLb9mnZX0OQM9zENA868IUkGwO4pImON+dyb5f9H
 2np5kSh3Fp1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="464922707"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 17:57:40 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:55:04 -0700
Message-Id: <20200516005506.5113-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S46 7/9] ice: Use coalesce values from
 q_vector 0 when increasing q_vectors
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

Currently when a VSI is built (i.e. reset, set channels, etc.)
the coalesce settings will be preserved in most cases. However, when the
number of q_vectors are increased the settings for the new q_vectors
will be set to the driver defaults of AIM on, Rx/Tx ITR 50, and INTRL 0.
This is causing issues with how the ethtool layer gets the current
coalesce settings since it only uses q_vector 0. So, assume that the user
set the coalesce settings globally (i.e. ethtool -C eth0) and use q_vector
0's settings for all of the new q_vectors.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 7cd4afcade13..392fb6e7de5d 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2753,15 +2753,13 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
 		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
 						&coalesce[i]);
 
-	for (; i < vsi->num_q_vectors; i++) {
-		struct ice_coalesce_stored coalesce_dflt = {
-			.itr_tx = ICE_DFLT_TX_ITR,
-			.itr_rx = ICE_DFLT_RX_ITR,
-			.intrl = 0
-		};
+	/* number of q_vectors increased, so assume coalesce settings were
+	 * changed globally (i.e. ethtool -C eth0 instead of per-queue) and use
+	 * the previous settings from q_vector 0 for all of the new q_vectors
+	 */
+	for (; i < vsi->num_q_vectors; i++)
 		ice_vsi_rebuild_update_coalesce(vsi->q_vectors[i],
-						&coalesce_dflt);
-	}
+						&coalesce[0]);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

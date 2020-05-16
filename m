Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB8E1D5D6F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:54:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD917227AA;
	Sat, 16 May 2020 00:54:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLl50HsGFGOX; Sat, 16 May 2020 00:54:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 75FA42281C;
	Sat, 16 May 2020 00:54:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8D651BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C1FFE204BE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SlkMVNk-hwbt for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 208FA22795
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:53:57 +0000 (UTC)
IronPort-SDR: Px/GeCz8xqdHZRz1tdqnnvBdFnIK6WYGbSPV634Ah6ev6JiATCwhyxt3/N7jNXKiwmQ/H5Y5pB
 jbxScM7MRGsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:53:54 -0700
IronPort-SDR: slFdTZKc5Vk1E6j4JCao04+YpmYN3qFejWMUj6odV5GTGJbf88Z+M9NWutR4MlE2T+vI4IweZV
 Ty2QhTHR2aAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="263360550"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga003.jf.intel.com with ESMTP; 15 May 2020 17:53:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:51:20 -0700
Message-Id: <20200516005121.4963-14-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S45 14/15] ice: Increase timeout after PFR
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

From: Dan Nowlin <dan.nowlin@intel.com>

To allow for resets during package download, increase the timeout period
after performing a PFR. The time waited is the global config lock
timeout plus the normal PFSWR timeout.

Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8eccec1fa9e7..ce578fe4ab3e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -965,7 +965,12 @@ static enum ice_status ice_pf_reset(struct ice_hw *hw)
 
 	wr32(hw, PFGEN_CTRL, (reg | PFGEN_CTRL_PFSWR_M));
 
-	for (cnt = 0; cnt < ICE_PF_RESET_WAIT_COUNT; cnt++) {
+	/* Wait for the PFR to complete. The wait time is the global config lock
+	 * timeout plus the PFR timeout which will account for a possible reset
+	 * that is occurring during a download package operation.
+	 */
+	for (cnt = 0; cnt < ICE_GLOBAL_CFG_LOCK_TIMEOUT +
+	     ICE_PF_RESET_WAIT_COUNT; cnt++) {
 		reg = rd32(hw, PFGEN_CTRL);
 		if (!(reg & PFGEN_CTRL_PFSWR_M))
 			break;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

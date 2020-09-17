Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611FA26E687
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 22:19:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11EC787765;
	Thu, 17 Sep 2020 20:19:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WZPQ+E08bnFR; Thu, 17 Sep 2020 20:19:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD44887757;
	Thu, 17 Sep 2020 20:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3AF31BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFFDD2E1AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wvtrZv-abyiE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 81BF62E13F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 20:19:16 +0000 (UTC)
IronPort-SDR: 4fhpz7beV3kHTNa3CcnN2GlClUtnbFbP8+I85rwLnfYUpsELhnfO7ZGUi/oqRMhCdYAOjZ30h5
 r2OGKBd5vHgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="147535890"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="147535890"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 13:19:14 -0700
IronPort-SDR: fLbkvM7o1iYeBYDbodtEJB8mDp8w8q1mdhPPhdRfWKHvYuEuS/IUGHEDS5zgmDoDVxX7W2CejE
 W010UeeCkURw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="508574689"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by fmsmga005.fm.intel.com with ESMTP; 17 Sep 2020 13:19:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Sep 2020 13:13:41 -0700
Message-Id: <20200917201347.81570-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
References: <20200917201347.81570-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S53 09/15] ice: Enable Support for FW
 Override (E82X)
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

From: Jeb Cramer <jeb.j.cramer@intel.com>

The driver is able to override the firmware when it comes to supporting
a more lenient link mode.  This feature was limited to E810 devices.  It
is now extended to E82X devices.

Signed-off-by: Jeb Cramer <jeb.j.cramer@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index a0cf60272aab..3b2d48906e61 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -4261,10 +4261,6 @@ ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
  */
 bool ice_fw_supports_link_override(struct ice_hw *hw)
 {
-	/* Currently, only supported for E810 devices */
-	if (hw->mac_type != ICE_MAC_E810)
-		return false;
-
 	if (hw->api_maj_ver == ICE_FW_API_LINK_OVERRIDE_MAJ) {
 		if (hw->api_min_ver > ICE_FW_API_LINK_OVERRIDE_MIN)
 			return true;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

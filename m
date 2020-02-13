Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F3815CD56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2020 22:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A98158634C;
	Thu, 13 Feb 2020 21:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiunMZRqylFY; Thu, 13 Feb 2020 21:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAC7C862B4;
	Thu, 13 Feb 2020 21:32:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DBF801BF9BA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5F81862B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UUsiMV1mIm5O for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F98B862C9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2020 21:31:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227382410"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 13 Feb 2020 13:31:51 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 13 Feb 2020 13:31:21 -0800
Message-Id: <20200213213129.34023-6-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
References: <20200213213129.34023-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S39 v2 07/15] ice: SW DCB,
 report correct max TC value
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

From: Dave Ertman <david.m.ertman@intel.com>

lldpad is using the value reported in the DCB config for
max_tc as the max allowed number of TCs, not the current
max.  ICE driver was reporting it as current maximum TC.

Change DCB_NL function to report maximum TC allowed by
this device.

Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 589b820a6b5b..c4c12414083a 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -100,14 +100,7 @@ static int ice_dcbnl_setets(struct net_device *netdev, struct ieee_ets *ets)
 		goto ets_out;
 	}
 
-	/* max_tc is a 1-8 value count of number of TC's, not a 0-7 value
-	 * for the TC's index number.  Add one to value if not zero, and
-	 * for zero set it to the FW's default value
-	 */
-	if (max_tc)
-		max_tc++;
-	else
-		max_tc = IEEE_8021QAZ_MAX_TCS;
+	max_tc = pf->hw.func_caps.common_cap.maxtc;
 
 	new_cfg->etscfg.maxtcs = max_tc;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

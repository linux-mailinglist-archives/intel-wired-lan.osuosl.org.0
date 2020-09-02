Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23BE25B070
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Sep 2020 17:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B9B68727D;
	Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFcgfRjA4oeN; Wed,  2 Sep 2020 15:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC04B87278;
	Wed,  2 Sep 2020 15:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CABE1BF489
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2BEFC228A0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oCEvGEjgyGxe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Sep 2020 15:58:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 328392033D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Sep 2020 15:58:55 +0000 (UTC)
IronPort-SDR: dsdq3CQekgk9+p7K/3WXwwrjnI8t38QJXzjNPv2CaE2MLy1wt1vcB1ALFcxWtSxJbu2pJOYPXn
 JUVSKIF8+5Qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="158409181"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="158409181"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 08:58:54 -0700
IronPort-SDR: Y/k8GGfESwB8zF2VRc1Jj28d6/vixfcLVV3oJdyVs4DLoDayQGhQh8L/mRappoWkP3YGTjSL+f
 TdC5eOiqWdRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301882257"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2020 08:58:54 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  2 Sep 2020 08:53:44 -0700
Message-Id: <20200902155347.16972-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
References: <20200902155347.16972-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net 3/6] ice: report correct max number of TCs
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

In the driver currently, we are reporting max number of TCs
to the DCBNL callback as a kernel define set to 8.  This is
preventing userspace applications performing DCBx to correctly
down map the TCs from requested to actual values.

Report the actual max TC value to userspace from the capability
struct.

Fixes: b94b013eb626 ("ice: Implement DCBNL support")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_nl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
index 87f91b750d59..842d44b63480 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.c
@@ -136,7 +136,7 @@ ice_dcbnl_getnumtcs(struct net_device *dev, int __always_unused tcid, u8 *num)
 	if (!test_bit(ICE_FLAG_DCB_CAPABLE, pf->flags))
 		return -EINVAL;
 
-	*num = IEEE_8021QAZ_MAX_TCS;
+	*num = pf->hw.func_caps.common_cap.maxtc;
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93ED628C50C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Oct 2020 00:59:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E0C0023504;
	Mon, 12 Oct 2020 22:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Icq8fGesMv9l; Mon, 12 Oct 2020 22:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9BB3A2E0BD;
	Mon, 12 Oct 2020 22:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4EB11BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 22:59:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B034274ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 22:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Uy+3lupPpRP for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Oct 2020 22:59:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id B4C7823504
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Oct 2020 22:59:20 +0000 (UTC)
IronPort-SDR: yzsjtf6SVP42ksinoGWo+uTdQmp+xGfVp1T3JinJh98hIDs2+klmrJNVFwM/Bd9wE2yziRt+4C
 842sSVLdIqEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9772"; a="153645374"
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="153645374"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2020 15:59:19 -0700
IronPort-SDR: 3d6gYtvY73gt/XgLeiUeJa62VOeknafeh8Ed5Df7tl7aeABJPnjpndFgPFxgGbt/OvopSY+tfy
 cfrsF7e0lntw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,368,1596524400"; d="scan'208";a="329905610"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by orsmga002.jf.intel.com with ESMTP; 12 Oct 2020 15:59:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Oct 2020 15:53:26 -0700
Message-Id: <20201012225326.15722-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: remove dead code
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

From: Bruce Allan <bruce.w.allan@intel.com>

The check for a NULL pf pointer is moot since the earlier declaration and
assignment of struct device *dev already de-referenced the pointer.  Also,
the only caller of ice_set_dflt_mib() already ensures pf is not NULL.

Cc: Dave Ertman <david.m.ertman@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 0e62142416b2..99c8555dd6a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -785,15 +785,9 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
 	u8 mib_type, *buf, *lldpmib = NULL;
 	u16 len, typelen, offset = 0;
 	struct ice_lldp_org_tlv *tlv;
-	struct ice_hw *hw;
+	struct ice_hw *hw = &pf->hw;
 	u32 ouisubtype;
 
-	if (!pf) {
-		dev_dbg(dev, "%s NULL pf pointer\n", __func__);
-		return;
-	}
-
-	hw = &pf->hw;
 	mib_type = SET_LOCAL_MIB_TYPE_LOCAL_MIB;
 	lldpmib = kzalloc(ICE_LLDPDU_SIZE, GFP_KERNEL);
 	if (!lldpmib) {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3E04016F8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 09:32:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3E77040163;
	Mon,  6 Sep 2021 07:32:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6h7DDyhRV6vg; Mon,  6 Sep 2021 07:32:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AFBB4015C;
	Mon,  6 Sep 2021 07:32:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A05EF1BF32E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 897F660623
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13NKvuIOZLhj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 07:32:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AE775605F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 07:32:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="280921876"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="280921876"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 00:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="478206641"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2021 00:32:17 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 Sep 2021 07:31:12 +0000
Message-Id: <20210906073112.273838-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation scheme
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Lukasz Cieplicki <lukaszx.cieplicki@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Depending on the CPU count and NVM configuration, PF reset and
rebuild may fail if more queues are allocated (e.g. attach XDP program),
causes kernel NULL pointer dereference. The issue is that during rebuild,
FDIR VSI's queue pile is not zeroed, despite no VSIs, but PF exisiting.
The change causes all queue pairs released from the queue pile.

Fixes: bc7d338fbb3f ("i40e: reinit flow for the main VSI")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 4fe4ab962888..e56c81c2e7ab 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -221,6 +221,23 @@ static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
 	return ret;
 }
 
+/**
+ * i40e_put_all_lump - return a lump of generic resource
+ * @pile: the pile of resource to search
+ *
+ * Returns the count of items in the lump
+ **/
+static void i40e_put_all_lump(struct i40e_lump_tracking *pile)
+{
+	u16 i;
+
+	if (!pile)
+		return;
+
+	for (i = 0; i < pile->num_entries; i++)
+		pile->list[i] = 0;
+}
+
 /**
  * i40e_put_lump - return a lump of generic resource
  * @pile: the pile of resource to search
@@ -14109,7 +14126,7 @@ static struct i40e_vsi *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
 
 	pf = vsi->back;
 
-	i40e_put_lump(pf->qp_pile, vsi->base_queue, vsi->idx);
+	i40e_put_all_lump(pf->qp_pile);
 	i40e_vsi_clear_rings(vsi);
 
 	i40e_vsi_free_arrays(vsi, false);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

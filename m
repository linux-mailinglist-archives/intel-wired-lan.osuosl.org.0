Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E02E63FC5D5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Aug 2021 13:16:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71CA860BB9;
	Tue, 31 Aug 2021 11:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sIE34RktRGlF; Tue, 31 Aug 2021 11:16:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2210C60BA5;
	Tue, 31 Aug 2021 11:16:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 111FC1BF39C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:16:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFB27819D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lyb8kRhmlAgL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 11:16:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 450B98101A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 11:16:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="215323807"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="215323807"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 04:16:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; d="scan'208";a="428149646"
Received: from amlin-019-051.igk.intel.com ([10.102.19.51])
 by orsmga003.jf.intel.com with ESMTP; 31 Aug 2021 04:16:39 -0700
From: Karen Sornek <karen.sornek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Aug 2021 13:16:35 +0200
Message-Id: <20210831111635.16161-1-karen.sornek@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] igb: Fix removal of unicast MAC
 filters of VFs
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
Cc: Karen Sornek <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Move checking condition of VF MAC filter before clearing
or adding MAC filter to VF to prevent potential blackout caused
by removal of neccessary and working VF's MAC filer.

Fixes: 1b8b062a99dc ("igb: add VF trust infrastructure")
Signed-off-by: Karen Sornek <karen.sornek@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 28 +++++++++++------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 842b50cc9..98e977fe5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7648,6 +7648,20 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
 	struct vf_mac_filter *entry = NULL;
 	int ret = 0;
 
+	if ((vf_data->flags & IGB_VF_FLAG_PF_SET_MAC) &&
+	    !vf_data->trusted) {
+		dev_warn(&pdev->dev,
+			 "VF %d requested MAC filter but is administratively denied\n",
+			  vf);
+		return -EINVAL;
+	}
+	if (!is_valid_ether_addr(addr)) {
+		dev_warn(&pdev->dev,
+			 "VF %d attempted to set invalid MAC filter\n",
+			  vf);
+		return -EINVAL;
+	}
+
 	switch (info) {
 	case E1000_VF_MAC_FILTER_CLR:
 		/* remove all unicast MAC filters related to the current VF */
@@ -7661,20 +7675,6 @@ static int igb_set_vf_mac_filter(struct igb_adapter *adapter, const int vf,
 		}
 		break;
 	case E1000_VF_MAC_FILTER_ADD:
-		if ((vf_data->flags & IGB_VF_FLAG_PF_SET_MAC) &&
-		    !vf_data->trusted) {
-			dev_warn(&pdev->dev,
-				 "VF %d requested MAC filter but is administratively denied\n",
-				 vf);
-			return -EINVAL;
-		}
-		if (!is_valid_ether_addr(addr)) {
-			dev_warn(&pdev->dev,
-				 "VF %d attempted to set invalid MAC filter\n",
-				 vf);
-			return -EINVAL;
-		}
-
 		/* try to find empty slot in the list */
 		list_for_each(pos, &adapter->vf_macs.l) {
 			entry = list_entry(pos, struct vf_mac_filter, l);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

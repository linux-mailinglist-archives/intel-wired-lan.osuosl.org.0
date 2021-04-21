Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC78366EE5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Apr 2021 17:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0984740EB9;
	Wed, 21 Apr 2021 15:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oll7C_JZ6t1Q; Wed, 21 Apr 2021 15:15:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D642F40E84;
	Wed, 21 Apr 2021 15:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B59B1BF3EB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 15:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16F22841FD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 15:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n852maStWaGH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Apr 2021 15:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA89B83E87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Apr 2021 15:15:33 +0000 (UTC)
IronPort-SDR: mJJwAxRy4fa5p/uWifN89nURTbIbBqge4ProzhaWo6D8tpnq8mSTfGquxo+EfJPdsM9APSqiOW
 ZyyiJjb0ZfSA==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="183203717"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="183203717"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 08:15:30 -0700
IronPort-SDR: 89g44h+xoopLiSh9WEt+PW4A83ZAyZDz+FahAtBf/qTscAwdbwMAar8uHHnojHsTBWPlL08kAU
 u26JA6jqW3/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="421020674"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga008.fm.intel.com with ESMTP; 21 Apr 2021 08:15:23 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Apr 2021 15:15:11 +0000
Message-Id: <20210421151511.4230-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [net] igb: Check if num of q_vectors is smaller
 than max before array access.
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ensure that the adapter->q_vector[MAX_Q_VECTORS] array isn't accessed
beyond its size. It was fixed by using a local variable num_q_vectors
as a limit for loop index, and ensure that num_q_vectors is not bigger
than MAX_Q_VECTORS.

Fixes: 047e0030f1e6 ("igb: add new data structure for handling
interrupts and NAPI")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Reviewed-by: Slawomir Laba <slawomirx.laba@intel.com>
Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Reviewed-by: Mateusz Palczewski <mateusz.placzewski@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 55051a492..2c601261f 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -929,6 +929,7 @@ static void igb_configure_msix(struct igb_adapter *adapter)
  **/
 static int igb_request_msix(struct igb_adapter *adapter)
 {
+	unsigned int num_q_vectors = adapter->num_q_vectors;
 	struct net_device *netdev = adapter->netdev;
 	int i, err = 0, vector = 0, free_vector = 0;
 
@@ -937,7 +938,13 @@ static int igb_request_msix(struct igb_adapter *adapter)
 	if (err)
 		goto err_out;
 
-	for (i = 0; i < adapter->num_q_vectors; i++) {
+	if (num_q_vectors > MAX_Q_VECTORS) {
+		num_q_vectors = MAX_Q_VECTORS;
+		dev_warn(&adapter->pdev->dev,
+			 "The number of queue vectors (%d) is higher than max allowed (%d)\n",
+			 adapter->num_q_vectors, MAX_Q_VECTORS);
+	}
+	for (i = 0; i < num_q_vectors; i++) {
 		struct igb_q_vector *q_vector = adapter->q_vector[i];
 
 		vector++;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

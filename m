Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05F7367E82
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Apr 2021 12:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0058F4018F;
	Thu, 22 Apr 2021 10:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n6UjmaKgdNRt; Thu, 22 Apr 2021 10:19:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A64840145;
	Thu, 22 Apr 2021 10:19:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085CF1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 10:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EA5F7606CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 10:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id py35z5n0AakI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 10:19:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 57DE16063B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 10:19:29 +0000 (UTC)
IronPort-SDR: 6o93N+vb3LrCcx6YsSZGVvA7yRwl2tF94TIhYJ3lBPiwcoQPaLFCSTPsLlsWK6bhKJziMVLlxu
 OINRyHg95T4w==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="259815781"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="259815781"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 03:19:27 -0700
IronPort-SDR: mSicDZ9PxTXEzytGi56I7YJA0PH5Vbkp/qA1lF5aQHbKgAbfebGVqq1PqhMDCiO726/seiOPQ2
 5PkQ2+K2BoSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="524602314"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2021 03:19:27 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Apr 2021 10:19:23 +0000
Message-Id: <20210422101923.21147-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [net v4] igb: Check if num of q_vectors is
 smaller than max before array access.
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

v2:fix commit message Reviewed-by tag
v3:fix commit message Fixes tag
v4:fix commit versions history

Fixes: 047e0030f1e6 ("igb: add new data structure for handling interrupts and NAPI")
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

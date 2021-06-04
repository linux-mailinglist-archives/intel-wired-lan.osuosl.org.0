Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B70439BE07
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jun 2021 19:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA1FF40222;
	Fri,  4 Jun 2021 17:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PD5LR69qi8zI; Fri,  4 Jun 2021 17:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 587F84023E;
	Fri,  4 Jun 2021 17:05:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B149D1BF863
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40B9440198
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rgsyrnHBT6sz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 786A040222
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jun 2021 17:05:05 +0000 (UTC)
IronPort-SDR: Avm1vLADjnxQlvyVTxrVUUf8AKe9ey1VVQyy21BTP/XWkeWpgca+dOy8fIpihjbFV92+VrkAlc
 P+yAJTEF0rcA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="225649931"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="225649931"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 10:05:04 -0700
IronPort-SDR: PoLH3oRoTrg0kX/y9AfUPFEGBeu2yKm3O/6Zi8MoeUzLozdsdFY+5kN06XCLqY0XcWSHYEhd8m
 4rWvzYpitVVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="634086396"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.129])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2021 10:05:03 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  4 Jun 2021 09:53:32 -0700
Message-Id: <20210604165335.33329-12-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
References: <20210604165335.33329-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 12/15] iavf: Log info when VF is
 entering and leaving Allmulti mode
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

From: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>

Add log when VF is entering and leaving Allmulti mode.
The change of VF state is visible in dmesg now.
Without this commit, entering and leaving Allmulti mode
is not logged in dmesg.

Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 3c3fd604218e..d78206e168bc 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -711,15 +711,23 @@ void iavf_set_promiscuous(struct iavf_adapter *adapter, int flags)
 	if (flags & FLAG_VF_MULTICAST_PROMISC) {
 		adapter->flags |= IAVF_FLAG_ALLMULTI_ON;
 		adapter->aq_required &= ~IAVF_FLAG_AQ_REQUEST_ALLMULTI;
-		dev_info(&adapter->pdev->dev, "Entering multicast promiscuous mode\n");
+		dev_info(&adapter->pdev->dev, "%s is entering multicast promiscuous mode\n",
+			 adapter->netdev->name);
 	}
 
 	if (!flags) {
-		adapter->flags &= ~(IAVF_FLAG_PROMISC_ON |
-				    IAVF_FLAG_ALLMULTI_ON);
-		adapter->aq_required &= ~(IAVF_FLAG_AQ_RELEASE_PROMISC |
-					  IAVF_FLAG_AQ_RELEASE_ALLMULTI);
-		dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
+		if (adapter->flags & IAVF_FLAG_PROMISC_ON) {
+			adapter->flags &= ~IAVF_FLAG_PROMISC_ON;
+			adapter->aq_required &= ~IAVF_FLAG_AQ_RELEASE_PROMISC;
+			dev_info(&adapter->pdev->dev, "Leaving promiscuous mode\n");
+		}
+
+		if (adapter->flags & IAVF_FLAG_ALLMULTI_ON) {
+			adapter->flags &= ~IAVF_FLAG_ALLMULTI_ON;
+			adapter->aq_required &= ~IAVF_FLAG_AQ_RELEASE_ALLMULTI;
+			dev_info(&adapter->pdev->dev, "%s is leaving multicast promiscuous mode\n",
+				 adapter->netdev->name);
+		}
 	}
 
 	adapter->current_op = VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC421EFE93
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jun 2020 19:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68E7C88ADB;
	Fri,  5 Jun 2020 17:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4AtFgI-QmOOc; Fri,  5 Jun 2020 17:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C169388AE8;
	Fri,  5 Jun 2020 17:12:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F6B01BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 77E6420371
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7xN1GAf7E2J for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 17:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id BE86923307
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:16 +0000 (UTC)
IronPort-SDR: WTlXh+OSruFbsTdUfuNRuVhFcMLcwMCnkKdA2o+F3qbMHSrA+GMt8SdaVBzQEgUa1I9cirzQZs
 ARVVQNu9DqKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 10:12:15 -0700
IronPort-SDR: PgJcwf/2+Xlg/Gqpf6FP+xi7p3oKbA1/qLpn5aWZiMRpkt0/nqQYuBet4sadt/eTSxXnbjfaqy
 nnmvLCbOTedA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="273530622"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2020 10:12:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Jun 2020 10:09:44 -0700
Message-Id: <20200605170946.23494-2-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/4] iavf: use appropriate enum for
 comparison
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

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

adapter->link_speed has type enum virtchnl_link_speed but our comparisons
are against enum iavf_aq_link_speed. Though they are, currently, the same
values, change the comparison to the matching enum virtchnl_link_speed
since that may not always be the case.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c  | 17 ++++++-----------
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 12 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c     | 12 ++++++------
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 12 ++++++------
 4 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 60a3519713d4..86b6288b961e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -291,27 +291,22 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
 	}
 
 	switch (adapter->link_speed) {
-	case IAVF_LINK_SPEED_40GB:
+	case VIRTCHNL_LINK_SPEED_40GB:
 		cmd->base.speed = SPEED_40000;
 		break;
-	case IAVF_LINK_SPEED_25GB:
-#ifdef SPEED_25000
+	case VIRTCHNL_LINK_SPEED_25GB:
 		cmd->base.speed = SPEED_25000;
-#else
-		netdev_info(netdev,
-			    "Speed is 25G, display not supported by this version of ethtool.\n");
-#endif
 		break;
-	case IAVF_LINK_SPEED_20GB:
+	case VIRTCHNL_LINK_SPEED_20GB:
 		cmd->base.speed = SPEED_20000;
 		break;
-	case IAVF_LINK_SPEED_10GB:
+	case VIRTCHNL_LINK_SPEED_10GB:
 		cmd->base.speed = SPEED_10000;
 		break;
-	case IAVF_LINK_SPEED_1GB:
+	case VIRTCHNL_LINK_SPEED_1GB:
 		cmd->base.speed = SPEED_1000;
 		break;
-	case IAVF_LINK_SPEED_100MB:
+	case VIRTCHNL_LINK_SPEED_100MB:
 		cmd->base.speed = SPEED_100;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 0e2be56081e1..8307274fabc5 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2487,22 +2487,22 @@ static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
 	}
 
 	switch (adapter->link_speed) {
-	case IAVF_LINK_SPEED_40GB:
+	case VIRTCHNL_LINK_SPEED_40GB:
 		speed = 40000;
 		break;
-	case IAVF_LINK_SPEED_25GB:
+	case VIRTCHNL_LINK_SPEED_25GB:
 		speed = 25000;
 		break;
-	case IAVF_LINK_SPEED_20GB:
+	case VIRTCHNL_LINK_SPEED_20GB:
 		speed = 20000;
 		break;
-	case IAVF_LINK_SPEED_10GB:
+	case VIRTCHNL_LINK_SPEED_10GB:
 		speed = 10000;
 		break;
-	case IAVF_LINK_SPEED_1GB:
+	case VIRTCHNL_LINK_SPEED_1GB:
 		speed = 1000;
 		break;
-	case IAVF_LINK_SPEED_100MB:
+	case VIRTCHNL_LINK_SPEED_100MB:
 		speed = 100;
 		break;
 	default:
diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 17a405da9d16..ca041b39ffda 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -379,19 +379,19 @@ static inline unsigned int iavf_itr_divisor(struct iavf_q_vector *q_vector)
 	unsigned int divisor;
 
 	switch (q_vector->adapter->link_speed) {
-	case IAVF_LINK_SPEED_40GB:
+	case VIRTCHNL_LINK_SPEED_40GB:
 		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 1024;
 		break;
-	case IAVF_LINK_SPEED_25GB:
-	case IAVF_LINK_SPEED_20GB:
+	case VIRTCHNL_LINK_SPEED_25GB:
+	case VIRTCHNL_LINK_SPEED_20GB:
 		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 512;
 		break;
 	default:
-	case IAVF_LINK_SPEED_10GB:
+	case VIRTCHNL_LINK_SPEED_10GB:
 		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 256;
 		break;
-	case IAVF_LINK_SPEED_1GB:
-	case IAVF_LINK_SPEED_100MB:
+	case VIRTCHNL_LINK_SPEED_1GB:
+	case VIRTCHNL_LINK_SPEED_100MB:
 		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 32;
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index ca79bec4ebd9..c4735589a296 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -921,22 +921,22 @@ static void iavf_print_link_message(struct iavf_adapter *adapter)
 	}
 
 	switch (adapter->link_speed) {
-	case IAVF_LINK_SPEED_40GB:
+	case VIRTCHNL_LINK_SPEED_40GB:
 		link_speed_mbps = SPEED_40000;
 		break;
-	case IAVF_LINK_SPEED_25GB:
+	case VIRTCHNL_LINK_SPEED_25GB:
 		link_speed_mbps = SPEED_25000;
 		break;
-	case IAVF_LINK_SPEED_20GB:
+	case VIRTCHNL_LINK_SPEED_20GB:
 		link_speed_mbps = SPEED_20000;
 		break;
-	case IAVF_LINK_SPEED_10GB:
+	case VIRTCHNL_LINK_SPEED_10GB:
 		link_speed_mbps = SPEED_10000;
 		break;
-	case IAVF_LINK_SPEED_1GB:
+	case VIRTCHNL_LINK_SPEED_1GB:
 		link_speed_mbps = SPEED_1000;
 		break;
-	case IAVF_LINK_SPEED_100MB:
+	case VIRTCHNL_LINK_SPEED_100MB:
 		link_speed_mbps = SPEED_100;
 		break;
 	default:
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

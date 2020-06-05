Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 912301EFE90
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jun 2020 19:12:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4968F8712C;
	Fri,  5 Jun 2020 17:12:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id shjb19sYs7aa; Fri,  5 Jun 2020 17:12:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA2338711A;
	Fri,  5 Jun 2020 17:12:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4A2D1BF30B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DEC7F23DB4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RCYqdmAaGND0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2020 17:12:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id E318D20461
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2020 17:12:15 +0000 (UTC)
IronPort-SDR: o9PM9qnAr10g+ED9cwQdc5DoSOCwxq9pJhy2k7cd+t/Tl0qCg9nl/QKZNthL6XnkJOpOxDTJPU
 UH4RiJjjcBZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 10:12:15 -0700
IronPort-SDR: Rc9IQzJRW77iRlaiFWYCWDggeoCmMAIRDn/R5BO2lgdvQHwVNGZPQ3h7DwvwdCyU1ujOdvFgze
 kdIRz8v7HT+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,477,1583222400"; d="scan'208";a="273530623"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2020 10:12:14 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  5 Jun 2020 10:09:45 -0700
Message-Id: <20200605170946.23494-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
References: <20200605170946.23494-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/4] iavf: Fix reporting 2.5 Gb and 5Gb
 speeds
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

From: Brett Creeley <brett.creeley@intel.com>

Commit 4ae4916b5643 ("i40e: fix 'Unknown bps' in dmesg for 2.5Gb/5Gb
speeds") added the ability for the PF to report 2.5 and 5Gb speeds,
however, the iavf driver does not recognize those speeds as the values were
not added there. Add the proper enums and values so that iavf can properly
deal with those speeds.

Fixes: 4ae4916b5643 ("i40e: fix 'Unknown bps' in dmesg for 2.5Gb/5Gb speeds")
Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Witold Fijalkowski <witoldx.fijalkowski@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c |  6 ++++++
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 18 ++++++++++++------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c    |  6 ++++++
 3 files changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 86b6288b961e..c93567f4d0f7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -303,6 +303,12 @@ static int iavf_get_link_ksettings(struct net_device *netdev,
 	case VIRTCHNL_LINK_SPEED_10GB:
 		cmd->base.speed = SPEED_10000;
 		break;
+	case VIRTCHNL_LINK_SPEED_5GB:
+		cmd->base.speed = SPEED_5000;
+		break;
+	case VIRTCHNL_LINK_SPEED_2_5GB:
+		cmd->base.speed = SPEED_2500;
+		break;
 	case VIRTCHNL_LINK_SPEED_1GB:
 		cmd->base.speed = SPEED_1000;
 		break;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8307274fabc5..3f3c6260c5df 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2488,22 +2488,28 @@ static int iavf_validate_tx_bandwidth(struct iavf_adapter *adapter,
 
 	switch (adapter->link_speed) {
 	case VIRTCHNL_LINK_SPEED_40GB:
-		speed = 40000;
+		speed = SPEED_40000;
 		break;
 	case VIRTCHNL_LINK_SPEED_25GB:
-		speed = 25000;
+		speed = SPEED_25000;
 		break;
 	case VIRTCHNL_LINK_SPEED_20GB:
-		speed = 20000;
+		speed = SPEED_20000;
 		break;
 	case VIRTCHNL_LINK_SPEED_10GB:
-		speed = 10000;
+		speed = SPEED_10000;
+		break;
+	case VIRTCHNL_LINK_SPEED_5GB:
+		speed = SPEED_5000;
+		break;
+	case VIRTCHNL_LINK_SPEED_2_5GB:
+		speed = SPEED_2500;
 		break;
 	case VIRTCHNL_LINK_SPEED_1GB:
-		speed = 1000;
+		speed = SPEED_1000;
 		break;
 	case VIRTCHNL_LINK_SPEED_100MB:
-		speed = 100;
+		speed = SPEED_100;
 		break;
 	default:
 		break;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index c4735589a296..ed08ace4f05a 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -933,6 +933,12 @@ static void iavf_print_link_message(struct iavf_adapter *adapter)
 	case VIRTCHNL_LINK_SPEED_10GB:
 		link_speed_mbps = SPEED_10000;
 		break;
+	case VIRTCHNL_LINK_SPEED_5GB:
+		link_speed_mbps = SPEED_5000;
+		break;
+	case VIRTCHNL_LINK_SPEED_2_5GB:
+		link_speed_mbps = SPEED_2500;
+		break;
 	case VIRTCHNL_LINK_SPEED_1GB:
 		link_speed_mbps = SPEED_1000;
 		break;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

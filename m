Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B535456A8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 23:43:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B537960BE2;
	Thu,  9 Jun 2022 21:43:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8qYtE8-oAxd; Thu,  9 Jun 2022 21:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 979DE607EC;
	Thu,  9 Jun 2022 21:43:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 473D81BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:43:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34342403A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BUT_Z4Eotd49 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 21:43:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 999A240327
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:43:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654811007; x=1686347007;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dGIOzwFE1m6TI3GxjUkZxN5eb6OPGK5GdTZ43AV2Eho=;
 b=KemipItsNEM8eBobEq478EfJ0Fp6pf9ovyrFJDogNgPhocV56m/nLqfO
 KtdU9ojIftkLJ3y9cai4qStMVsM2QBvA5ySUgc3Hm/2ZMGtB9Zvkt9ZpU
 Wk9XYOUEESLJynIO5t7etrQd/yKc9ejifGwfWvEr+6ff0830Tlre4GsQ9
 jn0YEvH5nZn1BBS+lz7qhOdmBI/vRPa8JODQ0fMiXQXkeZQ3fHm58irUq
 5kDNUyT0SVK/2a4EtDIwqfRXiX8fxW110zhxI0ytSKseWlIp9nKk+SHba
 0YuKIER++coCR2bF/B4KCp9gs1zwz+iNiwRkXF4aR8+SaK+vg28qrv9rV A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="363757207"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="363757207"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 14:43:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="585820135"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jun 2022 14:43:26 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jun 2022 17:43:15 -0400
Message-Id: <20220609214315.548305-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v3] iavf: Fix max_rate limiting
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Fix max_rate option in tc, check for proper quanta boundaries.
Check for minimum value provided and if it fits expected 50Mbps
quanta.

Without this patch, iavf could send settings for max_rate limiting
that would be accepted from by PF even the max_rate option is less
than expected 50Mbps quanta. It results in no rate limiting
on traffic as rate limiting will be floored to 0.

Example:
tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
max_rate 50Mbps 500Mbps 500Mbps

Should limit TC0 to circa 50 Mbps

tc qdisc add dev $vf root mqprio num_tc 3 map 0 2 1 queues \
2@0 2@2 2@4 hw 1 mode channel shaper bw_rlimit \
max_rate 0Mbps 100Kbit 500Mbps

Should return error

Fixes: d5b33d0 ("i40evf: add ndo_setup_tc callback to i40evf")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
v2: Change author to Przemyslaw, and change variable to RCT
v3: Add space between title & commit message body
---
 drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
 drivers/net/ethernet/intel/iavf/iavf_main.c | 24 +++++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index fda1198d2c00..0bd516ecebef 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -93,6 +93,7 @@ struct iavf_vsi {
 #define IAVF_HKEY_ARRAY_SIZE ((IAVF_VFQF_HKEY_MAX_INDEX + 1) * 4)
 #define IAVF_HLUT_ARRAY_SIZE ((IAVF_VFQF_HLUT_MAX_INDEX + 1) * 4)
 #define IAVF_MBPS_DIVISOR	125000 /* divisor to convert to Mbps */
+#define IAVF_MBPS_QUANTA	50
 
 #define IAVF_VIRTCHNL_VF_RESOURCE_SIZE (sizeof(struct virtchnl_vf_resource) + \
 					(IAVF_MAX_VF_VSI * \
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 57c51a15bcbc..b8bf472346c7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3409,6 +3409,7 @@ static int iavf_validate_ch_config(struct iavf_adapter *adapter,
 				   struct tc_mqprio_qopt_offload *mqprio_qopt)
 {
 	u64 total_max_rate = 0;
+	u32 tx_rate_rem = 0;
 	int i, num_qps = 0;
 	u64 tx_rate = 0;
 	int ret = 0;
@@ -3423,12 +3424,31 @@ static int iavf_validate_ch_config(struct iavf_adapter *adapter,
 			return -EINVAL;
 		if (mqprio_qopt->min_rate[i]) {
 			dev_err(&adapter->pdev->dev,
-				"Invalid min tx rate (greater than 0) specified\n");
+				"Invalid min tx rate (greater than 0) specified for TC%d\n", i);
 			return -EINVAL;
 		}
-		/*convert to Mbps */
+
+		/* convert to Mbps */
 		tx_rate = div_u64(mqprio_qopt->max_rate[i],
 				  IAVF_MBPS_DIVISOR);
+
+		if (mqprio_qopt->max_rate[i] &&
+		    tx_rate < IAVF_MBPS_QUANTA) {
+			dev_err(&adapter->pdev->dev,
+				"Invalid max tx rate for TC%d, minimum %dMbps\n",
+				i, IAVF_MBPS_QUANTA);
+			return -EINVAL;
+		}
+
+		(void)div_u64_rem(tx_rate, IAVF_MBPS_QUANTA, &tx_rate_rem);
+
+		if (tx_rate_rem != 0) {
+			dev_err(&adapter->pdev->dev,
+				"Invalid max tx rate for TC%d, not divisible by %d\n",
+				i, IAVF_MBPS_QUANTA);
+			return -EINVAL;
+		}
+
 		total_max_rate += tx_rate;
 		num_qps += mqprio_qopt->qopt.count[i];
 	}
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

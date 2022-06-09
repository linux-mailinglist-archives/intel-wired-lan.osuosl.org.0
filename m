Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 139AC545683
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jun 2022 23:35:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C7BC41B49;
	Thu,  9 Jun 2022 21:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gkvf3zGeMXGz; Thu,  9 Jun 2022 21:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0038D41B45;
	Thu,  9 Jun 2022 21:35:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 919941BF390
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7E46041B45
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sXuEbvDCES6w for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jun 2022 21:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E3D941B30
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jun 2022 21:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654810522; x=1686346522;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d58Xv+gROUptKsNli0Vz+r2K2tZA5bv7MGkAJLbAzVs=;
 b=jKjzsozQ9e/C8hU2cBqRHUzrspevc6OoLQrxPhHDvZswOIjbnJirhyYE
 gAkYZEqHWrx1JlqRIfHwdRFDjXIDDAeO4LksLhpZjEGEqk8PDLSSobHwb
 zao2NT3n8urDH5Y86VRoySfX8ErvTL/0dbHOVTHJ7QXjM248NBUvbcejo
 71dEw8mi5KCkBrWeRxNTIGTtYcLTzTs1wIZ86ocVbFHNmflpwyw7QYDkD
 99DykRt1mv7967DbZ2Se5/NjLX+NSqaQu68yqImATHWhHAQiJOe3gPYnx
 AqZAtZFPkDUUpPfuXvzl6nUyzbRXpjLWzaSBO1tPFlnU3tcpIi2tCkTpO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="363754880"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="363754880"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2022 14:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="585814342"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jun 2022 14:35:21 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  9 Jun 2022 17:35:08 -0400
Message-Id: <20220609213508.547944-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix max_rate limiting Fix
 max_rate option in tc,
 check for proper quanta boundaries. Check for minimum value provided and if
 it fits expected 50Mbps quanta.
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

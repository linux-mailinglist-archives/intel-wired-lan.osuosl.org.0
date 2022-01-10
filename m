Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F5E489BD0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 16:07:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B78E160D95;
	Mon, 10 Jan 2022 15:07:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZE8A0gyFz4pO; Mon, 10 Jan 2022 15:07:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A3FC860C02;
	Mon, 10 Jan 2022 15:07:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 818AF1BF372
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 15:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6E31260C02
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 15:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NrY9UrncHYKb for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 15:07:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6B50260B7D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 15:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641827261; x=1673363261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZRpPC7iLpFu1TMkDtH0X3HpzCGOg8a3oSCLcTs2aqUQ=;
 b=Hm33H+4hamaOBQiwKQ77gu5rZrpMJW9Z7banNNEvLQN40f6wYrbVqJID
 jT5EG7+EPJblVTul1p5RJyEZ/Ens1tkRB3uNz69/pOeltBKlSPQvtLGIY
 I5kYeCXSfhR7/PSvwROHe5eqPl7rPsTWroKJOYlz4cSyQcBKu1EZpexZp
 Njwa+gq1NL0V8DM4EKMcgemNFecCsedM+P/5aH4oY4E/OIHQTXQSFG0tW
 I29slkNy9LrrEZ6VDOX1TGJUBCAc7mbVzRaddXNtiE+JaFEJEPi5L6mfA
 aYXQDHcfbiWrA/NlDaCsBbCFbSTjA/QIn29S9TUUYzdtSgO9vvCla38Tl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267572493"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="267572493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 07:07:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514701747"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga007.jf.intel.com with ESMTP; 10 Jan 2022 07:07:38 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jan 2022 16:06:38 +0100
Message-Id: <20220110150638.24305-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add support for
 50G/100G in AIM algorithm
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Brett Creeley <brett.creeley@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Advanced link speed support was added long back, but adding AIM support was
missed. This patch adds AIM support for advanced link speed support, which
allows the algorithm to take into account 50G/100G link speeds. Also, other
previous speeds are taken into consideration when advanced link speeds are
supported.

Signed-off-by: Brett Creeley <brett.creeley@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 v3: Fixed checkpatch errors
 v2: Removed build issues
---
 drivers/net/ethernet/intel/iavf/iavf_txrx.c | 62 ++++++++++++++++-----
 1 file changed, 47 insertions(+), 15 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_txrx.c b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
index 8cbe7ad..978f651 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_txrx.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_txrx.c
@@ -374,29 +374,60 @@ static inline bool iavf_container_is_rx(struct iavf_q_vector *q_vector,
 	return &q_vector->rx == rc;
 }
 
-static inline unsigned int iavf_itr_divisor(struct iavf_q_vector *q_vector)
+#define IAVF_AIM_MULTIPLIER_100G	2560
+#define IAVF_AIM_MULTIPLIER_50G		1280
+#define IAVF_AIM_MULTIPLIER_40G		1024
+#define IAVF_AIM_MULTIPLIER_20G		512
+#define IAVF_AIM_MULTIPLIER_10G		256
+#define IAVF_AIM_MULTIPLIER_1G		32
+
+static unsigned int iavf_mbps_itr_multiplier(u32 speed_mbps)
 {
-	unsigned int divisor;
+	switch (speed_mbps) {
+	case SPEED_100000:
+		return IAVF_AIM_MULTIPLIER_100G;
+	case SPEED_50000:
+		return IAVF_AIM_MULTIPLIER_50G;
+	case SPEED_40000:
+		return IAVF_AIM_MULTIPLIER_40G;
+	case SPEED_25000:
+	case SPEED_20000:
+		return IAVF_AIM_MULTIPLIER_20G;
+	case SPEED_10000:
+	default:
+		return IAVF_AIM_MULTIPLIER_10G;
+	case SPEED_1000:
+	case SPEED_100:
+		return IAVF_AIM_MULTIPLIER_1G;
+	}
+}
 
-	switch (q_vector->adapter->link_speed) {
+static unsigned int
+iavf_virtchnl_itr_multiplier(enum virtchnl_link_speed speed_virtchnl)
+{
+	switch (speed_virtchnl) {
 	case VIRTCHNL_LINK_SPEED_40GB:
-		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 1024;
-		break;
+		return IAVF_AIM_MULTIPLIER_40G;
 	case VIRTCHNL_LINK_SPEED_25GB:
 	case VIRTCHNL_LINK_SPEED_20GB:
-		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 512;
-		break;
-	default:
+		return IAVF_AIM_MULTIPLIER_20G;
 	case VIRTCHNL_LINK_SPEED_10GB:
-		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 256;
-		break;
+	default:
+		return IAVF_AIM_MULTIPLIER_10G;
 	case VIRTCHNL_LINK_SPEED_1GB:
 	case VIRTCHNL_LINK_SPEED_100MB:
-		divisor = IAVF_ITR_ADAPTIVE_MIN_INC * 32;
-		break;
+		return IAVF_AIM_MULTIPLIER_1G;
 	}
+}
 
-	return divisor;
+static unsigned int iavf_itr_divisor(struct iavf_adapter *adapter)
+{
+	if (ADV_LINK_SUPPORT(adapter))
+		return IAVF_ITR_ADAPTIVE_MIN_INC *
+			iavf_mbps_itr_multiplier(adapter->link_speed_mbps);
+	else
+		return IAVF_ITR_ADAPTIVE_MIN_INC *
+			iavf_virtchnl_itr_multiplier(adapter->link_speed);
 }
 
 /**
@@ -586,8 +617,9 @@ static void iavf_update_itr(struct iavf_q_vector *q_vector,
 	 * Use addition as we have already recorded the new latency flag
 	 * for the ITR value.
 	 */
-	itr += DIV_ROUND_UP(avg_wire_size, iavf_itr_divisor(q_vector)) *
-	       IAVF_ITR_ADAPTIVE_MIN_INC;
+	itr += DIV_ROUND_UP(avg_wire_size,
+			    iavf_itr_divisor(q_vector->adapter)) *
+		IAVF_ITR_ADAPTIVE_MIN_INC;
 
 	if ((itr & IAVF_ITR_MASK) > IAVF_ITR_ADAPTIVE_MAX_USECS) {
 		itr &= IAVF_ITR_ADAPTIVE_LATENCY;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F0E5539A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 20:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8913E41A02;
	Tue, 21 Jun 2022 18:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8913E41A02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655836796;
	bh=Hlxl1UE/rE1+LFP3afPN/XZFEWuZ3aqHrbyyu8VF2Yo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mfg8AywwvY1X0UQ4AKFa7WK0ytp4xArZ7qGUhD8+mebppTHuogPgdhFTkTX6dJ5wZ
	 dEEMA2/zUzf8flCBRZd6XfA3AQdJbnsayyLK0NfOfxVssIH0WTFPi2b7+Z+bCT/HqR
	 Cx0GgKbR1ok5RzyzxZnFvnqdnCf14blsiMtt6eECsByQ0iwAaYKCnR+7BB+AVFLENk
	 6VxNMD6eQNQ6zEQ2sQZp8APdqQ/T+kCt7JjZQyk77KzunZPMB2PRwTADowjUqSJJQl
	 X5Hg+E4faTjApm2BJSoKkoNOYS7Vp0KO6kdhNsyEgQZTY3q9KKLNRjqYI5BhwRJ7LN
	 ItGQrS2nG85iw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrFI9sT7IY0t; Tue, 21 Jun 2022 18:39:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17365419F7;
	Tue, 21 Jun 2022 18:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17365419F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20EEF1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:39:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED88060AA3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED88060AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sh8TKqkcvpqq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 18:39:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A806860A93
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A806860A93
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 18:39:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="278977682"
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="278977682"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 11:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,210,1650956400"; d="scan'208";a="690077060"
Received: from unknown (HELO ocsbesrhlrepo01.amr.corp.intel.com)
 ([10.166.28.101])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2022 11:39:45 -0700
From: Jun Zhang <xuejun.zhang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Jun 2022 14:39:33 -0400
Message-Id: <20220621183933.2293795-1-xuejun.zhang@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655836788; x=1687372788;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ym3mMfi3arwJ3l4RMbYOL7PQnCvHeWA1SU/q6T9PfXM=;
 b=lQBTFsm8PrNK6bfq//1iM8GrDRqGHp8aH7HSLN27/JcYWOp0fMqTfj8g
 ZMKTL232lYjXPsPDNqzXAgfNZhY45Jes/NsLRozCO6EuZSgIIrBzViLG8
 8AGX/S3SGBFi46+kwusIvDkxC3FYlzjQmLnnC1yERdQvaV0XrCZrBWggx
 edYvTYMD5q3+kBUagczvrQImkI1bE1NEtw4HghQ+9qTM+4wzXZ4/hTEDW
 x+847mmoletoEYwuHhh5POonynIj/puwmglpp43eTCJbIyZpG+MSQSOFK
 oVPhGsQXiCag7Bl90B+k9vqgvaF61XNQWV+wrjQuInZWLbbLtYBUJUYJF
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lQBTFsm8
Subject: [Intel-wired-lan] [PATCH net-next v1] iavf: Check for duplicate TC
 flower filter before parsing
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

From: Avinash Dayanand <avinash.dayanand@intel.com>

Record of all the TC flower filters are kept for local book keeping, so
take advantage of that and check for duplicate filter even before sending
a request to the PF driver.

Fixes: 0075fa0fadd0 ("i40evf: Add support to apply cloud filters")
Signed-off-by: Avinash Dayanand <avinash.dayanand@intel.com>
Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 54 ++++++++++++---------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 57c51a15bcbc..e0f62346c892 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -3830,6 +3830,28 @@ static int iavf_handle_tclass(struct iavf_adapter *adapter, u32 tc,
 	return 0;
 }
 
+/* iavf_find_cf - Find the cloud filter in the list
+ * @adapter: Board private structure
+ * @cookie: filter specific cookie
+ *
+ * Returns ptr to the filter object or NULL. Must be called while holding the
+ * cloud_filter_list_lock.
+ */
+static struct iavf_cloud_filter *iavf_find_cf(struct iavf_adapter *adapter,
+					      unsigned long *cookie)
+{
+	struct iavf_cloud_filter *filter = NULL;
+
+	if (!cookie)
+		return NULL;
+
+	list_for_each_entry(filter, &adapter->cloud_filter_list, list) {
+		if (!memcmp(cookie, &filter->cookie, sizeof(filter->cookie)))
+			return filter;
+	}
+	return NULL;
+}
+
 /**
  * iavf_configure_clsflower - Add tc flower filters
  * @adapter: board private structure
@@ -3861,6 +3883,15 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 
 	filter->cookie = cls_flower->cookie;
 
+	/* bail out here if filter already exists */
+	spin_lock_bh(&adapter->cloud_filter_list_lock);
+	if (iavf_find_cf(adapter, &cls_flower->cookie)) {
+		dev_err(&adapter->pdev->dev, "Failed to add TC Flower filter, it already exists\n");
+		err = -EEXIST;
+		goto spin_unlock;
+	}
+	spin_unlock_bh(&adapter->cloud_filter_list_lock);
+
 	/* set the mask to all zeroes to begin with */
 	memset(&filter->f.mask.tcp_spec, 0, sizeof(struct virtchnl_l4_spec));
 	/* start out with flow type and eth type IPv4 to begin with */
@@ -3879,6 +3910,7 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 	adapter->num_cloud_filters++;
 	filter->add = true;
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
+spin_unlock:
 	spin_unlock_bh(&adapter->cloud_filter_list_lock);
 err:
 	if (err)
@@ -3888,28 +3920,6 @@ static int iavf_configure_clsflower(struct iavf_adapter *adapter,
 	return err;
 }
 
-/* iavf_find_cf - Find the cloud filter in the list
- * @adapter: Board private structure
- * @cookie: filter specific cookie
- *
- * Returns ptr to the filter object or NULL. Must be called while holding the
- * cloud_filter_list_lock.
- */
-static struct iavf_cloud_filter *iavf_find_cf(struct iavf_adapter *adapter,
-					      unsigned long *cookie)
-{
-	struct iavf_cloud_filter *filter = NULL;
-
-	if (!cookie)
-		return NULL;
-
-	list_for_each_entry(filter, &adapter->cloud_filter_list, list) {
-		if (!memcmp(cookie, &filter->cookie, sizeof(filter->cookie)))
-			return filter;
-	}
-	return NULL;
-}
-
 /**
  * iavf_delete_clsflower - Remove tc flower filters
  * @adapter: board private structure
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

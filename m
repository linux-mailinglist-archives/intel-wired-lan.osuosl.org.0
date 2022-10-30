Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B127F612764
	for <lists+intel-wired-lan@lfdr.de>; Sun, 30 Oct 2022 05:56:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98380605D8;
	Sun, 30 Oct 2022 04:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98380605D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667105764;
	bh=vNcmwXF9LUzpR0d5ZYN8rh7VoGzYSuzTem/GzwMlI1A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9inFUMQ/rtYLckiV+PY8fvp8CzM/i0FVGnECXsMPedA6cLgI3VtvlMuASBUaKB+uS
	 WT9sdEAiTiK+eno9r0V3KVxCYkGSbEzqqToWSWMhY3zgZ3Mg6kXeHvlMsuUoKE1qIW
	 V7IhNgCE5rxpeWvx2fAUJ6tu0xcdgqbd5zPrzUff5UZjJ/mgMSRhPwiWKi94hCWAPe
	 YZ6VjcU9xy7Inm6B4lfNRuTJUcimXpUvg01wMgo1ZsMmf5tyS5FWB1MDufsCZWkym/
	 DaHWHOociuyzH7zcC8LlmkWws9GxBhZHutRiYK7LvP36KwydWFOPHGG2zuS3xHHvAP
	 fj3Ghp7h67+6w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HAVTjn1AKbfv; Sun, 30 Oct 2022 04:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 833A0608B7;
	Sun, 30 Oct 2022 04:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 833A0608B7
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE6F41BF36A
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0CF940489
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0CF940489
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c5i3VEre008M for <intel-wired-lan@osuosl.org>;
 Sun, 30 Oct 2022 04:55:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE6F24040D
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE6F24040D
 for <intel-wired-lan@osuosl.org>; Sun, 30 Oct 2022 04:55:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="335367893"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="335367893"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2022 21:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10515"; a="635707886"
X-IronPort-AV: E=Sophos;i="5.95,225,1661842800"; d="scan'208";a="635707886"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga007.fm.intel.com with ESMTP; 29 Oct 2022 21:55:12 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Sun, 30 Oct 2022 12:53:20 +0800
Message-Id: <20221030045324.25207-2-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
References: <20221030045324.25207-1-muhammad.husaini.zulkifli@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667105736; x=1698641736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references;
 bh=J0p7QL+SK243NoebmWOlnZl+3a7u4m6gZThXwYJu19w=;
 b=HZC1eq98rLWy+yTBytJlFyaiHUL29Z+Y7TvtfhlxQAX0MphriZ35Ihw+
 vqxk2vPv2XoII8viYpQKc35DThWJiHuH7d6cuE4GC8PLy7zcj80qqo8u0
 WOD0+1AyucVVs7TRJmDfKPXsPa/OswvjeoYD8hOWhkV89kyKFar1czcdu
 lbEQ9kVzzlbk1ZgSrWqp8wg8A4c87BmW2o8sJgwC6BiHQJfbs68Aye5Ee
 QZB1lccecmv8vLvdxFSLfCLtA9E5u7QH5YSBAxVXEEBgfDi5m2wBNdeDK
 W7WBUySV9YxRh6GEASezuoU50IGJMZy8gX4spVC3qX26KE1OENjP3Tjow
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZC1eq98
Subject: [Intel-wired-lan] [PATCH 1/5] igc: allow BaseTime 0 enrollment for
 Qbv
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
Cc: muhammad.husaini.zulkifli@intel.com, tee.min.tan@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tan Tee Min <tee.min.tan@linux.intel.com>

Introduce qbv_enable flag in igc_adapter struct to store the Qbv on/off.
So this allow the BaseTime to enroll with zero value.

Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h      | 1 +
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 drivers/net/ethernet/intel/igc/igc_tsn.c  | 2 +-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 1e7e7071f64d..c816623dc521 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -182,6 +182,7 @@ struct igc_adapter {
 
 	ktime_t base_time;
 	ktime_t cycle_time;
+	bool qbv_enable;
 
 	/* OS defined structs */
 	struct pci_dev *pdev;
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 671255edf3c2..cea7f4cc1eb7 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5925,6 +5925,8 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
 	u32 start_time = 0, end_time = 0;
 	size_t n;
 
+	adapter->qbv_enable = qopt->enable;
+
 	if (!qopt->enable)
 		return igc_tsn_clear_schedule(adapter);
 
diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f975ed807da1..b63736176709 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -36,7 +36,7 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 {
 	unsigned int new_flags = adapter->flags & ~IGC_FLAG_TSN_ANY_ENABLED;
 
-	if (adapter->base_time)
+	if (adapter->qbv_enable)
 		new_flags |= IGC_FLAG_TSN_QBV_ENABLED;
 
 	if (is_any_launchtime(adapter))
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

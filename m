Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 958796990B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Feb 2023 11:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06AD66106B;
	Thu, 16 Feb 2023 10:05:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06AD66106B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676541925;
	bh=F52lQpT+7Uqi8f3ihiMD4tw9vCdn2XlmDyvBQXMQGJI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FiC1t0Z9ZzLypckRthu12qGbnXPX/L8pnWkQvoOC1w9DcLER6giZ15wPyQDKujlDk
	 ry8MO0Nw2ZH0hnU6+Ty3I3jc9SJeTpAp++uigGQPLUvCsbSVpvbPe7ROEQO2WTiwqs
	 MvvnjBgJfhLno8EnjxbFdoTJdE3hPpMJaicqti6I7zIHGfK0FhVJdcuqk7mqwGrVLX
	 Nm9ItsuXGXClf2sGFO1s9VMtbM9nVgwJfX+lHOlzLVgO2phiUOnVTTcVhIANkZbpHx
	 5q4ydbH1vFSjb4NJHajr6q8vUUYSO9EVweflJFbBlEVC4k6T2q7+xv5s8YSw68liEQ
	 /TP8BzeDkkPfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oKJhvPq_MlRa; Thu, 16 Feb 2023 10:05:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 021C460F3A;
	Thu, 16 Feb 2023 10:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 021C460F3A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 675B51BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3FDD782049
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FDD782049
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJxDTSByGVKT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Feb 2023 10:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3382682047
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3382682047
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Feb 2023 10:05:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="315356098"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="315356098"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 02:05:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="779289010"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="779289010"
Received: from kkolacin-desk1.elements.local ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2023 02:05:16 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 16 Feb 2023 11:05:12 +0100
Message-Id: <20230216100512.224241-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676541918; x=1708077918;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2zgt93jZTytH73YVZrjJ7/A69u939FRUTtJU3yZLBEo=;
 b=XoWdLgVxgkkZYpL66XpUtS1LCffC23P5s9iafhybHjYjzkTUJbeoJjIi
 vkwH5BcL81EAF+t2MPLRRWwLktB7CPQSA369Ft41wYQGSgHtyZcg2tkJm
 JxFXC1rY6u5IoCc22dmuR5Luc4CfXBtRGWcNuYm1ikM//Wix9Co+WpjjV
 I2qqaEBereZy4tZtyw/S1xRV+XUZt7VjuQsFSVS0uz9pt7S0YZvp9Xult
 EHsUZQqnaTF4lQu151bOwMetMnie3L5arhU3P3zqlSPmt52XlhIIE/0in
 a6sifLTzSSwdM5zQOXDLqDMf5FTqSuaVGgf5Lpt8jdyQeYr6DpxR7w8dQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XoWdLgVx
Subject: [Intel-wired-lan] [PATCH v2 net] ice: Write all GNSS buffers
 instead of first one
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When user writes multiple messages in a short period of time, the driver
writes only the first one and buffers others in a linked list.

Fix this behavior to write all pending buffers instead of only the first
one.

To reproduce this issue, open the GNSS device with cat, send a few
messages to the device, e.g. multiple commands using echo. The issue
manifests itself as response to only first message. Then, after issuing
a single or multiple commands, user can see that response from the
device was not for recent ones but for the next single buffered one from
the first batch.

Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
V1 -> V2: Added reproduction steps in the commit message.

 drivers/net/ethernet/intel/ice/ice_gnss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
index 8dec748bb53a..1fa7bf31816f 100644
--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
@@ -91,7 +91,7 @@ static void ice_gnss_write_pending(struct kthread_work *work)
 	if (!test_bit(ICE_FLAG_GNSS, pf->flags))
 		return;
 
-	if (!list_empty(&gnss->queue)) {
+	while (!list_empty(&gnss->queue)) {
 		struct gnss_write_buf *write_buf = NULL;
 		unsigned int bytes;
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

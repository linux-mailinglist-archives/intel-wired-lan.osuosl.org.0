Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5916D0162
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 12:37:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E29B403A4;
	Thu, 30 Mar 2023 10:37:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E29B403A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680172678;
	bh=or71tlsh7b5dA8eQRRGhowyapMt7ggEwVc5bEglwuMc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UnMGG0A4sLmTdLBUU+5NKeGBis6WPkU05CiJdO7OLcZDq72fSoY52+25X/5HZo+2E
	 zo3k6nAstdMdZAxPNRgVoMRoMNGreC+PjyBAEkQlBf1uykjNVtUGEMe94vj1wlnu4E
	 mbyBYCeiJ3NxxRizjX5OLUyZYMA+tucFHHmM+tS39aXBiVz3j18hcCSyRzAB1bdfbw
	 aFEYftK88sKvCjNpOSChbl5N1fcbxsIuzGesyPmesNGpCZwGUQcMQXuzDe03xokUZT
	 e/qZIrC4qPvle1sT2ugRlkolwqKxMelkZPzxbH5AtQsxuObzci3CyRQEY10Fv7kGRd
	 4CPo2M/nhXt4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gA-HMfcf2Ro2; Thu, 30 Mar 2023 10:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 60347402BC;
	Thu, 30 Mar 2023 10:37:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60347402BC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E2621BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 10:37:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 203B8402BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 10:37:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 203B8402BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6SrIkVil_8s3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 10:37:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 668FC401E1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 668FC401E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 10:37:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="320783760"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="320783760"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 03:37:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="858871662"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="858871662"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga005.jf.intel.com with ESMTP; 30 Mar 2023 03:37:50 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Thu, 30 Mar 2023 12:37:49 +0200
Message-Id: <20230330103749.3759357-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680172672; x=1711708672;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XzSuNgBx3Qtsy5izdlPxSRzZYur4phmuOSLeUv5LhrE=;
 b=n1zOCUVsXgiLVvF7Zpqfd4umi3sM0O2eGbk0Nm9HxYLOSv8Zr6WcgYbw
 tbkP7sAd2xSOYfjgF2G+8s8muhEwkijnv11FNM9uPT7Zv/9tGMHockqK9
 jQKMK7nrBqBDm15/0Z0lwqUAYt+SMeie2NZjkgVe7WCO2ymA5tFqiORJT
 fB82i+Jk8hcP9KIJsJAZY0L+YHDHb5vNWyUv9z3cjbh0THyIQNLyBlF5k
 AATcGvGv/KexFQaSOsg8vrvCd62nTAJNEbaSnrJTWqBDkJiSUd8A4GYZi
 8FupcRHEC/30pzOBLCbWQYQDJgo8sx4tO8LxbSrzoGhFYrElFxH9UGorB
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n1zOCUVs
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Limit expression passed to
 kzalloc() to 1280 bytes
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

Add buff_size limit of 1280 bytes as big enough for user input value.

Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index c9dcd6d..b10d00d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -1356,7 +1356,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
 			goto command_write_done;
 		}
 		/* Just stub a buffer big enough in case user messed up */
-		if (buffer_len == 0)
+		if (buffer_len == 0 || buffer_len > 1280)
 			buffer_len = 1280;
 
 		buff = kzalloc(buffer_len, GFP_KERNEL);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7416D02F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 13:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EB314031E;
	Thu, 30 Mar 2023 11:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EB314031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680175255;
	bh=or71tlsh7b5dA8eQRRGhowyapMt7ggEwVc5bEglwuMc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=7lgpAHf0igg0I01qNCUJGkJ5JUeKJLIvMuAK0EeCmkOV6UDv85n3AcQDgxzt+y0EL
	 qW8FNPvSgls7OB/5WZt6VhbvXTSXdhlBd3BVI20/euZySThoBvXpHsSIPUxAV7Vgn9
	 /VYRMtE/Da34LxpMIBxWbgl3YPQ+4CuYMe0l9LxE1bk69+FZgyDgDrjpGWcclanFWb
	 Ja5jDMbGbqri2igeczBqFt9DTGsxZuxWcXjbLc4Tf2sOzX9rPd3XaBIwU05vwOOAIE
	 dqcTTqRfMyZVOgEg8Mms+w4XoctFgyFkKMHhGMedrrXZ5dFGum1M5QBjiiATk6A2TD
	 xBdq4uc78xcDQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQVOQlTQBM0q; Thu, 30 Mar 2023 11:20:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85BB7402F3;
	Thu, 30 Mar 2023 11:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85BB7402F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAA7B1BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CFD3660B2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CFD3660B2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIeqg1h7juac for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 11:20:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15AC360B22
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 15AC360B22
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 11:20:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368919387"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="368919387"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 04:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014396475"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="1014396475"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga005.fm.intel.com with ESMTP; 30 Mar 2023 04:20:46 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Thu, 30 Mar 2023 13:20:45 +0200
Message-Id: <20230330112045.3811315-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680175249; x=1711711249;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XzSuNgBx3Qtsy5izdlPxSRzZYur4phmuOSLeUv5LhrE=;
 b=Z0D5MiZAEty0TJclz9w1db5LsZAnshcB5QWWcTDw8FV9KObPUyjx0F5z
 yKyO+/rkQwCsOIfmTVHbPmHeDWKYB8SuiAHpMmsVvhAWheAZTVv76I7g0
 koszyaMjTekS/9j6JxZHgnj9pDoDhpgy+CJmFHssaW3j8AKGXpMxoA3yC
 /7PnFGiZYX3WSDoOF9Og+XOM4ayvtU0cPRLbIZAesMInbthH51NthHKVp
 eU+eFUbHtJGo1oianYE0tD8XUdLLMJpDBGYfcfrqgITqMc37/DU9cfLif
 js7+pWWhyaVzxWbbJXhAugb7wSy5Hu1EyF30FH1ZEhaNgzcL9+R7vJI6O
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z0D5MiZA
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

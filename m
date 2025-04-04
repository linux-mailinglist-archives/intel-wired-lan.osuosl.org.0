Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C1BA7BAC2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3473340C84;
	Fri,  4 Apr 2025 10:29:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jm6N7Xutz1eF; Fri,  4 Apr 2025 10:29:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1B814092D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762587;
	bh=TsVeeWUdg/UQd3yOXOp6Paax86ig1ORl6Oqp8Qq/e7M=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MBmlN6r4TwGY+jxdLvbqxICXqxUA/0p8E2p8TRyW0nR/KMTsUL3030PqkVTlMavYX
	 Pe23GvW3QombO26JNF4oxuKcqkju1S22pFU1Y63KH+z+AePzRvx5xONMUDyxlG4Lm+
	 P2Pk4ny9RBizGTESUhy1e1eYkOyp7ag5R77iRhYg/w7jRqdTMBUzOTKC24QZJsWqGK
	 0/pXQK+/HH7ni9hrNqyXcVyJQupUp1/1byI96G+XIx3yfzIUtPNlSQGC4V8ECtyZ+n
	 jBfdaIucub59BQ2tVV03qq4e2R7SzG61AHkeYIvb2fbMjjYEzr0gK3mrhOmK16zWGY
	 7uHKaJbbugsJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1B814092D;
	Fri,  4 Apr 2025 10:29:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 42EC1117
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3C7081398
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rCBj5A-BNpYa for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2216281ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2216281ECC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2216281ECC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
X-CSE-ConnectionGUID: 624UhlzERHWpy6LiZq1xVg==
X-CSE-MsgGUID: RlmmB/KyQ5u/3WLvezyZ6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992438"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992438"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:44 -0700
X-CSE-ConnectionGUID: l3xjuoMqR52Tsf9q/CJhDw==
X-CSE-MsgGUID: 77+ilO6ySjWh290+btyAUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485296"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:42 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 563E633EA6;
 Fri,  4 Apr 2025 11:29:41 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>
Date: Fri,  4 Apr 2025 12:23:18 +0200
Message-Id: <20250404102321.25846-4-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762584; x=1775298584;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VkEEqZoT+jeMa9GotZTRzDkqWqwz9IyyHoKvT76o4CE=;
 b=LgcZKzg2z2plKZcNkYa0p4FB0lhBsOY5cD8VTUpCYFFfU84TAPg2arNV
 xp2KZ4vy9PKK/vKoYeYisfKS/6V5Jo+MDQhQsDiyX/gVluHrk/OgRkk8c
 OL1xEXIx/A+90HOYSNdUkVsFTAfp/k/YjwJ1XDKSdyjKwFbWYDIQ9xg6o
 1VFVOHe+Lu3xMN+H096LaW1vPAJKmhbROu1w+/NgZV/ZkqYSK3TfqdSUa
 rVsAs7c1eYJ7GZNhWEVPLV5K+4nuwB6jaItuVTz/Z6EhEJd6w0HDDRc2Y
 DZNX3r2SYs6y3MIPJJRVJz5k+C8esSCDW+z8tn+iWuXE/Vpzo7oi96cIo
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LgcZKzg2
Subject: [Intel-wired-lan] [PATCH iwl-net 3/6] iavf: simplify watchdog_task
 in terms of adminq task scheduling
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Simplify the decision whether to schedule adminq task. The condition is
the same, but it is executed in more scenarios.

Note that movement of watchdog_done label makes this commit a bit
surprising. (Hence not squashing it to anything bigger).

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 2c6e033c7341..5efe44724d11 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -2934,6 +2934,7 @@ static void iavf_watchdog_task(struct work_struct *work)
 			return;
 		}
 
+		msec_delay = 20;
 		goto restart_watchdog;
 	}
 
@@ -3053,26 +3054,20 @@ static void iavf_watchdog_task(struct work_struct *work)
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
 		iavf_schedule_reset(adapter, IAVF_FLAG_RESET_PENDING);
-		msec_delay = 2000;
-		goto watchdog_done;
 	}
+	if (adapter->aq_required)
+		msec_delay = 20;
+	else
+		msec_delay = 2000;
 
+watchdog_done:
 	mutex_unlock(&adapter->crit_lock);
 restart_watchdog:
 	netdev_unlock(netdev);
 
 	/* note that we schedule a different task */
 	if (adapter->state >= __IAVF_DOWN)
 		queue_work(adapter->wq, &adapter->adminq_task);
-	if (adapter->aq_required)
-		msec_delay = 20;
-	else
-		msec_delay = 2000;
-	goto skip_unlock;
-watchdog_done:
-	mutex_unlock(&adapter->crit_lock);
-	netdev_unlock(netdev);
-skip_unlock:
 
 	if (msec_delay != IAVF_NO_RESCHED)
 		queue_delayed_work(adapter->wq, &adapter->watchdog_task,
-- 
2.39.3


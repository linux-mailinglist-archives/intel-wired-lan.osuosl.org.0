Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A14A5A7BAC1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Apr 2025 12:29:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9075083F87;
	Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k51bIR5JK8jm; Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E2F783FAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743762586;
	bh=pKE50d/G5BI3Ky0qfu1MZ9K2B3yL8Ja+RHWZ1/tjDuY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R3qjUGNcs2xKL8zUiExRMVAyfpyipe7vh/t6d776YNfSu6atoWq40Tx8VmZWgzL7Z
	 DDR/2rKUMsreTAMPQ3pFJcTW4L276YKcPzye1SyCMAoYaeQBo4MafytKAtUb6FzXX4
	 iUEtK3pBMoCndRmtS0sX6LkpN8oPavJpCsrn/SGgP5AcMU4MMsOHumCg8sCpxcXjdc
	 hY5YK0PTHSQLi6FDBZp0D60QU67J9bmj+abqlt6RfurtfJaAR1mWa6cidkhE5eJP4R
	 ctvae8rXRO2LTLVfU8guFdLWqPZJi9xMhiS3Uv7v4g6Md2R+WM/EF4af2tVj5b2PCZ
	 WTbGa079XaBlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E2F783FAA;
	Fri,  4 Apr 2025 10:29:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BEDF1C4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21A1D8188B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 06R65atDRKpq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Apr 2025 10:29:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7AF4181398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AF4181398
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7AF4181398
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Apr 2025 10:29:43 +0000 (UTC)
X-CSE-ConnectionGUID: jTP7w3XCSyeTZeTGJMxrWQ==
X-CSE-MsgGUID: R6GJyXuQQ8WrZwMOQE5wsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="48992431"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="48992431"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 03:29:43 -0700
X-CSE-ConnectionGUID: NnJR/y/7TrG1X2gTytrqMQ==
X-CSE-MsgGUID: g0qWmz3eTmSxqKp3E4ZJ2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="164485290"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa001.jf.intel.com with ESMTP; 04 Apr 2025 03:29:41 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 2B4DA33E9C;
 Fri,  4 Apr 2025 11:29:40 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org, Stanislav Fomichev <sdf@fomichev.me>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Stefan Assmann <sassmann@kpanic.de>, Jakub Kicinski <kuba@kernel.org>
Date: Fri,  4 Apr 2025 12:23:16 +0200
Message-Id: <20250404102321.25846-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
References: <20250404102321.25846-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743762583; x=1775298583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NW3OBKs3WPyCL79JIJvILc4MYb4J04/cCYCmFvTX3qU=;
 b=Ti2keIyo55fmS/p23P+MkPymP3NXCRmZoUbt7tLgMb8lWb+1Wlvpm3Uq
 xKMu1kQDa65bJpqnZBNKiNBrI1H1Ur23tgATqXUu7jIK21eAiHVYbKHGy
 ulOZvKMouW5ZjgY1eAB8Og6FXNpsFBwSTLTw9W8IHC5er7PCcmR+m5Y58
 yhfOpqEhbX9SEyvzwmIG2b6XsYc+Cay/eXdCXUsvsuDa4g5axqyHsWT3c
 LFx6F5xIx11jSXj0enxVhQeuQSfVn+EncvBO4yZSFq6mUKHUmbjvt8B4W
 OeC+ITE4Wd9uI/JLE/lAtFc0bydqfBggLL3r8FGxfFmjeR1If7CTJpLzD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ti2keIyo
Subject: [Intel-wired-lan] [PATCH iwl-net 1/6] iavf: iavf_suspend(): take
 RTNL before netdev_lock()
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

Fix an obvious violation of lock ordering.
Jakub's [1] added netdev_lock() call that is wrong ordered wrt RTNL,
but the Fixes tag points to crit_lock being wrongly placed (by lockdep
standards).

Actual reason we got it wrong is dated back to critical section managed by
pure flag checks, which is with us since the very beginning.

[1] afc664987ab3 ("eth: iavf: extend the netdev_lock usage")
Fixes: 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC: Stefan Assmann <sassmann@kpanic.de>
CC: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6d7ba4d67a19..a77c72643528 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -5596,22 +5596,27 @@ static int iavf_suspend(struct device *dev_d)
 {
 	struct net_device *netdev = dev_get_drvdata(dev_d);
 	struct iavf_adapter *adapter = netdev_priv(netdev);
+	bool running;
 
 	netif_device_detach(netdev);
 
+	running = netif_running(netdev);
+	if (running)
+		rtnl_lock();
+
 	netdev_lock(netdev);
 	mutex_lock(&adapter->crit_lock);
 
-	if (netif_running(netdev)) {
-		rtnl_lock();
+	if (running)
 		iavf_down(adapter);
-		rtnl_unlock();
-	}
+
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
 
 	mutex_unlock(&adapter->crit_lock);
 	netdev_unlock(netdev);
+	if (running)
+		rtnl_unlock();
 
 	return 0;
 }
-- 
2.39.3


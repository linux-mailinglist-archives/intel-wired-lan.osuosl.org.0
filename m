Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F1547679D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Dec 2021 02:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36BD540AC5;
	Thu, 16 Dec 2021 01:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XCatiu5sTCof; Thu, 16 Dec 2021 01:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06BE740A2F;
	Thu, 16 Dec 2021 01:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 012E01BF41B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 01:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E95D1415E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 01:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GdhkTWwfAFg5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Dec 2021 01:58:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9305F415CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Dec 2021 01:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639619899; x=1671155899;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r/N8sT7Y5i/pZo4b/+YzH0FdnfPEIcM1O80EcUgmGyU=;
 b=TyxYtzG5/H9PC/wdt1rPhyn+3o5SmmP664x1rh5VnmBrNtDZms1YfXsJ
 dKBVgltgw9oTgCAsJmlCKEDXVv0XPvDI8at+WYm4OJ06GkHZEzGeZMjmp
 xSMRLI/GFyfOs0LHjTwblAkzsHCo1tsfHI//CIs+i+4EBO2ed5M7Is4PQ
 /r0hYlj79nUvtjCRMnab5QUnT4ODuAHAxOxdtqURbfjGUZB39BrWiuj1s
 /9KkWJSSws5wgypQ9z0IQbGtNOqnHCrz9woX3ymHBrGp8FEHvmDDGQENH
 Cn8qBR5rDtTZxJSnMunYCr5L7E1m/D4iWUV9Oj6RHtDHpQHLwQgjLs2rL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="219394754"
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="219394754"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 17:58:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="506076706"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.244.133])
 by orsmga007.jf.intel.com with ESMTP; 15 Dec 2021 17:58:18 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 15 Dec 2021 17:56:54 -0800
Message-Id: <20211216015654.20619-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] iavf: Remove extra
 cancel_delayed_work_sync() call
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

Commit 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
did not remove the original call to cancel_delayed_work_sync() for the
watchdog task, remove it now.

Fixes: 898ef1cb1cb2 ("iavf: Combine init and watchdog state machines")
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index dedce7e9793d..a41be069f81e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4015,8 +4015,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	iavf_reset_interrupt_capability(adapter);
 	iavf_free_q_vectors(adapter);
 
-	cancel_delayed_work_sync(&adapter->watchdog_task);
-
 	cancel_work_sync(&adapter->adminq_task);
 
 	iavf_free_rss(adapter);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

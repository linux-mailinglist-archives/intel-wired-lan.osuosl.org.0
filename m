Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF8870A1ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 23:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 545A4426CE;
	Fri, 19 May 2023 21:46:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 545A4426CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684532778;
	bh=VBGpTuOZ44Qps6fHmBRAGC5QkPgeVJPUIYQ66v3wZcI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FB5SeKKEv5XhNTaCwnHNdh9dOhFvTTdo6bOXOqKWwaIzQECIU+LHAinxAZwvn2yew
	 3j3pssX78YoP0qM4YppYVnHV7ozBD5dx/LLQR2Rp1DNT1uoP8NxpMoL/lhnhAYSNaB
	 0A6/w3okb2Vq4sTq9nStYpZooU9MXrPMwK4Le4NXUG0tOPwVfYvT3fLzv1iFrvd8yE
	 6bfU6l/g369sCGR7L0lph+1f2KanluRKZG8CKa5gIFz6RId7Cuv0q1LuDmwuQkxmFf
	 yGEiJ1sACQnuf3yKzdxqW7djXSNfn8lRmRfml19/2josxXpB2LttQFwTc1WGZzzOcs
	 G/Df9Tk1tN04w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hEsFnYf-1eex; Fri, 19 May 2023 21:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E043D41FCF;
	Fri, 19 May 2023 21:46:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E043D41FCF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F4571BF955
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 21:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6630460D5F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 21:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6630460D5F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 56sIWlRjnhp1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 21:46:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 851E960BDB
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 851E960BDB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 21:46:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="341939369"
X-IronPort-AV: E=Sophos;i="6.00,178,1681196400"; d="scan'208";a="341939369"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 14:46:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="814877454"
X-IronPort-AV: E=Sophos;i="6.00,178,1681196400"; d="scan'208";a="814877454"
Received: from pfilseth-mobl.amr.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.249.38.234])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 14:46:07 -0700
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 19 May 2023 15:46:02 -0600
Message-Id: <20230519214602.3961912-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684532770; x=1716068770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wG6WAqVLvMMjtMVHqE4bsO07lDf3D3QyxaCCIRbSYa4=;
 b=migkO1rb1q1ABSVwnAwUEWeucNVA+k+f3ekQJZ2i910Wg5ILYK4TgcCO
 uznU2exi4+3Asv1phq/5tSkCQs2M1VpkLys/8C0S3y/hNA02Y3Qt4qSwa
 QqMm/C8Bvh3DudxA1J68xT/RHCnpABd3O6d17vN1hVAbgHL89vcxYEuuA
 +T2+iSuoGoqZ2nwaH5+At0tfRbJCMT9DlCZQPesC3ofqW44YCCa1K3WqR
 bPVV+d4R/Xo9WgqumQ6KEB0n2fFm+uJYZsAXQEfdXpDe4nuL4fajxBMJ9
 /xF1NuzeLDbIJxEUL3Wa+ZqI7128xjjrVByjgI2XmeWMhrXJGTQMdVfXl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=migkO1rb
Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: use internal state to
 free traffic IRQs
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

If the system tries to close the netdev while iavf_reset_task() is
running, __LINK_STATE_START will be cleared and netif_running() will
return false in iavf_reinit_interrupt_scheme(). This will result in
iavf_free_traffic_irqs() not being called and a leak as follows:

    [7632.489326] remove_proc_entry: removing non-empty directory 'irq/999', leaking at least 'iavf-enp24s0f0v0-TxRx-0'
    [7632.490214] WARNING: CPU: 0 PID: 10 at fs/proc/generic.c:718 remove_proc_entry+0x19b/0x1b0

is shown when pci_disable_msix() is later called. Fix by using the
internal adapter state. The traffic IRQs will always exist if
state == __IAVF_RUNNING.

Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue allocation")
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
v2: update iavf_reinit_interrupt_scheme()'s kdoc description
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 1ad0fe7f6dda..89892a0fd5b7 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1943,15 +1943,16 @@ static void iavf_free_rss(struct iavf_adapter *adapter)
 /**
  * iavf_reinit_interrupt_scheme - Reallocate queues and vectors
  * @adapter: board private structure
+ * @running: true if adapter->state == __IAVF_RUNNING
  *
  * Returns 0 on success, negative on failure
  **/
-static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
+static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter, bool running)
 {
 	struct net_device *netdev = adapter->netdev;
 	int err;
 
-	if (netif_running(netdev))
+	if (running)
 		iavf_free_traffic_irqs(adapter);
 	iavf_free_misc_irq(adapter);
 	iavf_reset_interrupt_capability(adapter);
@@ -3067,7 +3068,7 @@ static void iavf_reset_task(struct work_struct *work)
 
 	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
 	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
-		err = iavf_reinit_interrupt_scheme(adapter);
+		err = iavf_reinit_interrupt_scheme(adapter, running);
 		if (err)
 			goto reset_err;
 	}
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

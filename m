Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDDD587BD0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Aug 2022 13:52:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B9C4813D8;
	Tue,  2 Aug 2022 11:52:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B9C4813D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659441167;
	bh=Wrgx9YQfojDfQPgh+MW2ILa2sBOQLQ93nUMBs/Eyv6w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IPJESQ3sOD0rOCweaeSK/wtYtEpZdBL/1Ez+DU3OJQdpf/ldPCquMKSq88T5GBN3R
	 0INeuFYnJPNC7lJD4hog4jntgQjqWH3KAJtf+b9Bfs9bkHpEUn11Hg3k2Xy1jcxO+J
	 2iuUC2pZpqQxRDkWw0sGIecWEeWMFypCgTz7knvlrrfaTAbmjnCMYIvy4P6e10hmsI
	 cqbNtcoOwi3pgihR9Kpz2W+amY+/6fXPCxehzvAaG7NmnIPZtCIRBtGaKk1Fm0Yszt
	 aJADfry5dxauhQU3ke0vo9Aa0FHvQ4Qg6QGeO1njgqvnPcutxq2GewqmOBcREHQ/yf
	 hgTnkmd0y1LbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKZDsQ_QGLAb; Tue,  2 Aug 2022 11:52:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34E32813B2;
	Tue,  2 Aug 2022 11:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34E32813B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3CCF81BF409
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 17E19405CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 17E19405CF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8izKFKFBGVn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Aug 2022 11:52:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 60903401C9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60903401C9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Aug 2022 11:52:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="289401286"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="289401286"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 04:52:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="728807638"
Received: from amlin-018-068.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.68])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2022 04:52:33 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Aug 2022 13:51:42 +0200
Message-Id: <20220802115142.65176-3-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220802115142.65176-1-mateusz.palczewski@intel.com>
References: <20220802115142.65176-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659441154; x=1690977154;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+tO7DNtr7hppu25Lt14WVjQCAT/rPLRmCdFX9KFqvXI=;
 b=l53fM3x4xFfHJmkAfGmq+SzS1XtLdPiYVTMU+Tve07NfzIGORmcyoi7d
 QpP0+gN5CJeZJsXwPZrO4KyPX7a7dfd8i+gsb9q7zGP/fnSyvhzvV/hbh
 V5QgGvvvcws7DGmwpec5QAe3/0yUIFAYM30v9BiO3gSJXSrsogTd7drxT
 AH0ZChH2roUkWMrklLcR/EWmh7u5z9PXzY4+/3FU/m/1pRLDT/0C7PQz8
 B7/I1aVcOS39AgMzq4TLXRUrpKmMK1Saa/e2wBVeS7xVO2UimdhtlbEUG
 5BzqIqnPy3Umg3FR3x0atZ+jb8UGzOYS+QQHstVf24K05daFKm3w/1kJu
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l53fM3x4
Subject: [Intel-wired-lan] [PATCH net v2 2/2] iavf: Fix race condition
 between iavf_shutdown and iavf_remove
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
Cc: Slawomir Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Slawomir Laba <slawomirx.laba@intel.com>

Fix a deadlock introduced by commit
974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
due to race condition between iavf_shutdown and iavf_remove, where
iavf_remove stucks forever in while loop since iavf_shutdown already
set __IAVF_REMOVE adapter state.

Fix this by checking if the __IAVF_IN_REMOVE_TASK has already been
set and return if so.

Fixes: 974578017fc1 ("iavf: Add waiting so the port is initialized in remove")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v2: Fixed author
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 6357dea93b99..d43e8f12d3ad 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -4846,23 +4846,24 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 static void iavf_remove(struct pci_dev *pdev)
 {
 	struct iavf_adapter *adapter = iavf_pdev_to_adapter(pdev);
-	struct net_device *netdev = adapter->netdev;
 	struct iavf_fdir_fltr *fdir, *fdirtmp;
 	struct iavf_vlan_filter *vlf, *vlftmp;
+	struct iavf_cloud_filter *cf, *cftmp;
 	struct iavf_adv_rss *rss, *rsstmp;
 	struct iavf_mac_filter *f, *ftmp;
-	struct iavf_cloud_filter *cf, *cftmp;
-	struct iavf_hw *hw = &adapter->hw;
+	struct net_device *netdev;
+	struct iavf_hw *hw;
 	int err;
 
-	/* When reboot/shutdown is in progress no need to do anything
-	 * as the adapter is already REMOVE state that was set during
-	 * iavf_shutdown() callback.
-	 */
-	if (adapter->state == __IAVF_REMOVE)
+	if (!adapter)
+		return;
+
+	netdev = adapter->netdev;
+	hw = &adapter->hw;
+
+	if (test_and_set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))
 		return;
 
-	set_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section);
 	/* Wait until port initialization is complete.
 	 * There are flows where register/unregister netdev may race.
 	 */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

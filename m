Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 744366EA4BE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Apr 2023 09:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EBA34280F;
	Fri, 21 Apr 2023 07:30:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EBA34280F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682062220;
	bh=7hUrOI5vcGnNQ5nd/pu4wId0OIOqS2IjzyQns8ocAYc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=LVH7JgcfV4Zpj8I5jdJ+sLfAOnFcK2PTJzeI81ljwSKh/DczKoHKz8HbMhLWazWHZ
	 L9qKfUuB0lPaCWZQagVuiXtUQaTyknYp00n8y7ICrAf3FBe5jIR+e3pFRYzEuXYBSh
	 BndvKOWQwL9y0ZFrPkYSm2TxJRfhi73AnjJTG5qK85mArLTcaXvaCjCkO3Dv52cGtX
	 okmPGS6w19bu3i7XnJsGAzl5romcX/W1aDbPE4Cft2UXwzQbP6frFjUzp+25p7iVLe
	 IB/TTmHMe7qbuTMBNVDzKsFJarS3N3z5s3P+uz1sUgl2gTXuDwuajN8KsbibBCnYud
	 6zp6Thu1Up8Yg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JIAHR_oB1w0b; Fri, 21 Apr 2023 07:30:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2A6742712;
	Fri, 21 Apr 2023 07:30:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2A6742712
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DB831C2745
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 07:30:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 31FC081F8E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 07:30:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31FC081F8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RlqtilTEJMVk for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Apr 2023 07:30:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 239CD81F22
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 239CD81F22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Apr 2023 07:30:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="411203402"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="411203402"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 00:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816326262"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="816326262"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orsmga004.jf.intel.com with ESMTP; 21 Apr 2023 00:30:09 -0700
From: Andrii Staikov <andrii.staikov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 21 Apr 2023 09:30:06 +0200
Message-Id: <20230421073006.3009216-1-andrii.staikov@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682062212; x=1713598212;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a0tlEdFjWO0r1Jg+Xo3TJHwNNFKAqbBNj9q9ktsnsn0=;
 b=F3necsGEa5IO7kMALbTZcWPA7uRDBFcwevps7KziOsQW3RhxNohc05tp
 NZ076icgldFDwBMECMoS7wmFg44ndtRxm91UzTtelWShBxdIuOVvcZjyZ
 En/UWAc88wxgQiEkZxUv30X2KF5ffSB8sV3c+5Z0trKYk/d02tTY296rH
 gQME4VMpLCjaT3CHOVHcCY8RjuEPWvuExt9JGB4QYBEEdd8MRkZHF7jp1
 PossshBEsKuKdOCYDqfHgptGK+bdJvA21V0PKoz7ZKnRrKJIOwHtKitCB
 fGGyK2rcB+icnDTgonIAsODk4629tRTaxXEnkDoFu6ZkZXt/Zdg60Pg/r
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3necsGE
Subject: [Intel-wired-lan] [PATCH net v2] igb-linux: fix array size overrun
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
Cc: Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igb_configure_msix() and igb_setup_dca() functions use the value
of q_vectors number without checking if it exceeds the MAX_Q_VECTORS
limit. As these functions read values from an array, there is a
chance it will case an undesired and undefined behavior. Other parts
of the code do this check, issue a warning and alter their logic by
using the MAX_Q_VECTORS value in such case.
Fix it by introducing num_q_vectors variable inside these functions
which value depends on a check.

Fixes: 9d5c824399de ("igb: PCI-Express 82575 Gigabit Ethernet driver")
Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
---
v2: Fixed the commit message
---
 drivers/net/ethernet/intel/igb/igb.h      | 2 +-
 drivers/net/ethernet/intel/igb/igb_main.c | 6 ++++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 015b78144114..1eef5022f749 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -45,7 +45,7 @@ struct igb_adapter;
 #define IGB_MAX_ITR_USECS	10000
 #define IGB_MIN_ITR_USECS	10
 #define NON_Q_VECTORS		1
-#define MAX_Q_VECTORS		8
+#define MAX_Q_VECTORS		8U
 #define MAX_MSIX_ENTRIES	10
 
 /* Transmit and receive queues */
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 274c781b5547..0b46268cb264 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -865,6 +865,7 @@ static void igb_configure_msix(struct igb_adapter *adapter)
 	u32 tmp;
 	int i, vector = 0;
 	struct e1000_hw *hw = &adapter->hw;
+	int num_q_vectors = min(MAX_Q_VECTORS, adapter->num_q_vectors);
 
 	adapter->eims_enable_mask = 0;
 
@@ -913,7 +914,7 @@ static void igb_configure_msix(struct igb_adapter *adapter)
 
 	adapter->eims_enable_mask |= adapter->eims_other;
 
-	for (i = 0; i < adapter->num_q_vectors; i++)
+	for (i = 0; i < num_q_vectors; i++)
 		igb_assign_vector(adapter->q_vector[i], vector++);
 
 	wrfl();
@@ -7149,6 +7150,7 @@ static void igb_setup_dca(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
 	int i;
+	int num_q_vectors = min(MAX_Q_VECTORS, adapter->num_q_vectors);
 
 	if (!(adapter->flags & IGB_FLAG_DCA_ENABLED))
 		return;
@@ -7156,7 +7158,7 @@ static void igb_setup_dca(struct igb_adapter *adapter)
 	/* Always use CB2 mode, difference is masked in the CB driver. */
 	wr32(E1000_DCA_CTRL, E1000_DCA_CTRL_DCA_MODE_CB2);
 
-	for (i = 0; i < adapter->num_q_vectors; i++) {
+	for (i = 0; i < num_q_vectors; i++) {
 		adapter->q_vector[i]->cpu = -1;
 		igb_update_dca(adapter->q_vector[i]);
 	}
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

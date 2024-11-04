Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 855329BB458
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CC3E404D0;
	Mon,  4 Nov 2024 12:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6vBR1eIw8WLS; Mon,  4 Nov 2024 12:14:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 647EA404DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722448;
	bh=rXzCyq6/oPYl3+Ye7BAk0n2e2u5lqEs61GPbv1L2jnk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mxkqy0C2YUR8Kdvvfr2/AkN11rwYrKuI+e0b8X3lSY6vP17NrDTVHQORdZstaJ4gv
	 /EPJ2c6fMRoioOBvREZSHNj7tos8WlAW62wmDpZP5JVXo4GKmX7Hg3YcJL2UObpP7x
	 Am0oWYMyrS8xeC1fkWe/eZO9dxXUeyqBtqbEf+mUGLQYPQ09NqE74y6/VpFvSY1ObQ
	 9dDJLfjRU3TACwOvC2EzqiTpzH8aLqCsbuN3rJyMP2ys+PWTw4D9LybpBuf4f1fJnI
	 i5fmR3NwIFUKnQ61c1Ot2ajTsxaQyYfaa27gING0D0z10EsqP6nKyBv1/u6QCASEmJ
	 yUujqU/EJLFCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 647EA404DB;
	Mon,  4 Nov 2024 12:14:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F3B1962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB3B404C8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id owpglJG4iqLz for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:14:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B188404DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B188404DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B188404DB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:14:05 +0000 (UTC)
X-CSE-ConnectionGUID: HH05uzToRzaKuNXz+fHn3A==
X-CSE-MsgGUID: Nkk1UK4iTGOj00n84+v43g==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843712"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843712"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:14:05 -0800
X-CSE-ConnectionGUID: bF/zb+uRRkijz7PViDhpNw==
X-CSE-MsgGUID: +T7D0FQHTPitwClMhUgTSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525784"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:14:01 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:34 +0100
Message-ID: <20241104121337.129287-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722445; x=1762258445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WJyoEl694veiSM2t8QqIfUsb+FEq3Hm2ht8zyFG8PJc=;
 b=PG0kKIzoDo/GE8N4MJ6nmwTtQ+gPEpO3NF6Ta74SWpCA+HYrO1wiqguh
 eEl4Wq2/eQDGdu4qgtw5tFmtDFPvZ7sXbgXQy2Ea8D5Zv/mg3C6HtkHhw
 OUBSDn+1NAkZgdLoXuBV9mqYG/72V3XxkZ1eNjTL3m3qzzX45y8bHZZti
 IwlfUsi82z0wud39S1kPpJPatLzlRrWQoLmJj+P0q7LHDvVBEkT/yykqG
 NCPMRw1viJG19jltva7sXpfY4sQ2XjyCYujSUmAhxeNAyLj5ejoHY7XwW
 +A55nmoUNnt/mWBuZgBIl2+WIaOCtE9t4iOGjzs6diwLwGhBBoNCh/eYi
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PG0kKIzo
Subject: [Intel-wired-lan] [iwl-next v7 6/9] ice: treat dyn_allowed only as
 suggestion
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It can be needed to have some MSI-X allocated as static and rest as
dynamic. For example on PF VSI. We want to always have minimum one MSI-X
on it, because of that it is allocated as a static one, rest can be
dynamic if it is supported.

Change the ice_get_irq_res() to allow using static entries if they are
free even if caller wants dynamic one.

Adjust limit values to the new approach. Min and max in limit means the
values that are valid, so decrease max and num_static by one.

Set vsi::irq_dyn_alloc if dynamic allocation is supported.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_irq.c | 25 ++++++++++++------------
 drivers/net/ethernet/intel/ice/ice_lib.c |  2 ++
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
index 80c9ee2e64c1..d466d29b2ef1 100644
--- a/drivers/net/ethernet/intel/ice/ice_irq.c
+++ b/drivers/net/ethernet/intel/ice/ice_irq.c
@@ -45,7 +45,7 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
 /**
  * ice_get_irq_res - get an interrupt resource
  * @pf: board private structure
- * @dyn_only: force entry to be dynamically allocated
+ * @dyn_allowed: allow entry to be dynamically allocated
  *
  * Allocate new irq entry in the free slot of the tracker. Since xarray
  * is used, always allocate new entry at the lowest possible index. Set
@@ -53,11 +53,12 @@ static void ice_free_irq_res(struct ice_pf *pf, u16 index)
  *
  * Returns allocated irq entry or NULL on failure.
  */
-static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
+static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf,
+					     bool dyn_allowed)
 {
-	struct xa_limit limit = { .max = pf->irq_tracker.num_entries,
+	struct xa_limit limit = { .max = pf->irq_tracker.num_entries - 1,
 				  .min = 0 };
-	unsigned int num_static = pf->irq_tracker.num_static;
+	unsigned int num_static = pf->irq_tracker.num_static - 1;
 	struct ice_irq_entry *entry;
 	unsigned int index;
 	int ret;
@@ -66,9 +67,9 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 	if (!entry)
 		return NULL;
 
-	/* skip preallocated entries if the caller says so */
-	if (dyn_only)
-		limit.min = num_static;
+	/* only already allocated if the caller says so */
+	if (!dyn_allowed)
+		limit.max = num_static;
 
 	ret = xa_alloc(&pf->irq_tracker.entries, &index, entry, limit,
 		       GFP_KERNEL);
@@ -78,7 +79,7 @@ static struct ice_irq_entry *ice_get_irq_res(struct ice_pf *pf, bool dyn_only)
 		entry = NULL;
 	} else {
 		entry->index = index;
-		entry->dynamic = index >= num_static;
+		entry->dynamic = index > num_static;
 	}
 
 	return entry;
@@ -137,7 +138,7 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
 /**
  * ice_alloc_irq - Allocate new interrupt vector
  * @pf: board private structure
- * @dyn_only: force dynamic allocation of the interrupt
+ * @dyn_allowed: allow dynamic allocation of the interrupt
  *
  * Allocate new interrupt vector for a given owner id.
  * return struct msi_map with interrupt details and track
@@ -150,20 +151,20 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
  * interrupt will be allocated with pci_msix_alloc_irq_at.
  *
  * Some callers may only support dynamically allocated interrupts.
- * This is indicated with dyn_only flag.
+ * This is indicated with dyn_allowed flag.
  *
  * On failure, return map with negative .index. The caller
  * is expected to check returned map index.
  *
  */
-struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_only)
+struct msi_map ice_alloc_irq(struct ice_pf *pf, bool dyn_allowed)
 {
 	int sriov_base_vector = pf->sriov_base_vector;
 	struct msi_map map = { .index = -ENOENT };
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_irq_entry *entry;
 
-	entry = ice_get_irq_res(pf, dyn_only);
+	entry = ice_get_irq_res(pf, dyn_allowed);
 	if (!entry)
 		return map;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index ecc850a43643..01afa5f84af9 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -571,6 +571,8 @@ ice_vsi_alloc_def(struct ice_vsi *vsi, struct ice_channel *ch)
 			return -ENOMEM;
 	}
 
+	vsi->irq_dyn_alloc = pci_msix_can_alloc_dyn(vsi->back->pdev);
+
 	switch (vsi->type) {
 	case ICE_VSI_PF:
 	case ICE_VSI_SF:
-- 
2.42.0

